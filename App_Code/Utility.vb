Imports Microsoft.VisualBasic
Imports System.Net.Mail

Public Class Utility

    ''' <summary>
    ''' 
    ''' </summary>
    ''' <param name="toEmail"></param>
    ''' <param name="subject"></param>
    ''' <param name="message"></param>
    ''' <param name="cc"></param>
    ''' <param name="bcc"></param>
    ''' <param name="isHtml"></param>
    ''' <remarks></remarks>
    Public Shared Sub SendEmail(ByVal toEmail As String, ByVal subject As String, ByVal message As String, Optional ByVal cc As String = Nothing, Optional ByVal bcc As String = Nothing, Optional isHtml As Boolean = True)
        Dim objMail As MailMessage = New MailMessage("info@wavepilates.com", toEmail)
        Dim objSmtp As SmtpClient = New SmtpClient("relay-hosting.secureserver.net")

        objMail.Subject = subject
        objMail.Body = message
        objMail.IsBodyHtml = isHtml

        If Not IsNothing(cc) Then
            objMail.CC.Add(cc)
        End If
        If Not IsNothing(bcc) Then
            objMail.Bcc.Add(bcc)
        End If

        objSmtp.Send(objMail)
    End Sub
End Class
