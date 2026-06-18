# doc_to_csv.ps1
# シナリオドキュメントの指定セクションをスプレッドシート用CSVに変換する
#
# 使い方:
#   .\doc_to_csv.ps1 -Start "序幕"          -OutFile "_tmp\03_prologue.csv"
#   .\doc_to_csv.ps1 -Start "1つめの不幸"   -OutFile "_tmp\04_bad01.csv"
#   .\doc_to_csv.ps1 -Start "1つめの不幸" -Route A -OutFile "_tmp\05_bad01_a.csv"
#   .\doc_to_csv.ps1 -Start "1つめの不幸" -Route B -OutFile "_tmp\06_bad01_b.csv"
#   末尾に -DryRun でファイル書き出さずにプレビュー

param(
    [Parameter(Mandatory)][string]$Start,   # セクションキーワード（＝＝＝行の内容）
    [string]$Route = "",                    # "A" または "B": ルート分岐の内側を抽出
    [Parameter(Mandatory)][string]$OutFile,
    [switch]$DryRun
)

$base    = "e:\TyranoScript\tyrano_603\TyranoStudio_win_std_v603\myprojects\１１番目が１番ツライ！"
$docId   = "1Mz3vF1zXM12t6GApemcCJEZeCQXow3lju96OglkOXcU"
$tmpTxt  = "$base\_tmp\scenario.txt"

# ─── ダウンロード ─────────────────────────────────────────────────────
Write-Host "Downloading scenario doc..."
Invoke-WebRequest -Uri "https://docs.google.com/document/d/$docId/export?format=txt" `
    -OutFile $tmpTxt -UseBasicParsing

$allLines = Get-Content $tmpTxt -Encoding UTF8

# ─── セクション抽出 ───────────────────────────────────────────────────
$startIdx = -1
$endIdx   = $allLines.Count - 1

# ─── Step1: 外側セクションを抽出（＝＝＝マーカーで区切る） ──────────────
for ($i = 0; $i -lt $allLines.Count; $i++) {
    $t = $allLines[$i].Trim()
    if ($startIdx -lt 0 -and $t -like "*$Start*") {
        $startIdx = $i + 1
        continue
    }
    if ($startIdx -ge 0 -and $t -match '^＝＝＝') {
        $endIdx = $i - 1
        break
    }
}

if ($startIdx -lt 0) {
    Write-Error "Section '$Start' not found"; exit 1
}
$outerSection = $allLines[$startIdx..$endIdx]
Write-Host "Outer section: $($outerSection.Count) lines (doc L$($startIdx+1)–$($endIdx+1))"

# ─── Step2: Route指定があればルートの内側をさらに絞る ────────────────────
if ($Route -ne "") {
    $rStart = -1; $rEnd = $outerSection.Count - 1
    $nextRoute = if ($Route -eq "A") { "B" } else { "シナリオ合流" }

    for ($i = 0; $i -lt $outerSection.Count; $i++) {
        $t = $outerSection[$i].Trim()
        if ($rStart -lt 0 -and $t -eq $Route) {
            $rStart = $i + 1   # ルートマーカー行の次から
            continue
        }
        if ($rStart -ge 0 -and ($t -eq $nextRoute -or $t -eq "シナリオ合流")) {
            $rEnd = $i - 1
            break
        }
    }

    if ($rStart -lt 0) {
        Write-Error "Route '$Route' not found inside section '$Start'"; exit 1
    }
    $section = $outerSection[$rStart..$rEnd]
    Write-Host "Route $Route : $($section.Count) lines"
} else {
    $section = $outerSection
}
Write-Host "Parsing: $($section.Count) lines"

# ─── カウンター ───────────────────────────────────────────────────────
$rowNum   = 0
$knSerifu = 0; $knShori = 0
$snPlayer = 0; $snAjisai = 0; $snSentaku = 0; $snShori = 0

$rows = [System.Collections.Generic.List[PSCustomObject]]::new()

function Add-Row($kate, $sub, $naiyou, $biko = "") {
    $script:rowNum++
    $kn = 0; $sn = 0
    if ($kate -eq "セリフ") {
        $script:knSerifu++; $kn = $script:knSerifu
        if ($sub -eq "プレイヤー") { $script:snPlayer++;  $sn = $script:snPlayer }
        else                       { $script:snAjisai++;  $sn = $script:snAjisai }
    } else {
        $script:knShori++; $kn = $script:knShori
        if ($sub -eq "選択肢")    { $script:snSentaku++; $sn = $script:snSentaku }
        else                       { $script:snShori++;   $sn = $script:snShori }
    }
    $script:rows.Add([PSCustomObject]@{
        番号     = $script:rowNum
        カテ番号 = $kn
        カテ     = $kate
        サカ番   = $sn
        サブカテ = $sub
        内容     = $naiyou
        備考     = $biko
    })
}

# ─── 変換 ─────────────────────────────────────────────────────────────
$circleNums = "①②③④⑤⑥⑦⑧⑨⑩"
$collectingChoices = $false
$pendingChoices = [System.Collections.Generic.List[string]]::new()

foreach ($raw in $section) {
    $trimmed = $raw.Trim()
    if ($trimmed -eq "") { continue }

    # ★ 演出指示をスキップ: ※行
    if ($trimmed -match '^※') { continue }
    $isIndented = $raw -match '^\s{4,}'  # 4文字以上の字下げ

    # 選択肢収集モード（④B など: 選択肢が次行以降に続くパターン）
    if ($collectingChoices) {
        $lineChoices = [regex]::Matches($trimmed, '「([^」]+)」') | ForEach-Object { $_.Groups[1].Value }
        $isNewCircle = $trimmed[0] -and $circleNums.Contains([string]$trimmed[0])
        $isRouteLine = $trimmed -match '^[AB]「'
        # 選択肢として収集: 字下げなし・「」あり・新しい選択肢行でない
        if ($lineChoices.Count -gt 0 -and -not $isIndented -and -not $isNewCircle -and -not $isRouteLine) {
            foreach ($lc in $lineChoices) { [void]$pendingChoices.Add($lc) }
            continue
        } else {
            # 字下げあり・「」なし・別の選択肢行 → フラッシュして現在行を通常処理
            $flushContent = ($pendingChoices | ForEach-Object { "「$_」" }) -join ""
            Add-Row "処理" "選択肢" $flushContent ""
            $collectingChoices = $false
            $pendingChoices.Clear()
        }
    }

    # プレイヤーモノローグ: （〜）
    if ($trimmed -match '^（.+）$') {
        $content = $trimmed -replace '\[[a-z]+\]', ''
        Add-Row "セリフ" "プレイヤー" $content
        continue
    }

    # 暗転 / 明転
    if ($trimmed -eq "暗転") { Add-Row "処理" "暗転" ""; continue }
    if ($trimmed -eq "明転") { Add-Row "処理" "明転" ""; continue }

    # 分岐開始マーカー（A / B / Aルート / Bルート 行）→ ここから別ファイルの内容なのでストップ
    if ($trimmed -match '^[AB](ルート)?$' -or $trimmed -eq "シナリオ合流") { break }

    # 影響ある選択肢のルート行: A「...」 / B「...」（行頭がA/Bで直後に「）→ 1オプション1行
    if ($trimmed -match '^[AB]「') {
        $route = [string]$trimmed[0]
        $choices = [regex]::Matches($trimmed, '「([^」]+)」') | ForEach-Object {
            $_.Groups[1].Value -replace '\[[a-z]+\]', ''
        }
        foreach ($c in $choices) {
            Add-Row "処理" "選択肢" $c "${route}ルート"
        }
        continue
    }

    # 選択肢: ①②〜で始まる
    if ($trimmed[0] -and $circleNums.Contains([string]$trimmed[0])) {
        $hasImpact = $trimmed -match '◆'
        $choices = [regex]::Matches($trimmed, '「([^」]+)」') | ForEach-Object { $_.Groups[1].Value }

        if ($choices.Count -eq 0) {
            # ④B など: 影響なし・ルート指定で選択肢が次行以降に続くパターン
            if (-not $hasImpact -and $trimmed -match '[AB]') {
                $collectingChoices = $true
                $pendingChoices.Clear()
            }
            # ③◆ など: 次の A「...」/B「...」 行で処理されるのでスキップ
            continue
        }

        if ($hasImpact) {
            # 影響あり（同行に選択肢テキストあり）: 1オプション1行
            foreach ($c in $choices) { Add-Row "処理" "選択肢" $c "影響あり" }
        } else {
            # 影響なし: 全オプションを1行にまとめる
            $content = ($choices | ForEach-Object { "「$_」" }) -join ""
            Add-Row "処理" "選択肢" $content ""
        }
        continue
    }

    # 字下げあり + 「」あり + 末尾に余分なテキスト → 演出注釈 → スキップ
    # 例: 「なんで最初から出さなかったのか？」相合傘したかったことがバレる
    # 正規の対話行は 「...」 / 「...」[marker] / 「...」：表情 で終わる
    if ($isIndented -and $trimmed -match '「' -and $trimmed -notmatch '」(\[[a-z]+\])?(：[^「」]*)?\s*$') { continue }

    # アジサイのセリフ: 「〜」を含む行（ルートA/B行の後なので安全）
    if ($trimmed -match '「') {
        $biko = if ($trimmed -match '（オフ）') { "オフ" } else { "" }

        # 表情抽出: 最後の「...」の後に ：表情 がついている場合
        $expression = ""
        if ($trimmed -match '」[^「」]*：([^「」]+)$') {
            $expr = $matches[1] -replace '\[[a-z]+\]', '' -replace '^\s+|\s+$', ''
            if ($expr -match '[通常困り怒り驚き赤面目閉じ微笑み▽あへo：]') {
                $expression = $expr
            }
        }

        # [a][b]…などの内心マーカーが行に含まれるか
        $hasLetterMarker = $trimmed -match '\[[a-z]+\]'

        $matches2 = [regex]::Matches($trimmed, '「([^」]*)」')
        foreach ($m in $matches2) {
            $content = $m.Groups[1].Value -replace '\[[a-z]+\]', '' -replace '^\s+|\s+$', ''
            if ($content -eq "") { continue }

            $isOnlyEllipsis = ($content -replace '[…・\s]', '') -eq ""

            # 立ち絵変化になるのは「内心マーカーあり かつ …だけ」の場合のみ
            if ($isOnlyEllipsis -and $hasLetterMarker) {
                $face = if ($expression -ne "") { $expression } else { "★" }
                Add-Row "処理" "立ち絵" $face
            } else {
                $bikoCombined = (@($biko, $expression) | Where-Object { $_ -ne "" }) -join " "
                Add-Row "セリフ" "アジサイ" $content $bikoCombined
            }
        }
        continue
    }

    # 「」なしの …だけの行
    if ($trimmed -match '^[…・\.\s]+(\[[a-z]+\])?$') {
        $content = $trimmed -replace '\[[a-z]+\]', '' -replace '^\s+|\s+$', ''
        if ($content -ne "") {
            Add-Row "処理" "立ち絵" "★"
        }
        continue
    }

    # 字下げ行 → スキップ（演出指示）
    if ($isIndented) { continue }
}

# 収集中の選択肢が残っていればフラッシュ（セクション末尾で終わった場合）
if ($collectingChoices -and $pendingChoices.Count -gt 0) {
    $flushContent = ($pendingChoices | ForEach-Object { "「$_」" }) -join ""
    Add-Row "処理" "選択肢" $flushContent ""
}

# ─── 出力 ─────────────────────────────────────────────────────────────
$absOut = if ([IO.Path]::IsPathRooted($OutFile)) { $OutFile } else { Join-Path $base $OutFile }

if ($DryRun) {
    Write-Host "=== DRY RUN ($($rows.Count) rows) ==="
    $rows | Format-Table -AutoSize
} else {
    # Google Sheets インポート用 UTF-8 CSV
    $csv  = "番号,カテ番号,カテ,サカ番,サブカテ,内容,備考`n"
    $csv += ($rows | ForEach-Object {
        $fields = @($_.番号, $_.カテ番号, $_.カテ, $_.サカ番, $_.サブカテ, $_.内容, $_.備考)
        ($fields | ForEach-Object { '"' + ($_ -replace '"', '""') + '"' }) -join ","
    }) -join "`n"
    [IO.File]::WriteAllText($absOut, $csv, [Text.Encoding]::UTF8)
    Write-Host "Generated: $absOut ($($rows.Count) rows)"
}
