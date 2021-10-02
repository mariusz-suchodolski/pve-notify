#!/usr/bin/env python3
import mailparser
import sys
import apprise

userIn = sys.stdin.read()

mail = mailparser.parse_from_string(userIn)
print(mail.text_plain[0])

apobj = apprise.Apprise()
apobj.add('###APPRISE COMPATIBLE URL###')
apobj.notify(body=mail.text_plain[0],title=mail.subject)
