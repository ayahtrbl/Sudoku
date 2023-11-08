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

	Private ans1 As EditText
	Private ans2 As EditText
	Private ans3 As EditText
	Private ans4 As EditText
	Private ans5 As EditText
	Private ans6 As EditText
	Private ans7 As EditText
	Private ans8 As EditText
	Private ans9 As EditText
	Private ans10 As EditText
	Private ans11 As EditText
	Private ans12 As EditText
	Private ans13 As EditText
	Private ans14 As EditText
	Private ans15 As EditText
	Private ans16 As EditText
	Private ans17 As EditText
	Private ans18 As EditText
	Private ans19 As EditText
	Private ans20 As EditText
	Private ans21 As EditText
	Private ans22 As EditText
	Private ans23 As EditText
	Private ans24 As EditText
	Private ans25 As EditText
	Private ans26 As EditText
	Private ans27 As EditText
	Private ans28 As EditText
	Private ans29 As EditText
	Private ans30 As EditText
	Private ans31 As EditText
	Private ans32 As EditText
	Private ans33 As EditText
	Private ans34 As EditText
	Private ans35 As EditText
	Private ans36 As EditText
	Private ans37 As EditText
	Private ans38 As EditText
	Private ans39 As EditText
	Private ans40 As EditText
	Private ans41 As EditText
	Private ans42 As EditText
	Private ans43 As EditText
	Private ans44 As EditText
	Private ans45 As EditText
	Private ans46 As EditText
	Private ans47 As EditText
	Private ans48 As EditText
	Private ans49 As EditText
	Private ans50 As EditText
	Private ans51 As EditText
	Private ans52 As EditText
	Private ans53 As EditText
	Private ans54 As EditText
	Private ans55 As EditText
	Private ans56 As EditText
	
	Private btnSolver As Button
	Private homebtn As Button
	
	Private FocusOn As String
	
	Private Button1 As Button
	Private Button2 As Button
	Private Button3 As Button
	Private Button4 As Button
	Private Button5 As Button
	Private Button6 As Button
	Private Button7 As Button
	Private Button8 As Button
	Private Button9 As Button
	
	Private erasebtn As Button
End Sub

Sub Activity_Create(FirstTime As Boolean)
	Activity.LoadLayout("HARD")
	InitGrid
	GridLabels
	
	ans1.Color = Colors.Transparent
	ans2.Color = Colors.Transparent
	ans3.Color = Colors.Transparent
	ans4.Color = Colors.Transparent
	ans5.Color = Colors.Transparent
	ans6.Color = Colors.Transparent
	ans7.Color = Colors.Transparent
	ans8.Color = Colors.Transparent
	ans9.Color = Colors.Transparent
	ans10.Color = Colors.Transparent
	ans11.Color = Colors.Transparent
	ans12.Color = Colors.Transparent
	ans13.Color = Colors.Transparent
	ans14.Color = Colors.Transparent
	ans15.Color = Colors.Transparent
	ans16.Color = Colors.Transparent
	ans17.Color = Colors.Transparent
	ans18.Color = Colors.Transparent
	ans19.Color = Colors.Transparent
	ans20.Color = Colors.Transparent
	ans21.Color = Colors.Transparent
	ans22.Color = Colors.Transparent
	ans23.Color = Colors.Transparent
	ans24.Color = Colors.Transparent
	ans25.Color = Colors.Transparent
	ans26.Color = Colors.Transparent
	ans27.Color = Colors.Transparent
	ans28.Color = Colors.Transparent
	ans29.Color = Colors.Transparent
	ans30.Color = Colors.Transparent
	ans31.Color = Colors.Transparent
	ans32.Color = Colors.Transparent
	ans33.Color = Colors.Transparent
	ans34.Color = Colors.Transparent
	ans35.Color = Colors.Transparent
	ans36.Color = Colors.Transparent
	ans37.Color = Colors.Transparent
	ans38.Color = Colors.Transparent
	ans39.Color = Colors.Transparent
	ans40.Color = Colors.Transparent
	ans41.Color = Colors.Transparent
	ans42.Color = Colors.Transparent
	ans43.Color = Colors.Transparent
	ans44.Color = Colors.Transparent
	ans45.Color = Colors.Transparent
	ans46.Color = Colors.Transparent
	ans47.Color = Colors.Transparent
	ans48.Color = Colors.Transparent
	ans49.Color = Colors.Transparent
	ans50.Color = Colors.Transparent
	ans51.Color = Colors.Transparent
	ans52.Color = Colors.Transparent
	ans53.Color = Colors.Transparent
	ans54.Color = Colors.Transparent
	ans55.Color = Colors.Transparent
	ans56.Color = Colors.Transparent
	
	
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
		cells(i).TextSize = 16
		cells(i).Typeface = Typeface.SANS_SERIF
		cells(i).Text = Difficulty.HardSudoku
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

Private Sub btnSolver_Click
	If ans1.Text = 5 Then ans1.TextColor = Colors.Blue Else ans1.TextColor = Colors.Red
	If ans2.Text = 8 Then ans2.TextColor = Colors.Blue Else ans2.TextColor = Colors.Red
	If ans3.Text = 2 Then ans3.TextColor = Colors.Blue Else ans3.TextColor = Colors.Red
	If ans4.Text = 4 Then ans4.TextColor = Colors.Blue Else ans4.TextColor = Colors.Red
	If ans5.Text = 9 Then ans5.TextColor = Colors.Blue Else ans5.TextColor = Colors.Red
	If ans6.Text = 1 Then ans6.TextColor = Colors.Blue Else ans6.TextColor = Colors.Red
	If ans7.Text = 7 Then ans7.TextColor = Colors.Blue Else ans7.TextColor = Colors.Red
	If ans8.Text = 2 Then ans8.TextColor = Colors.Blue Else ans8.TextColor = Colors.Red
	If ans9.Text = 8 Then ans9.TextColor = Colors.Blue Else ans9.TextColor = Colors.Red
	If ans10.Text = 9 Then ans10.TextColor = Colors.Blue Else ans10.TextColor = Colors.Red
	If ans11.Text = 1 Then ans11.TextColor = Colors.Blue Else ans11.TextColor = Colors.Red
	If ans12.Text = 6 Then ans12.TextColor = Colors.Blue Else ans12.TextColor = Colors.Red
	If ans13.Text = 3 Then ans13.TextColor = Colors.Blue Else ans13.TextColor = Colors.Red
	If ans14.Text = 9 Then ans14.TextColor = Colors.Blue Else ans14.TextColor = Colors.Red
	If ans15.Text = 3 Then ans15.TextColor = Colors.Blue Else ans15.TextColor = Colors.Red
	If ans16.Text = 5 Then ans16.TextColor = Colors.Blue Else ans16.TextColor = Colors.Red
	If ans17.Text = 4 Then ans17.TextColor = Colors.Blue Else ans17.TextColor = Colors.Red
	If ans18.Text = 7 Then ans18.TextColor = Colors.Blue Else ans18.TextColor = Colors.Red
	If ans19.Text = 4 Then ans19.TextColor = Colors.Blue Else ans19.TextColor = Colors.Red
	If ans20.Text = 9 Then ans20.TextColor = Colors.Blue Else ans20.TextColor = Colors.Red
	If ans21.Text = 8 Then ans21.TextColor = Colors.Blue Else ans21.TextColor = Colors.Red
	If ans22.Text = 1 Then ans22.TextColor = Colors.Blue Else ans22.TextColor = Colors.Red
	If ans23.Text = 8 Then ans23.TextColor = Colors.Blue Else ans23.TextColor = Colors.Red
	If ans24.Text = 6 Then ans24.TextColor = Colors.Blue Else ans24.TextColor = Colors.Red
	If ans25.Text = 7 Then ans25.TextColor = Colors.Blue Else ans25.TextColor = Colors.Red
	If ans26.Text = 1 Then ans26.TextColor = Colors.Blue Else ans26.TextColor = Colors.Red
	If ans27.Text = 4 Then ans27.TextColor = Colors.Blue Else ans27.TextColor = Colors.Red
	If ans28.Text = 5 Then ans28.TextColor = Colors.Blue Else ans28.TextColor = Colors.Red
	If ans29.Text = 9 Then ans29.TextColor = Colors.Blue Else ans29.TextColor = Colors.Red
	If ans30.Text = 3 Then ans30.TextColor = Colors.Blue Else ans30.TextColor = Colors.Red
	If ans31.Text = 1 Then ans31.TextColor = Colors.Blue Else ans31.TextColor = Colors.Red
	If ans32.Text = 6 Then ans32.TextColor = Colors.Blue Else ans32.TextColor = Colors.Red
	If ans33.Text = 5 Then ans33.TextColor = Colors.Blue Else ans33.TextColor = Colors.Red
	If ans34.Text = 8 Then ans34.TextColor = Colors.Blue Else ans34.TextColor = Colors.Red
	If ans35.Text = 2 Then ans35.TextColor = Colors.Blue Else ans35.TextColor = Colors.Red
	If ans36.Text = 4 Then ans36.TextColor = Colors.Blue Else ans36.TextColor = Colors.Red
	If ans37.Text = 2 Then ans37.TextColor = Colors.Blue Else ans37.TextColor = Colors.Red
	If ans38.Text = 7 Then ans38.TextColor = Colors.Blue Else ans38.TextColor = Colors.Red
	If ans39.Text = 6 Then ans39.TextColor = Colors.Blue Else ans39.TextColor = Colors.Red
	If ans40.Text = 3 Then ans40.TextColor = Colors.Blue Else ans40.TextColor = Colors.Red
	If ans41.Text = 9 Then ans41.TextColor = Colors.Blue Else ans41.TextColor = Colors.Red
	If ans42.Text = 1 Then ans42.TextColor = Colors.Blue Else ans42.TextColor = Colors.Red
	If ans43.Text = 8 Then ans43.TextColor = Colors.Blue Else ans43.TextColor = Colors.Red
	If ans44.Text = 3 Then ans44.TextColor = Colors.Blue Else ans44.TextColor = Colors.Red
	If ans45.Text = 9 Then ans45.TextColor = Colors.Blue Else ans45.TextColor = Colors.Red
	If ans46.Text = 4 Then ans46.TextColor = Colors.Blue Else ans46.TextColor = Colors.Red
	If ans47.Text = 8 Then ans47.TextColor = Colors.Blue Else ans47.TextColor = Colors.Red
	If ans48.Text = 2 Then ans48.TextColor = Colors.Blue Else ans48.TextColor = Colors.Red
	If ans49.Text = 5 Then ans49.TextColor = Colors.Blue Else ans49.TextColor = Colors.Red
	If ans50.Text = 6 Then ans50.TextColor = Colors.Blue Else ans50.TextColor = Colors.Red
	If ans51.Text = 7 Then ans51.TextColor = Colors.Blue Else ans51.TextColor = Colors.Red
	If ans52.Text = 6 Then ans52.TextColor = Colors.Blue Else ans52.TextColor = Colors.Red
	If ans53.Text = 7 Then ans53.TextColor = Colors.Blue Else ans53.TextColor = Colors.Red
	If ans54.Text = 5 Then ans54.TextColor = Colors.Blue Else ans54.TextColor = Colors.Red
	If ans55.Text = 2 Then ans55.TextColor = Colors.Blue Else ans55.TextColor = Colors.Red
	If ans56.Text = 3 Then ans56.TextColor = Colors.Blue Else ans56.TextColor = Colors.Red

End Sub

Private Sub homebtn_Click
	Dim home As Int
	home = Msgbox2("Your Progress will be saved.","Exit Level?","Yes","","No",Null)
	If home = DialogResponse.POSITIVE Then
		StartActivity(Main)
	End If
End Sub


Private Sub ans1_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans1"
		ans1.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans1.Color = Colors.Transparent
	End If
End Sub

Private Sub ans2_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans2"
		ans2.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans2.Color = Colors.Transparent
	End If
End Sub

Private Sub ans3_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans3"
		ans3.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans3.Color = Colors.Transparent
	End If
	
End Sub

Private Sub ans4_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans4"
		ans4.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans4.Color = Colors.Transparent
	End If
End Sub

Private Sub ans5_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans5"
		ans5.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans5.Color = Colors.Transparent
	End If
End Sub

Private Sub ans6_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans6"
		ans6.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans6.Color = Colors.Transparent
	End If
End Sub

Private Sub ans7_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans7"
		ans7.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans7.Color = Colors.Transparent
	End If
End Sub

Private Sub ans8_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans8"
		ans8.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans8.Color = Colors.Transparent
	End If
End Sub

Private Sub ans9_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans9"
		ans9.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans9.Color = Colors.Transparent
	End If
End Sub

Private Sub ans10_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans10"
		ans10.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans10.Color = Colors.Transparent
	End If
End Sub

Private Sub ans11_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans11"
		ans11.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans11.Color = Colors.Transparent
	End If
End Sub

Private Sub ans12_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans12"
		ans12.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans12.Color = Colors.Transparent
	End If
End Sub

Private Sub ans13_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans13"
		ans13.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans13.Color = Colors.Transparent
	End If
End Sub

Private Sub ans14_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans14"
		ans14.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans14.Color = Colors.Transparent
	End If
End Sub

Private Sub ans15_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans15"
		ans15.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans15.Color = Colors.Transparent
	End If
End Sub

Private Sub ans16_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans16"
		ans16.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans16.Color = Colors.Transparent
	End If
End Sub

Private Sub ans17_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans17"
		ans17.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans17.Color = Colors.Transparent
	End If
End Sub

Private Sub ans18_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans18"
		ans18.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans18.Color = Colors.Transparent
	End If
End Sub

Private Sub ans19_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans19"
		ans19.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans19.Color = Colors.Transparent
	End If
End Sub

Private Sub ans20_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans20"
		ans20.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans20.Color = Colors.Transparent
	End If
End Sub

Private Sub ans21_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans21"
		ans21.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans21.Color = Colors.Transparent
	End If
End Sub

Private Sub ans22_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans22"
		ans22.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans22.Color = Colors.Transparent
	End If
End Sub

Private Sub ans23_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans23"
		ans23.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans23.Color = Colors.Transparent
	End If
End Sub

Private Sub ans24_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans24"
		ans24.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans24.Color = Colors.Transparent
	End If
End Sub

Private Sub ans25_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans25"
		ans25.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans25.Color = Colors.Transparent
	End If
End Sub

Private Sub ans26_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans26"
		ans26.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans26.Color = Colors.Transparent
	End If
End Sub

Private Sub ans27_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans27"
		ans27.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans27.Color = Colors.Transparent
	End If
End Sub

Private Sub ans28_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans28"
		ans28.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans28.Color = Colors.Transparent
	End If
End Sub

Private Sub ans29_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans29"
		ans29.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans29.Color = Colors.Transparent
	End If
End Sub

Private Sub ans30_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans30"
		ans30.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans30.Color = Colors.Transparent
	End If
End Sub

Private Sub ans31_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans31"
		ans31.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans31.Color = Colors.Transparent
	End If
End Sub

Private Sub ans32_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans32"
		ans32.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans32.Color = Colors.Transparent
	End If
End Sub

Private Sub ans33_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans33"
		ans33.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans33.Color = Colors.Transparent
	End If
End Sub

Private Sub ans34_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans34"
		ans34.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans34.Color = Colors.Transparent
	End If
End Sub

Private Sub ans35_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans35"
		ans35.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans35.Color = Colors.Transparent
	End If
End Sub

Private Sub ans36_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans36"
		ans36.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans36.Color = Colors.Transparent
	End If
End Sub

Private Sub ans37_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans37"
		ans37.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans37.Color = Colors.Transparent
	End If
End Sub

Private Sub ans38_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans38"
		ans38.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans38.Color = Colors.Transparent
	End If
End Sub

Private Sub ans39_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans39"
		ans39.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans39.Color = Colors.Transparent
	End If
End Sub

Private Sub ans40_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans40"
		ans40.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans40.Color = Colors.Transparent
	End If
End Sub

Private Sub ans41_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans41"
		ans41.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans41.Color = Colors.Transparent
	End If
End Sub

Private Sub ans42_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans42"
		ans42.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans42.Color = Colors.Transparent
	End If
End Sub

Private Sub ans43_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans43"
		ans43.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans43.Color = Colors.Transparent
	End If
End Sub

Private Sub ans44_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans44"
		ans44.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans44.Color = Colors.Transparent
	End If
End Sub

Private Sub ans45_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans45"
		ans45.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans45.Color = Colors.Transparent
	End If
End Sub

Private Sub ans46_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans46"
		ans46.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans46.Color = Colors.Transparent
	End If
End Sub

Private Sub ans47_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans47"
		ans47.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans47.Color = Colors.Transparent
	End If
End Sub

Private Sub ans48_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans48"
		ans48.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans48.Color = Colors.Transparent
	End If
End Sub

Private Sub ans49_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans49"
		ans49.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans49.Color = Colors.Transparent
	End If
End Sub

Private Sub ans50_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans50"
		ans50.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans50.Color = Colors.Transparent
	End If
	
End Sub

Private Sub ans51_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans51"
		ans51.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans51.Color = Colors.Transparent
	End If
End Sub

Private Sub ans52_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans52"
		ans52.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans52.Color = Colors.Transparent
	End If
End Sub

Private Sub ans53_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans53"
		ans53.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans53.Color = Colors.Transparent
	End If
End Sub

Private Sub ans54_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans54"
		ans54.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans54.Color = Colors.Transparent
	End If
End Sub

Private Sub ans55_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans55"
		ans55.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans55.Color = Colors.Transparent
	End If
End Sub

Private Sub ans56_FocusChanged (HasFocus As Boolean)
	If HasFocus Then 
		FocusOn = "ans56"
		ans56.Color = Colors.ARGB(150,230, 230, 250)
	Else
		ans56.Color = Colors.Transparent
	End If
End Sub


Private Sub Button1_Click
	EnterValue("1")
End Sub

Private Sub Button2_Click
	EnterValue("2")
End Sub

Private Sub Button3_Click
	EnterValue("3")
End Sub

Private Sub Button4_Click
	EnterValue("4")
End Sub

Private Sub Button5_Click
	EnterValue("5")
End Sub

Private Sub Button6_Click
	EnterValue("6")
End Sub

Private Sub Button7_Click
	EnterValue("7")
End Sub

Private Sub Button8_Click
	EnterValue("8")
End Sub

Private Sub Button9_Click
	EnterValue("9")
End Sub


Private Sub EnterValue (Value As String)
	Select FocusOn
		
		Case "ans56"
			ans56.Text = ans56.Text & Value
			ans56.SetSelection(ans56.Text.Length, 0)
		Case "ans55"
			ans55.Text = ans55.Text & Value
			ans55.SetSelection(ans55.Text.Length, 0)
		Case "ans54"
			ans54.Text = ans54.Text & Value
			ans54.SetSelection(ans54.Text.Length, 0)
		Case "ans53"
			ans53.Text = ans53.Text & Value
			ans53.SetSelection(ans53.Text.Length, 0)
		Case "ans52"
			ans52.Text = ans52.Text & Value
			ans52.SetSelection(ans52.Text.Length, 0)
		Case "ans51"
			ans51.Text = ans51.Text & Value
			ans51.SetSelection(ans51.Text.Length, 0)
		
		
		Case "ans50"
			ans50.Text = ans50.Text & Value
			ans50.SetSelection(ans50.Text.Length, 0)
		Case "ans49"
			ans49.Text = ans49.Text & Value
			ans49.SetSelection(ans49.Text.Length, 0)
		Case "ans48"
			ans48.Text = ans48.Text & Value
			ans48.SetSelection(ans48 .Text.Length, 0)
		Case "ans47"
			ans47.Text = ans47.Text & Value
			ans47.SetSelection(ans47.Text.Length, 0)
		Case "ans46"
			ans46.Text = ans46.Text & Value
			ans46.SetSelection(ans46.Text.Length, 0)
		
		Case "ans45"
			ans45.Text = ans45.Text & Value
			ans45.SetSelection(ans45.Text.Length, 0)
		Case "ans44"
			ans44.Text = ans44.Text & Value
			ans44.SetSelection(ans44.Text.Length, 0)
		Case "ans43"
			ans43.Text = ans43.Text & Value
			ans43.SetSelection(ans43.Text.Length, 0)
		Case "ans42"
			ans42.Text = ans42.Text & Value
			ans42.SetSelection(ans42.Text.Length, 0)
		Case "ans41"
			ans41.Text = ans41.Text & Value
			ans41.SetSelection(ans41.Text.Length, 0)
		
		
		Case "ans40"
			ans40.Text = ans40.Text & Value
			ans40.SetSelection(ans40.Text.Length, 0)
		Case "ans39"
			ans39.Text = ans39.Text & Value
			ans39.SetSelection(ans39.Text.Length, 0)
		Case "ans38"
			ans38.Text = ans38.Text & Value
			ans38.SetSelection(ans38.Text.Length, 0)
		Case "ans37"
			ans37.Text = ans37.Text & Value
			ans37.SetSelection(ans37.Text.Length, 0)
		Case "ans36"
			ans36.Text = ans36.Text & Value
			ans36.SetSelection(ans36.Text.Length, 0)
		
		
		Case "ans35"
			ans35.Text = ans35.Text & Value
			ans35.SetSelection(ans35.Text.Length, 0)
		Case "ans34"
			ans34.Text = ans34.Text & Value
			ans34.SetSelection(ans34.Text.Length, 0)
		Case "ans33"
			ans33.Text = ans33.Text & Value
			ans33.SetSelection(ans33.Text.Length, 0)
		Case "ans32"
			ans32.Text = ans32.Text & Value
			ans32.SetSelection(ans32.Text.Length, 0)
		Case "ans31"
			ans31.Text = ans31.Text & Value
			ans31.SetSelection(ans31.Text.Length, 0)
		
		
		Case "ans30"
			ans30.Text = ans30.Text & Value
			ans30.SetSelection(ans30.Text.Length, 0)
		Case "ans29"
			ans29.Text = ans29.Text & Value
			ans29.SetSelection(ans29.Text.Length, 0)
		Case "ans28"
			ans28.Text = ans28.Text & Value
			ans28.SetSelection(ans28.Text.Length, 0)
		Case "ans27"
			ans27.Text = ans27.Text & Value
			ans27.SetSelection(ans27.Text.Length, 0)
		Case "ans26"
			ans26.Text = ans26.Text & Value
			ans26.SetSelection(ans26.Text.Length, 0)
			
			
		Case "ans25"
			ans25.Text = ans25.Text & Value
			ans25.SetSelection(ans25.Text.Length, 0)
		Case "ans24"
			ans24.Text = ans24.Text & Value
			ans24.SetSelection(ans24.Text.Length, 0)
		Case "ans23"
			ans23.Text = ans23.Text & Value
			ans23.SetSelection(ans23.Text.Length, 0)
		Case "ans22"
			ans22.Text = ans22.Text & Value
			ans22.SetSelection(ans22.Text.Length, 0)
		Case "ans21"
			ans21.Text = ans21.Text & Value
			ans21.SetSelection(ans21.Text.Length, 0)


		Case "ans20"
			ans20.Text = ans20.Text & Value
			ans20.SetSelection(ans20.Text.Length, 0)
		Case "ans19"
			ans19.Text = ans19.Text & Value
			ans19.SetSelection(ans19.Text.Length, 0)
		Case "ans18"
			ans18.Text = ans18.Text & Value
			ans18.SetSelection(ans18.Text.Length, 0)
		Case "ans17"
			ans17.Text = ans17.Text & Value
			ans17.SetSelection(ans17.Text.Length, 0)
		Case "ans16"
			ans16.Text = ans16.Text & Value
			ans16.SetSelection(ans16.Text.Length, 0)
			
			
		Case "ans15"
			ans15.Text = ans15.Text & Value
			ans15.SetSelection(ans15.Text.Length, 0)
		Case "ans14"
			ans14.Text = ans14.Text & Value
			ans14.SetSelection(ans14.Text.Length, 0)
		Case "ans13"
			ans13.Text = ans13.Text & Value
			ans13.SetSelection(ans13.Text.Length, 0)
		Case "ans12"
			ans12.Text = ans12.Text & Value
			ans12.SetSelection(ans12.Text.Length, 0)
		Case "ans11"
			ans11.Text = ans11.Text & Value
			ans11.SetSelection(ans11.Text.Length, 0)
		
		
		Case "ans10"
			ans10.Text = ans10.Text & Value
			ans10.SetSelection(ans10.Text.Length, 0)
		Case "ans9"
			ans9.Text = ans9.Text & Value
			ans9.SetSelection(ans9.Text.Length, 0)
		Case "ans8"
			ans8.Text = ans8.Text & Value
			ans8.SetSelection(ans8.Text.Length, 0)
		Case "ans7"
			ans7.Text = ans7.Text & Value
			ans7.SetSelection(ans7.Text.Length, 0)
		Case "ans6"
			ans6.Text = ans6.Text & Value
			ans6.SetSelection(ans6.Text.Length, 0)
			
			
		Case "ans5"
			ans5.Text = ans5.Text & Value
			ans5.SetSelection(ans5.Text.Length, 0)
		Case "ans4"
			ans4.Text = ans4.Text & Value
			ans4.SetSelection(ans4.Text.Length, 0)
		Case "ans3"
			ans3.Text = ans3.Text & Value
			ans3.SetSelection(ans3.Text.Length, 0)
		Case "ans2"
			ans2.Text = ans2.Text & Value
			ans2.SetSelection(ans2.Text.Length, 0)
		Case "ans1"
			ans1.Text = ans1.Text & Value
			ans1.SetSelection(ans1.Text.Length, 0)
	End Select
End Sub

Private Sub erasebtn_Click
	RemoveValue("")
End Sub


Private Sub RemoveValue (Value As String)
	Select FocusOn
		
		Case "ans56"
			ans56.Text = ans56.Text & Value
			ans56.SetSelection(ans56.Text.Length, 0)
		Case "ans55"
			ans55.Text = ""
			ans55.SetSelection(ans55.Text.Length, 0)
		Case "ans54"
			ans54.Text = ""
			ans54.SetSelection(ans54.Text.Length, 0)
		Case "ans53"
			ans53.Text = ""
			ans53.SetSelection(ans53.Text.Length, 0)
		Case "ans52"
			ans52.Text = ""
			ans52.SetSelection(ans52.Text.Length, 0)
		Case "ans51"
			ans51.Text = ""
			ans51.SetSelection(ans51.Text.Length, 0)
		
		
		Case "ans50"
			ans50.Text = ""
			ans50.SetSelection(ans50.Text.Length, 0)
		Case "ans49"
			ans49.Text = ""
			ans49.SetSelection(ans49.Text.Length, 0)
		Case "ans48"
			ans48.Text = ""
			ans48.SetSelection(ans48 .Text.Length, 0)
		Case "ans47"
			ans47.Text = ""
			ans47.SetSelection(ans47.Text.Length, 0)
		Case "ans46"
			ans46.Text = ""
			ans46.SetSelection(ans46.Text.Length, 0)
		
		Case "ans45"
			ans45.Text = ""
			ans45.SetSelection(ans45.Text.Length, 0)
		Case "ans44"
			ans44.Text = ""
			ans44.SetSelection(ans44.Text.Length, 0)
		Case "ans43"
			ans43.Text = ""
			ans43.SetSelection(ans43.Text.Length, 0)
		Case "ans42"
			ans42.Text = ""
			ans42.SetSelection(ans42.Text.Length, 0)
		Case "ans41"
			ans41.Text = ""
			ans41.SetSelection(ans41.Text.Length, 0)
	
		Case "ans40"
			ans40.Text = ""
			ans40.SetSelection(ans40.Text.Length, 0)
		Case "ans39"
			ans39.Text = ""
			ans39.SetSelection(ans39.Text.Length, 0)
		Case "ans38"
			ans38.Text = ""
			ans38.SetSelection(ans38.Text.Length, 0)
		Case "ans37"
			ans37.Text = ""
			ans37.SetSelection(ans37.Text.Length, 0)
		Case "ans36"
			ans36.Text = ""
			ans36.SetSelection(ans36.Text.Length, 0)
		
		
		Case "ans35"
			ans35.Text = ""
			ans35.SetSelection(ans35.Text.Length, 0)
		Case "ans34"
			ans34.Text = ""
			ans34.SetSelection(ans34.Text.Length, 0)
		Case "ans33"
			ans33.Text = ""
			ans33.SetSelection(ans33.Text.Length, 0)
		Case "ans32"
			ans32.Text = ""
			ans32.SetSelection(ans32.Text.Length, 0)
		Case "ans31"
			ans31.Text = ""
			ans31.SetSelection(ans31.Text.Length, 0)
		
		
		Case "ans30"
			ans30.Text = ""
			ans30.SetSelection(ans30.Text.Length, 0)
		Case "ans29"
			ans29.Text = ""
			ans29.SetSelection(ans29.Text.Length, 0)
		Case "ans28"
			ans28.Text = ""
			ans28.SetSelection(ans28.Text.Length, 0)
		Case "ans27"
			ans27.Text = ""
			ans27.SetSelection(ans27.Text.Length, 0)
		Case "ans26"
			ans26.Text = ""
			ans26.SetSelection(ans26.Text.Length, 0)
			
			
		Case "ans25"
			ans25.Text = ""
			ans25.SetSelection(ans25.Text.Length, 0)
		Case "ans24"
			ans24.Text = ""
			ans24.SetSelection(ans24.Text.Length, 0)
		Case "ans23"
			ans23.Text = ""
			ans23.SetSelection(ans23.Text.Length, 0)
		Case "ans22"
			ans22.Text = ""
			ans22.SetSelection(ans22.Text.Length, 0)
		Case "ans21"
			ans21.Text = ""
			ans21.SetSelection(ans21.Text.Length, 0)



		Case "ans20"
			ans20.Text = ""
			ans20.SetSelection(ans20.Text.Length, 0)
		Case "ans19"
			ans19.Text = ""
			ans19.SetSelection(ans19.Text.Length, 0)
		Case "ans18"
			ans18.Text = ""
			ans18.SetSelection(ans18.Text.Length, 0)
		Case "ans17"
			ans17.Text = ""
			ans17.SetSelection(ans17.Text.Length, 0)
		Case "ans16"
			ans16.Text = ""
			ans16.SetSelection(ans16.Text.Length, 0)
			
			
		Case "ans15"
			ans15.Text = ""
			ans15.SetSelection(ans15.Text.Length, 0)
		Case "ans14"
			ans14.Text = ""
			ans14.SetSelection(ans14.Text.Length, 0)
		Case "ans13"
			ans13.Text = ""
			ans13.SetSelection(ans13.Text.Length, 0)
		Case "ans12"
			ans12.Text = ""
			ans12.SetSelection(ans12.Text.Length, 0)
		Case "ans11"
			ans11.Text = ""
			ans11.SetSelection(ans11.Text.Length, 0)
		
		
		Case "ans10"
			ans10.Text = ""
			ans10.SetSelection(ans10.Text.Length, 0)
		Case "ans9"
			ans9.Text = ""
			ans9.SetSelection(ans9.Text.Length, 0)
		Case "ans8"
			ans8.Text = ""
			ans8.SetSelection(ans8.Text.Length, 0)
		Case "ans7"
			ans7.Text = ""
			ans7.SetSelection(ans7.Text.Length, 0)
		Case "ans6"
			ans6.Text = ""
			ans6.SetSelection(ans6.Text.Length, 0)
			
			
		Case "ans5"
			ans5.Text = ""
			ans5.SetSelection(ans5.Text.Length, 0)
		Case "ans4"
			ans4.Text = ""
			ans4.SetSelection(ans4.Text.Length, 0)
		Case "ans3"
			ans3.Text = ""
			ans3.SetSelection(ans3.Text.Length, 0)
		Case "ans2"
			ans2.Text = ""
			ans2.SetSelection(ans2.Text.Length, 0)
		Case "ans1"
			ans1.Text = ""
			ans1.SetSelection(ans1.Text.Length, 0)
	End Select
End Sub

