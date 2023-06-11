#!/data/data/com.termux/files/usr/bin/bash
# việt hoá by Hectran =))
directory="$(pwd)"
echo
echo -e "\e[93mKịch bản này tải công cụ ADB & FastBoot trên termux"
echo
echo -e "\e[32m[*] \e[34mKhu vực này đang tải tệp lệnh"
mkdir $PREFIX/tmp/adbtemp
downpath="$PREFIX/tmp/adbtemp"
wget https://raw.githubusercontent.com/hectran12/ADBTermux/main/TermuxADBFiles/bin/adb -P $downpath/ -q
echo -e "\e[32m[*] \e[34mĐang tải xuống các tệp nhị phân..."
wget https://github.com/hectran12/ADBTermux/raw/main/TermuxADBFiles/bin/adb.bin -P $downpath/ -q
wget https://github.com/hectran12/ADBTermux/raw/main/TermuxADBFiles/bin/fastboot -P $downpath/ -q
wget https://github.com/hectran12/ADBTermux/raw/main/TermuxADBFiles/bin/fastboot-armeabi -P $downpath/ -q
echo -e "\e[32m[*] \e[34mĐang sao chép tệp vào thư mục bin..."
cp $downpath/* $PREFIX/bin
echo -e "\e[32m[*] \e[34mĐang thiết lập quyền thực thi..."
files="$(ls $downpath)"
cd $PREFIX/bin
chmod +x $files
echo -e "\e[32m[*] \e[34mĐang tạo khu làm việc..."
cd $HOME
if [ ! -d "adbfiles" ]; then
  mkdir adbfiles
fi
echo -e "\e[32m[*] \e[34mĐang xoá file cài đặt..."
cd $directory
rm -rf $downpath
rm -rf InstallTools.sh
echo
echo -e "\e[32mCông cụ đã được cài hoàn tất!\e[39m"
echo
