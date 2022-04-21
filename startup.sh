#!/bin/bash
if [[ -d "/home/pi/Dev/Master0Aman" ]]
then
#echo "Ya ini ada" #ls -al |grep
    echo 'Direktori "dev" sudah siap'
    echo 'Apakah perlu melakukan refresh file(ya/tidak)'
    read balas
    if [ $balas == "ya" ];
        then
        #Hapus Folder lama
            #Menghapus bersama file didalamnya (-d)
        rm -rf Master01
        echo "File lama sudah dihapus"

        #Clone file
        git clone https://github.com/mazajiputra/Master01.git
        
        echo "File sudah di refresh"
        else    
        echo "Tidak refresh file"
    fi
  
else
    echo 'Direktori "dev" tidak siap'
    echo 'direktori "dev" akan diclone'
    git clone https://github.com/mazajiputra/Master01.git
fi