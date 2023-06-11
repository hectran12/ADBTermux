#!/data/data/com.termux/files/usr/bin/bash

echo
echo -e "\e[93mTrình gỡ bỏ ADB & Fastboot"
echo
echo -e "\e[32m[*] \e[34mKhu vực này đang xoá các tệp lệnh"
rm -rf $PREFIX/bin/adb
echo -e "\e[32m[*] \e[34mXoá các file mã nhị phân"
rm -rf $PREFIX/bin/adb.bin $PREFIX/bin/fastboot $PREFIX/bin/fastboot-armeabi
echo -e "\e[32m[*] \e[34mXoá quyền và khoá"
case `find $HOME/adbfiles -type f | wc -l` in
0 | 2)
  rm -rf $HOME/adbfiles ;;
*)
  rm -rf $HOME/adbfiles/adbkey $HOME/adbfiles/adbkey.pub ;;
esac
echo -e "\e[32m[*] \e[34mĐã dọn dẹp xong"
rm -rf RemoveTools.sh
echo
echo -e "\e[32mĐã gỡ cài đặt hoàn tất\e[39m"
echo
