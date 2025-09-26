import 'dart:async';
import 'dart:io';


double _readNumber(String label)
{
  while(true){
    stdout.write('$label: ');
    final input = stdin.readLineSync();
    if(input == null) continue;
    final value = double.tryParse(input.trim());
    if (value != null) return value;
    print('Input tidak valid. Tolong masukan angka');
  }
}

void main()
{
  while(true)
  {
    print('\n===== KALKULATOR SEDERHANA =====');
    print('1) Tambah');
    print('2) Kurang');
    print('3) Kali');
    print('4) Bagi');
    print('5) Sisa Bagi/Modulus');
    print('6) Keluar');
    stdout.write('Pilih 1-5');
    final pilih = stdin.readLineSync()?.trim();

    if (pilih == 6){
      print('Terima Kasih. Selamat Tinggal');
      return;
    }


    final a = _readNumber('masukkan angka pertama');
    final b = _readNumber('masukkan angka kedua');
  }
}

