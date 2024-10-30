echo Scan everything
cx scan create --project-name exclusion-test -s . --branch everything --sast-preset-name "All" --scan-types sast
echo Scan just proj4
cx scan create --project-name exclusion-test -s . --branch proj4 --sast-preset-name "All" --scan-types sast --file-filter "!src,!proj1,!proj2,!proj3,!proj5"
echo Scan just src\proj3
cx scan create --project-name exclusion-test -s . --branch "src\proj3" --sast-preset-name "All" --scan-types sast --file-filter "!proj1,!proj2,!proj4,!proj5" --sast-filter "!proj3"