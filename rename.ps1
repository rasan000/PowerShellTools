Param($num)

#�����N�̃X�N�V��
Copy-Item 1.png ../$num-2_1.png

#�R���e���c�̃X�N�V��
$i = 1
Get-ChildItem 2-* | 
ForEach-Object{
    Copy-Item $_.Name ../$num-1_$i.png
    Copy-Item $_.Name ../$num-3_$i.png
    Remove-Item $_.Name 
    $i++
}

#���{�^���������̃X�N�V��
Copy-Item 3.png ../$num-8_1.png
Copy-Item 4.png ../$num-8_2.png

#����{�^���������̃X�N�V��
Copy-Item 5.png ../$num-7_1.png
Copy-Item 6.png ../$num-7_2.png

#�S�č폜
Remove-Item 1.png
Remove-Item 3.png
Remove-Item 4.png
Remove-Item 5.png
Remove-Item 6.png
