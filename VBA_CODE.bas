Attribute VB_Name = "Module1"
Sub UnhideAllWoksheets()
Dim ws As Worksheet
For Each ws In ActiveWorkbook.Worksheets
ws.Visible = xlSheetVisible
Next ws
End Sub

Sub HideAllExceptActiveSheet()
Dim ws As Worksheet
For Each ws In ThisWorkbook.Worksheets
If ws.Name <> ActiveSheet.Name Then ws.Visible = xlSheetHidden
Next ws
End Sub

Sub SortSheetsTabName()
Application.ScreenUpdating = False
Dim ShCount As Integer, i As Integer, j As Integer
ShCount = Sheets.Count
For i = 1 To ShCount - 1
For j = i + 1 To ShCount
If Sheets(j).Name < Sheets(i).Name Then
Sheets(j).Move before:=Sheets(i)
End If
Next j
Next i
Application.ScreenUpdating = True
End Sub

Sub protectsheets()
Dim ws As Worksheet
For Each ws In Worksheets
ws.Protect Password:="Test123"
Next ws
End Sub

Sub unprotectsheets()
Dim ws As Worksheet
For Each ws In Worksheets
ws.Unprotect Password:="Test123"
Next ws
End Sub

Sub hide_unhide_rows_columns()

Columns.EntireColumn.Hidden = True
Columns.EntireColumn.Hidden = False

Rows.EntireRow.Hidden = True
Rows.EntireRow.Hidden = False


End Sub

Sub UnmergeAllCells()
ActiveSheet.Cells.UnMerge
End Sub

Sub SaveWorkbookWithTimeStamp()
Dim timestamp As String
timestamp = Format(Date, "dd-mm-yyyy") & "_" & Format(Time, "hh-ss")
ThisWorkbook.SaveAs "C:\Users\Rahul\Desktop\Excel\Files" & timestamp
End Sub

Sub SaveEachAsPDF()
Dim ws As Worksheet
For Each ws In Worksheets
ws.ExportAsFixedFormat xlTypePDF, "C:\Users\Rahul\Desktop\Excel\Files" & ws.Name & ".pdf"
Next ws
MsgBox ("Worksheets are Sucessfully Saved")
End Sub

Sub ConvertToValue()
With ActiveSheet.UsedRange
.Value = .Value
End With
MsgBox ("Formula is Converted to Value")
End Sub






