
$source = ".\low_res\"
$target = ".\high_res\"

mkdir $target -ErrorAction SilentlyContinue

$files = Get-ChildItem -Path $source -File

# Loop through each file in the collection
foreach ($file in $files) {
    # Perform actions on the current file
    Write-Host "Processing file: $($file.FullName)"

    try {
        ~/github/Real-ESRGAN/realesrgan-ncnn-vulkan.exe -i "$($file.FullName)" -o "$($target + $file.Name)"    
    }
    catch {
        Write-Host "Error processing file: $($file.FullName). Error: $_"
    }
    

}
