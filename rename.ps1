Param($num)

#リンクのスクショ
Copy-Item 1.png ../$num-2_1.png

#コンテンツのスクショ
$i = 1
Get-ChildItem 2-* | 
ForEach-Object{
    Copy-Item $_.Name ../$num-1_$i.png
    Copy-Item $_.Name ../$num-3_$i.png
    Remove-Item $_.Name 
    $i++
}

#↑ボタン押下時のスクショ
Copy-Item 3.png ../$num-8_1.png
Copy-Item 4.png ../$num-8_2.png

#閉じるボタン押下時のスクショ
Copy-Item 5.png ../$num-7_1.png
Copy-Item 6.png ../$num-7_2.png

#全て削除
Remove-Item 1.png
Remove-Item 3.png
Remove-Item 4.png
Remove-Item 5.png
Remove-Item 6.png
