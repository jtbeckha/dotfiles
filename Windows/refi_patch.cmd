:: This script patches the microsoft bootloader with refind so I can boot to Ubuntu
:: Windows keeps overriding my patch when it updates so I am creating this script to easily repatch
:: When prompted, answer that bootmgfw.efi is a file, and yes to overwrite S:\EFI\Microsoft\Boot\bootmgfw.efi. Purposely force some interactivity to reduce the chances of accidentally screwing up your computer :D

mountvol S: /S
S:
cd EFI\Microsoft\Boot
# Backup the microsoft bootloader
xcopy bootmgfw.efi ..\bootmgfw.efi
# Put refind into place
xcopy S:\EFI\refind\refind_x64.efi bootmgfw.efi
echo "Success"
