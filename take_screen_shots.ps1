[CmdletBinding()]
param (
    [Parameter()]
    [String]
    $Destination
)

# $Destination = 'D:\'

$year = Get-Date -Format 'yyyy';
$month = Get-Date -Format 'MM';
$day = Get-Date -Format 'dd';
$dest = "$Destination\SS\$year\$month\$day";
mkdir $dest -ErrorAction Ignore;
Get-Process -Name 'ffmpeg' -ErrorAction Ignore | ForEach-Object { $_.Kill() };
ffmpeg -y -nostdin -hide_banner -nostats -loglevel panic -flush_packets 1 -f gdigrab -framerate 1 -i desktop -an -vf scale=`"iw/1.5:ih/1.5`" $dest\$(Get-Date -Format 'yyyy-MM-dd_hh.mm.ss.fffff')-%d.jpg;
# Start-Sleep 60;
# $proc.Kill(1);
#$c = 0; gci | %{Rename-Item $_.FullName "$c.jpg"; $c = $c+1;}; ffmpeg -f image2 -framerate 1 -i %d.jpg foo.avi