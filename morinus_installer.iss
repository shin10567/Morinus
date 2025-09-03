; Inno Setup script to package the PyInstaller output
#define AppName "Morinus (shin10567)"
#define AppVersion "0.1"
#define Publisher "shin10567"
#define ExeName "Morinus.exe"

[Setup]
AppId={{06E3A6ED-07E4-4C64-8D16-2F1F0E5A9F67}
AppName={#AppName}
AppVersion={#AppVersion}
AppPublisher={#Publisher}
DefaultDirName={pf}\Morinus-shin10567
DefaultGroupName={#AppName}
DisableDirPage=no
DisableProgramGroupPage=yes
Compression=lzma
SolidCompression=yes
OutputBaseFilename=Morinus-Setup
ArchitecturesInstallIn64BitMode=x64

[Languages]
Name: "korean"; MessagesFile: "compiler:Languages\Korean.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
; Point this to your PyInstaller onedir output folder
Source: "dist\Morinus\*"; DestDir: "{app}"; Flags: recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#AppName}"; Filename: "{app}\{#ExeName}"; WorkingDir: "{app}"
Name: "{commondesktop}\{#AppName}"; Filename: "{app}\{#ExeName}"; Tasks: desktopicon

[Tasks]
Name: "desktopicon"; Description: "바탕화면 아이콘 만들기"; GroupDescription: "추가 옵션:"; Flags: unchecked

[Run]
Filename: "{app}\{#ExeName}"; Description: "설치 후 실행"; Flags: nowait postinstall skipifsilent
