Attribute VB_Name = "Module1"
Function oerro()
    Dim mens As String
    
   

MsgBox "Ocorreu o seguinte erro: " & Err.Number & " - " & Err.Description, vbInformation, "Atenção"

End Function

