Imports System.Web.Mail
Imports System.Data
Imports System.Xml
Partial Class Contact
    Inherits System.Web.UI.Page

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        ''Create an instance of the MailMessage class
        'Dim objMM As New MailMessage()
        'Dim lblInterest = ""
        ''Set the properties - send the email to the person who filled out the
        ''feedback form.
        'objMM.To = "summer@wavepilates.com, katie@wavepilates.com"
        'objMM.From = "summer@wavepilates.com, katie@wavepilates.com"

        ''If you want to CC this email to someone else, uncomment the line below
        ''objMM.Cc = "someone@someaddress.com"

        ''If you want to BCC this email to someone else, uncomment the line below
        ''objMM.Bcc = "someone@someaddress.com"

        ''Send the email in text format
        'objMM.BodyFormat = MailFormat.Html
        ''(to send HTML format, change MailFormat.Text to MailFormat.Html)

        ''Set the priority - options are High, Low, and Normal
        'objMM.Priority = MailPriority.Normal


        ''Set the subject
        'objMM.Subject = "Wave Pilates Website Feedback:" + Me.txtName.Text
        ''Set the body
        'objMM.Body = "<html>" & _
        '                    "<body>" & _
        '                    "<style type='text/css'>body{font:verdana, arial; font-size:12pt;}b{font-size:10pt;}</style>" & _
        '                    "<b>Time Submited:</b> " + DateTime.Now & _
        '                    "<br />" & vbCrLf & _
        '                    "<b>Sentby:</b> " & Me.txtName.Text & vbCrLf & _
        '                    "<br />" & vbCrLf & _
        '                     "<b>Primary Phone Number:</b> " & Me.txtPhone.Text & vbCrLf & _
        '                    "<br />" & vbCrLf & _
        '                    "<b>Alternate Phone Number:</b> " & Me.txtAltPhone.Text & vbCrLf & _
        '                    "<br />" & vbCrLf & _
        '                    "<b>Email:</b> " & Me.txtEmail.Text & vbCrLf & _
        '                    "<br />" & vbCrLf & _
        '                    "<b>Additional Comments:</b> " & Me.txtQuestions.Text & vbCrLf & _
        '                    "<br />" & vbCrLf & _
        '                    "</body>" & _
        '                    "</html>"
        'objMM.Body &= "<b>" & Me.txtName.Text & "</b>" & "<b> is interested in the following:</b> <br/>"
        'Dim MyItem As ListItem
        'For Each MyItem In chckboxInterest.Items()
        '    If MyItem.Selected = True Then
        '        objMM.Body &= MyItem.Text & "<br/>"
        '        'chckboxInterest.Text = chckboxInterest.Text & MyItem.Text
        '    End If
        'Next
        ''Specify to use the default Smtp Server
        'SmtpMail.SmtpServer = "RS-A035-V"
        ''Now, to send the message, use the Send method of the SmtpMail class
        'If IsValid Then
        '    SmtpMail.Send(objMM)
        '    Dim OutputLabel As String
        '    OutputLabel = "Message Sent."
        '    Response.Redirect("Thankyou.aspx")
        'End If

        If IsValid Then
            Dim emailTo As String = "summer@wavepilates.com"
            Dim emailcc As String = "katie@wavepilates.com"
            Dim subject As String = "Wave Pilates Website Feedback:" + Me.txtName.Text
            Dim body As String = "<html>" & _
                                "<body>" & _
                                "<style type='text/css'>body{font:verdana, arial; font-size:12pt;}b{font-size:10pt;}</style>" & _
                                "<b>Time Submited:</b> " + DateTime.Now & _
                                "<br />" & vbCrLf & _
                                "<b>Sentby:</b> " & Me.txtName.Text & vbCrLf & _
                                "<br />" & vbCrLf & _
                                 "<b>Primary Phone Number:</b> " & Me.txtPhone.Text & vbCrLf & _
                                "<br />" & vbCrLf & _
                                "<b>Alternate Phone Number:</b> " & Me.txtAltPhone.Text & vbCrLf & _
                                "<br />" & vbCrLf & _
                                "<b>Email:</b> " & Me.txtEmail.Text & vbCrLf & _
                                "<br />" & vbCrLf & _
                                "<b>Additional Comments:</b> " & Me.txtQuestions.Text & vbCrLf & _
                                "<br />" & vbCrLf

            For Each MyItem In chckboxInterest.Items()
                If MyItem.Selected = True Then
                    body &= MyItem.Text & "<br/>" & vbCrLf
                End If
            Next

            body &= "</body></html>"

            Utility.SendEmail(emailTo, subject, body, cc:=emailcc)

            Response.Redirect("Thankyou.aspx")
        End If
    End Sub

    Public Shared Sub Msg(ByVal page As System.Web.UI.Page, ByVal Message As String)
        If Not page Is Nothing Then

            page.Response.Write("<SCRIPT LANGUAGE=""JavaScript"">" & vbCrLf)
            page.Response.Write("alert(""" & Message & """);" & vbCrLf)
            page.Response.Write("</SCRIPT>")
        End If
    End Sub

End Class
