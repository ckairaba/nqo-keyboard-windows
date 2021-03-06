; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "virtual-keyboard-nko"
#define MyAppVersion "1.2"
#define MyAppPublisher "Ka?raba Ciss?, ckairaba@gmail.com"
#define MyAppURL "http://github.com/ckairaba/virtual-keyboard-nko"
#define MyAppExeName "virtual-keyboard-nko.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{691C6CEB-C769-443A-B518-774FE2B8B297}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName=N'ko keyboard
AllowNoIcons=yes
LicenseFile=C:\MinGW\msys\1.0\home\CISSE\sources\c\virtual-keyboard-nko\COPYING.txt
OutputDir=C:\MinGW\msys\1.0\home\CISSE\sources\c\virtual-keyboard-nko\iss\windows
OutputBaseFilename=virtual-keyboard-nko
SetupIconFile=C:\MinGW\msys\1.0\home\CISSE\sources\c\virtual-keyboard-nko\pictures\virtual-keyboard-nko.ico
Compression=lzma
SolidCompression=yes

[Languages]
;Name: "nko"; MessagesFile: "C:\MinGW\msys\1.0\home\CISSE\sources\c\virtual-keyboard-nko\iss\nqo.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "catalan"; MessagesFile: "compiler:Languages\Catalan.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"
Name: "hebrew"; MessagesFile: "compiler:Languages\Hebrew.isl"
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"
Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "C:\MinGW\msys\1.0\home\CISSE\sources\c\virtual-keyboard-nko\bin\virtual-keyboard-nko.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\MinGW\msys\1.0\home\CISSE\sources\c\virtual-keyboard-nko\bin\fonts\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, "&", "&&")}}"; Flags: nowait postinstall skipifsilent

