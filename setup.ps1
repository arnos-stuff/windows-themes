Invoke-WebRequest -Uri 'https://aka.ms/vs/17/release/vs_BuildTools.exe' -OutFile "$env:TEMP\vs_BuildTools.exe"

& "$env:TEMP\vs_BuildTools.exe" --passive --wait --add Microsoft.VisualStudio.Workload.VCTools --includeRecommended --remove Microsoft.VisualStudio.Component.VC.CMake.Project	;

Set-ExecutionPolicy RemoteSigned -Scope CurrentUser ;
Invoke-RestMethod get.scoop.sh | Invoke-Expression ;

scoop install git;
scoop install psutils; 
scoop install go;
scoop install rust ;
scoop install vcredist2022 ; 
scoop install starship;

go install github.com/jreisinger/ghrel@latest ;

ghrel tonsky/FiraCode;

ghrel namazso/SecureUxTheme ;

ghrel rainmeter/rainmeter ;

git clone https://github.com/niivu/Windows-11-themes.git Windows-Themes ; 

$fonts = (New-Object -ComObject Shell.Application).Namespace(0x14)
dir fonts/*.ttf | %{ $fonts.CopyHere($_.fullname) }
