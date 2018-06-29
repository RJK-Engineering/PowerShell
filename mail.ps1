# $credentials = new-object Management.Automation.PSCredential "rjklinkhamer@gmail.com", ('^K$q3?G8/bd3' | ConvertTo-SecureString -AsPlainText -Force)

# send-mailmessage `
#     -smtpServer smtp.gmail.com `
#     -Credential $credentials `
#     -Verbose -UseSsl `
#     -to "rjklinkhamer <rjklinkhamer@gmail.com>" `
#     -from "rjklinkhamer <rjklinkhamer@gmail.com>" `
#     -subject "Hi"

# $EmailFrom = "rjklinkhamer <rjklinkhamer@gmail.com>"
# $EmailTo = "rjklinkhamer <rjklinkhamer@gmail.com>"
# $Subject = "Hi"
# $Body = "..."
# $SMTPServer = "smtp.gmail.com"
# $SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 587)
# $SMTPClient.EnableSsl = $true
# $SMTPClient.Credentials = New-Object System.Net.NetworkCredential("rjklinkhamer@gmail.com", "^K$q3?G8/bd3");
# $SMTPClient.Send($EmailFrom, $EmailTo, $Subject, $Body)
