#!/usr/bin/env bash

mega_folder_0='https://mega.nz/folder/yWhimSLJ#zblA2ux0_Bm-VxaBFhgeSQ'

mega_files_0=(
    # gnupoc
    rSJTUazL
    # Symbian_3_SDK_v1_0_en
    zXZm3KBZ
    # s60_open_c_cpp_plug_in_v1_7_en
    OTZx1ArD
)

for file in "${mega_files_0[@]}"; do
    mega-get "$mega_folder_0/file/$file" "$1"
done
