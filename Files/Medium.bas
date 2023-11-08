B4A=true
Group=Default Group
ModulesStructureVersion=1
Type=Activity
Version=12.2
@EndOfDesignText@
#Region  Activity Attributes 
	#FullScreen: False
	#IncludeTitle: False
#End Region

Sub Process_Globals
	Public StoreArray(9,9) As Int
	Public row As Int
	Public col As Int
End Sub

Sub Globals
	
	Public board As Panel
	Dim cells(81) As EditText


End Sub

Sub Activity_Create(FirstTime As Boolean)
	Activity.LoadLayout("MEDIUM")
	InitGrid
	GridLabels
End Sub

Sub Activity_Resume

End Sub

Sub Activity_Pause (UserClosed As Boolean)

End Sub

Sub InitGrid
	Dim left, top, width, height As Int
	left = 0
	top = 0
	width = board.Width/9
	height = board.Height/9

	For i = 0 To 80
		cells(i).Initialize("")
		Select Case i
			Case 0,2,10,18,20, 6, 8, 16, 24, 26, 30, 32, 40, 48, 50, 54, 56, 64, 72, 74, 60, 62, 70, 78, 80
				cells(i).Color =  Colors.Transparent

			Case 1, 9, 11, 19, 7, 15, 17, 25, 31, 39, 41, 49, 55, 63, 65, 73, 61, 69, 71, 79
				cells(i).Color =  Colors.Transparent
				
			Case 3, 5, 13, 21, 23, 27, 29, 37, 45, 47, 33, 35, 43, 51, 53, 57, 59, 67, 75, 77
				cells(i).Color =  Colors.Transparent
				
			Case 4, 12, 14, 22, 28, 36, 38, 46, 34, 42, 44, 52, 58, 66, 68, 76
				cells(i).Color =  Colors.Transparent
				
			Case Else
				cells(i).Color = Colors.Transparent
		End Select
		
		cells(i).InputType = cells(i).INPUT_TYPE_NUMBERS
		cells(i).TextColor = Colors.Black
		cells(i).TextSize = 18
		cells(i).Typeface = Typeface.SANS_SERIF
		cells(i).Text = Difficulty.MediumSudoku
		cells(i).Gravity = Gravity.CENTER
		board.AddView(cells(i),left,top,width,height)
		left = left + (board.Width/9)
		
		If ((i+1) Mod 9 = 0) Then
			left = 0
			top = top + (board.Height/9)
		End If
	Next
End Sub

Sub GridLabels

	For row = 0 To 8
		For col = 0 To 8
			Public txtcell As EditText = board.GetView(row * 9 + col)
			If StoreArray(row,col) > 0 Then
				txtcell.Text = StoreArray(row,col)
				txtcell.Enabled = False
			Else
				txtcell.Text = ""
				txtcell.Enabled = True
			End If
		Next
	Next
	
End Sub