
[Setup]
AppId={{E4F3A8C0-3F5F-4A6D-9C2B-9C7A3F2B5F11}}   
AppName=Morinus
AppVersion=0.8.10+byShin10567                    
AppPublisher=Shin10567
DefaultDirName={autopf}\Morinus                  


DisableProgramGroupPage=yes
Compression=lzma2/ultra64
SolidCompression=yes
WizardStyle=modern
ArchitecturesInstallIn64BitMode=x64
OutputDir=C:\morinus-src\installer
OutputBaseFilename=Morinus_Setup
SetupIconFile=C:\morinus-src\Morinus.ico
AllowNoIcons=yes
ChangesAssociations=yes                         

[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\morinus-src\dist\Morinus\*"; DestDir: "{app}"; Flags: recursesubdirs createallsubdirs ignoreversion


[Icons]
; 시작 메뉴 바로가기
Name: "{autoprograms}\Morinus"; Filename: "{app}\Morinus.exe"; WorkingDir: "{app}"
; 바탕화면 아이콘(옵션)
Name: "{userdesktop}\Morinus"; Filename: "{app}\Morinus.exe"; Tasks: desktopicon

[Run]
; 설치 끝나고 바로 실행 옵션
Filename: "{app}\Morinus.exe"; Description: "{cm:LaunchProgram, Morinus}"; Flags: nowait postinstall skipifsilent
