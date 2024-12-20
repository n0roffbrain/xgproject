cd %~dp0
AMIDEWINx64.EXE /SU auto
AMIDEWINx64.EXE /SS "Ghex-%random%%random%%random%"
AMIDEWINx64.EXE /SV "Ghex-%random%%random%%random%"
AMIDEWINx64.EXE /CSK "Ghex-%random%%random%%random%"
AMIDEWINx64.EXE /CM  "Ghex-%random%%random%%random%"
AMIDEWINx64.EXE /SP "Ghex-%random%%random%%random%"
AMIDEWINx64.EXE /SM "Ghex-%random%%random%%random%"
AMIDEWINx64.EXE /SK "Ghex-%random%%random%%random%"
AMIDEWINx64.EXE /SF "Ghex-%random%%random%%random%"
AMIDEWINx64.EXE /BM "Ghex-%random%%random%%random%"
AMIDEWINx64.EXE /BP "Ghex-%random%%random%%random%"
AMIDEWINx64.EXE /BV "Ghex-%random%%random%%random%"
AMIDEWINx64.EXE /BT "Ghex-%random%%random%%random%"
AMIDEWINx64.EXE /BLC "Ghex-%random%%random%%random%"
AMIDEWINx64.EXE /PSN "Ghex-%random%%random%%random%"
AMIDEWINx64.EXE /PAT "Ghex-%random%%random%%random%"
AMIDEWINx64.EXE /PPN "Ghex-%random%%random%%random%"
AMIDEWINx64.EXE /CSK "Ghex-%random%%random%%random%"
AMIDEWINx64.EXE /CS "Ghex-%random%%random%%random%"
AMIDEWINx64.EXE /CV "Ghex-%random%%random%%random%"
AMIDEWINx64.EXE /CM "Ghex-%random%%random%%random%"
AMIDEWINx64.EXE /CA "Ghex-%random%%random%%random%"
AMIDEWINx64.EXE /CO "Ghex-%random%%random%%random%"
AMIDEWINx64.EXE /CT "Ghex-%random%%random%%random%"
AMIDEWINx64.EXE /IV "Ghex-%random%%random%%random%"
AMIDEWINx64.EXE /IVN "Ghex-%random%%random%%random%"
AMIDEWINx64.EXE /BS "%random%%random%%random%%random%%random%"
cls
net stop winmgmt /y
net start winmgmt /y
sc stop winmgmt
timeout 1
sc start winmgmt
timeout 1
exit