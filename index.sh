#!/bin/bash

# Mendefinisikan fungsi untuk menghitung faktorial
function factorial {
  if (( $1 <= 1 ))
  then
    echo 1
  else
    # Menghitung faktorial dengan rekursif
    local i=$(($1-1))
    local j=$(factorial $i)
    echo $(($1*$j))
  fi
}

# Meminta input dari pengguna
read -p "Masukkan bilangan bulat positif: " num

# Memanggil fungsi factorial dan mencetak hasilnya
echo "Faktorial dari $num adalah $(factorial $num)."
