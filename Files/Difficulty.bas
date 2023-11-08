B4A=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=12.2
@EndOfDesignText@
'Code module
'Subs in this code module will be accessible from all modules.
Sub Process_Globals
	

End Sub

Sub EasySudoku
	Easy.StoreArray(0,0) = 9
	Easy.StoreArray(0,1) = 0
	Easy.StoreArray(0,2) = 0
	Easy.StoreArray(0,3) = 5
	Easy.StoreArray(0,4) = 0
	Easy.StoreArray(0,5) = 0
	Easy.StoreArray(0,6) = 0
	Easy.StoreArray(0,7) = 0
	Easy.StoreArray(0,8) = 0
	
	Easy.StoreArray(1,0) = 0
	Easy.StoreArray(1,1) = 0
	Easy.StoreArray(1,2) = 0
	Easy.StoreArray(1,3) = 4
	Easy.StoreArray(1,4) = 0
	Easy.StoreArray(1,5) = 0
	Easy.StoreArray(1,6) = 9
	Easy.StoreArray(1,7) = 8
	Easy.StoreArray(1,8) = 6
	
	Easy.StoreArray(2,0) = 3
	Easy.StoreArray(2,1) = 4
	Easy.StoreArray(2,2) = 6
	Easy.StoreArray(2,3) = 0
	Easy.StoreArray(2,4) = 0
	Easy.StoreArray(2,5) = 2
	Easy.StoreArray(2,6) = 5
	Easy.StoreArray(2,7) = 0
	Easy.StoreArray(2,8) = 0
	
	Easy.StoreArray(3,0) = 0
	Easy.StoreArray(3,1) = 8
	Easy.StoreArray(3,2) = 4
	Easy.StoreArray(3,3) = 6
	Easy.StoreArray(3,4) = 2
	Easy.StoreArray(3,5) = 5
	Easy.StoreArray(3,6) = 7
	Easy.StoreArray(3,7) = 9
	Easy.StoreArray(3,8) = 0
	
	Easy.StoreArray(4,0) = 6
	Easy.StoreArray(4,1) = 0
	Easy.StoreArray(4,2) = 0
	Easy.StoreArray(4,3) = 7
	Easy.StoreArray(4,4) = 8
	Easy.StoreArray(4,5) = 3
	Easy.StoreArray(4,6) = 0
	Easy.StoreArray(4,7) = 4
	Easy.StoreArray(4,8) = 0

	Easy.StoreArray(5,0) = 0
	Easy.StoreArray(5,1) = 7
	Easy.StoreArray(5,2) = 3
	Easy.StoreArray(5,3) = 1
	Easy.StoreArray(5,4) = 4
	Easy.StoreArray(5,5) = 9
	Easy.StoreArray(5,6) = 6
	Easy.StoreArray(5,7) = 2
	Easy.StoreArray(5,8) = 8
	
	Easy.StoreArray(6,0) = 0
	Easy.StoreArray(6,1) = 6
	Easy.StoreArray(6,2) = 0
	Easy.StoreArray(6,3) = 2
	Easy.StoreArray(6,4) = 5
	Easy.StoreArray(6,5) = 0
	Easy.StoreArray(6,6) = 0
	Easy.StoreArray(6,7) = 0
	Easy.StoreArray(6,8) = 7

	Easy.StoreArray(7,0) = 8
	Easy.StoreArray(7,1) = 0
	Easy.StoreArray(7,2) = 0
	Easy.StoreArray(7,3) = 9
	Easy.StoreArray(7,4) = 6
	Easy.StoreArray(7,5) = 7
	Easy.StoreArray(7,6) = 0
	Easy.StoreArray(7,7) = 0
	Easy.StoreArray(7,8) = 4
	
	Easy.StoreArray(8,0) = 2
	Easy.StoreArray(8,1) = 5
	Easy.StoreArray(8,2) = 0
	Easy.StoreArray(8,3) = 0
	Easy.StoreArray(8,4) = 0
	Easy.StoreArray(8,5) = 0
	Easy.StoreArray(8,6) = 0
	Easy.StoreArray(8,7) = 0
	Easy.StoreArray(8,8) = 9
End Sub

Sub MediumSudoku
	Medium.StoreArray(0,0) = 0
	Medium.StoreArray(0,1) = 6
	Medium.StoreArray(0,2) = 4
	Medium.StoreArray(0,3) = 2
	Medium.StoreArray(0,4) = 9
	Medium.StoreArray(0,5) = 7
	Medium.StoreArray(0,6) = 3
	Medium.StoreArray(0,7) = 0
	Medium.StoreArray(0,8) = 0
	
	Medium.StoreArray(1,0) = 2
	Medium.StoreArray(1,1) = 7
	Medium.StoreArray(1,2) = 9
	Medium.StoreArray(1,3) = 5
	Medium.StoreArray(1,4) = 3
	Medium.StoreArray(1,5) = 0
	Medium.StoreArray(1,6) = 0
	Medium.StoreArray(1,7) = 0
	Medium.StoreArray(1,8) = 0
	
	Medium.StoreArray(2,0) = 0
	Medium.StoreArray(2,1) = 8
	Medium.StoreArray(2,2) = 0
	Medium.StoreArray(2,3) = 0
	Medium.StoreArray(2,4) = 0
	Medium.StoreArray(2,5) = 0
	Medium.StoreArray(2,6) = 0
	Medium.StoreArray(2,7) = 0
	Medium.StoreArray(2,8) = 7
	
	Medium.StoreArray(3,0) = 5
	Medium.StoreArray(3,1) = 1
	Medium.StoreArray(3,2) = 0
	Medium.StoreArray(3,3) = 0
	Medium.StoreArray(3,4) = 6
	Medium.StoreArray(3,5) = 2
	Medium.StoreArray(3,6) = 8
	Medium.StoreArray(3,7) = 0
	Medium.StoreArray(3,8) = 0
	
	Medium.StoreArray(4,0) = 9
	Medium.StoreArray(4,1) = 0
	Medium.StoreArray(4,2) = 0
	Medium.StoreArray(4,3) = 0
	Medium.StoreArray(4,4) = 0
	Medium.StoreArray(4,5) = 0
	Medium.StoreArray(4,6) = 0
	Medium.StoreArray(4,7) = 6
	Medium.StoreArray(4,8) = 0

	Medium.StoreArray(5,0) = 6
	Medium.StoreArray(5,1) = 0
	Medium.StoreArray(5,2) = 7
	Medium.StoreArray(5,3) = 8
	Medium.StoreArray(5,4) = 4
	Medium.StoreArray(5,5) = 0
	Medium.StoreArray(5,6) = 0
	Medium.StoreArray(5,7) = 0
	Medium.StoreArray(5,8) = 0
	
	Medium.StoreArray(6,0) = 0
	Medium.StoreArray(6,1) = 0
	Medium.StoreArray(6,2) = 0
	Medium.StoreArray(6,3) = 1
	Medium.StoreArray(6,4) = 7
	Medium.StoreArray(6,5) = 4
	Medium.StoreArray(6,6) = 9
	Medium.StoreArray(6,7) = 2
	Medium.StoreArray(6,8) = 5
	
	Medium.StoreArray(7,0) = 4
	Medium.StoreArray(7,1) = 9
	Medium.StoreArray(7,2) = 0
	Medium.StoreArray(7,3) = 0
	Medium.StoreArray(7,4) = 0
	Medium.StoreArray(7,5) = 0
	Medium.StoreArray(7,6) = 0
	Medium.StoreArray(7,7) = 8
	Medium.StoreArray(7,8) = 6
	
	Medium.StoreArray(8,0) = 7
	Medium.StoreArray(8,1) = 5
	Medium.StoreArray(8,2) = 2
	Medium.StoreArray(8,3) = 6
	Medium.StoreArray(8,4) = 8
	Medium.StoreArray(8,5) = 9
	Medium.StoreArray(8,6) = 4
	Medium.StoreArray(8,7) = 0
	Medium.StoreArray(8,8) = 3
End Sub

Sub HardSudoku
	Hard.StoreArray(0,0) = 0
	Hard.StoreArray(0,1) = 0
	Hard.StoreArray(0,2) = 6
	Hard.StoreArray(0,3) = 3
	Hard.StoreArray(0,4) = 0
	Hard.StoreArray(0,5) = 7
	Hard.StoreArray(0,6) = 0
	Hard.StoreArray(0,7) = 0
	Hard.StoreArray(0,8) = 0
	
	Hard.StoreArray(1,0) = 0
	Hard.StoreArray(1,1) = 0
	Hard.StoreArray(1,2) = 4
	Hard.StoreArray(1,3) = 0
	Hard.StoreArray(1,4) = 0
	Hard.StoreArray(1,5) = 0
	Hard.StoreArray(1,6) = 0
	Hard.StoreArray(1,7) = 0
	Hard.StoreArray(1,8) = 5
	
	Hard.StoreArray(2,0) = 1
	Hard.StoreArray(2,1) = 0
	Hard.StoreArray(2,2) = 0
	Hard.StoreArray(2,3) = 0
	Hard.StoreArray(2,4) = 0
	Hard.StoreArray(2,5) = 6
	Hard.StoreArray(2,6) = 0
	Hard.StoreArray(2,7) = 8
	Hard.StoreArray(2,8) = 2
	
	Hard.StoreArray(3,0) = 2
	Hard.StoreArray(3,1) = 0
	Hard.StoreArray(3,2) = 5
	Hard.StoreArray(3,3) = 0
	Hard.StoreArray(3,4) = 3
	Hard.StoreArray(3,5) = 0
	Hard.StoreArray(3,6) = 1
	Hard.StoreArray(3,7) = 0
	Hard.StoreArray(3,8) = 6
	
	Hard.StoreArray(4,0) = 0
	Hard.StoreArray(4,1) = 0
	Hard.StoreArray(4,2) = 0
	Hard.StoreArray(4,3) = 2
	Hard.StoreArray(4,4) = 0
	Hard.StoreArray(4,5) = 0
	Hard.StoreArray(4,6) = 3
	Hard.StoreArray(4,7) = 0
	Hard.StoreArray(4,8) = 0

	Hard.StoreArray(5,0) = 9
	Hard.StoreArray(5,1) = 0
	Hard.StoreArray(5,2) = 0
	Hard.StoreArray(5,3) = 0
	Hard.StoreArray(5,4) = 7
	Hard.StoreArray(5,5) = 0
	Hard.StoreArray(5,6) = 0
	Hard.StoreArray(5,7) = 0
	Hard.StoreArray(5,8) = 4
	
	Hard.StoreArray(6,0) = 0
	Hard.StoreArray(6,1) = 5
	Hard.StoreArray(6,2) = 0
	Hard.StoreArray(6,3) = 0
	Hard.StoreArray(6,4) = 0
	Hard.StoreArray(6,5) = 0
	Hard.StoreArray(6,6) = 0
	Hard.StoreArray(6,7) = 0
	Hard.StoreArray(6,8) = 0

	Hard.StoreArray(7,0) = 0
	Hard.StoreArray(7,1) = 1
	Hard.StoreArray(7,2) = 0
	Hard.StoreArray(7,3) = 0
	Hard.StoreArray(7,4) = 0
	Hard.StoreArray(7,5) = 0
	Hard.StoreArray(7,6) = 0
	Hard.StoreArray(7,7) = 0
	Hard.StoreArray(7,8) = 0
	
	Hard.StoreArray(8,0) = 0
	Hard.StoreArray(8,1) = 0
	Hard.StoreArray(8,2) = 8
	Hard.StoreArray(8,3) = 1
	Hard.StoreArray(8,4) = 0
	Hard.StoreArray(8,5) = 9
	Hard.StoreArray(8,6) = 0
	Hard.StoreArray(8,7) = 4
	Hard.StoreArray(8,8) = 0
End Sub


