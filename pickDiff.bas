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

End Sub

Sub Globals
	
	Private easybtn As Button
	Private mediumbtn As Button
	Private hardbtn As Button
	Private homebtn As Button
End Sub

Sub Activity_Create(FirstTime As Boolean)
	Activity.LoadLayout("PICKDIFF")
End Sub

Sub Activity_Resume

End Sub

Sub Activity_Pause (UserClosed As Boolean)

End Sub

Private Sub homebtn_Click
	StartActivity(Main)
End Sub

Private Sub easybtn_Click
	StartActivity(Easy)
End Sub

Private Sub mediumbtn_Click
	StartActivity(Medium)
End Sub

Private Sub hardbtn_Click
	StartActivity(Hard)
End Sub