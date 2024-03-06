
Public Sub P_S4()
MsgBox "Tekst z procedury z modułu 2"
End Sub


Public Function P_F2()
P_F2 = "Tekst z funkcji z modułu 2"
End Function


Public Sub P_S5()
Call P_S4
End Sub


Public Sub P_S6()
Call P_S4
End Sub
