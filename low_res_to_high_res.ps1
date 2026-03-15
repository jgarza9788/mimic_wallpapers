
$source = ".\low_res\"
$target = ".\high_res\"

mkdir $target -ErrorAction SilentlyContinue

$files = Get-ChildItem -Path $source -File

# Loop through each file in the collection
foreach ($file in $files) {
    # Perform actions on the current file
    Write-Host "Processing file: $($file.FullName)"
    # Example: get the length of the file
    # Write-Host "File size: $($file.Length) bytes"

    Write-Host "$file.FullName"

    ~/github/Real-ESRGAN/realesrgan-ncnn-vulkan.exe -i "$($file.FullName)" -o "$($target + $file.Name)"

}
