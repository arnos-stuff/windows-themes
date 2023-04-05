
go install jreisinger/ghrel@latest ;

ghrel tonsky/FiraCode;

7z x *.zip ;

ghrel namazso/SecureUxTheme ;

ghrel rainmeter/rainmeter ;

git clone https://github.com/niivu/Windows-11-themes.git Windows-Themes ; 

$fonts = (New-Object -ComObject Shell.Application).Namespace(0x14)
dir *ttf*/*.ttf | %{ $fonts.CopyHere($_.fullname) } -Confirm ;

