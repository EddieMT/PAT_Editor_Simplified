; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "MIPI Tool"
#define MyAppVersion "2.0.2.2"
#define MyAppPublisher "Merlin Test, Ltd."
#define MyAppURL "http://www.merlintest.com/"
#define MyAppExeName "PAT_Editor.exe"
#define AppId "{C243DF5A-F985-43EC-A80E-A22B00E9E004}"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{#AppId}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\Merlin Test\{#MyAppName}
DisableDirPage=yes
DefaultGroupName=Merlin Test\Tools\{#MyAppName}
DisableProgramGroupPage=yes
OutputBaseFilename=MIPI Tool Installer {#MyAppVersion}
SetupIconFile=..\MerlinTest.ico
Compression=lzma
SolidCompression=yes
UninstallDisplayIcon={app}\MerlinTest.ico
LicenseFile=license.rtf

;[Code]
;function InitializeSetup(): Boolean;
;begin
;  Result := True;
;  if RegKeyExists(HKEY_LOCAL_MACHINE,
;       'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{#AppId}_is1') or
;     RegKeyExists(HKEY_LOCAL_MACHINE,
;       'SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{#AppId}_is1') or
;     RegKeyExists(HKEY_CURRENT_USER,
;       'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{#AppId}_is1') or
;     RegKeyExists(HKEY_CURRENT_USER,
;       'SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{#AppId}_is1') then
;  begin
;    MsgBox('The application is installed already.', mbInformation, MB_OK);
;    Result := False;
;  end;
;end;

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "..\bin\Release\*"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\MerlinTest.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\Release\PECOMPILER\*"; DestDir: "{app}\PECOMPILER"; Flags: ignoreversion

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; IconFilename: "{app}\MerlinTest.ico"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}";
