mkdir tmp ; 
cd tmp;

go install jreisinger/ghrel@latest ;

ghrel tonsky/FiraCode@latest;

7z x *.zip ;

ghrel namazso/SecureUxTheme@latest ;

ghrel rainmeter/rainmeter@latest ;

git clone https://github.com/niivu/Windows-11-themes.git Windows-Themes ; 

$fonts = (New-Object -ComObject Shell.Application).Namespace(0x14)
dir *ttf*/*.ttf | %{ $fonts.CopyHere($_.fullname) } -Confirm ;
