cp ~/kernel/linux_openpvrsgx/.output/arch/arm/boot/zImage zImage
cp ~/kernel/linux_openpvrsgx/.output/arch/arm/boot/dts/omap4-samsung-espresso7.dtb omap4-samsung-espresso7.dtb
cat zImage omap4-samsung-espresso7.dtb > zImage-dtb
cp /tmp/postmarketOS-export/boot.img boot.img
abootimg -u boot.img  -k zImage-dtb -c "bootsize=8003584" 
cp boot.img /mnt/c/users/bavis/desktop/newboot.img

