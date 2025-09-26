import 'dart:developer';
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

double tambah(double a, double b) => a + b;
double kurang(double a, double b) => a - b;
double kali(double a, double b) => a * b;
double bagi(double a, double b) => a / b;
double modulus(double a, double b) => a % b;

void main()
{
  while(true)
  {
    print('\n**** KALKULATOR ****');
    print('\n1) TAMBAH            (+)');
    print('2) KURANG            (-)');
    print('3) KALI              (x)');
    print('4) BAGI              (:)');
    print('5) SISA BAGI/MODULUS (%) *FITUR BARU*');
    print('6) KELUAR');
    stdout.write('\nPILIH 1-6: ');
    final pilih = stdin.readLineSync()?.trim();

    if (pilih == '6'){
      print('\nTHANKS BYE.');
      return;
    }


    final a = _readNumber('\nMASUKKAN ANGKA PERTAMA');
    final b = _readNumber('MASUKKAN ANGKA KEDUA');

    switch(pilih)
    {
      case '1':
        double hasil = tambah(a, b);
        print('\n$a + $b = $hasil');
      break;

      case '2':
        double hasil = kurang(a, b);
        print('\n$a - $b = $hasil');
      break;

      case '3':
        double hasil = kali(a, b);
        print('\n$a x $b = $hasil');
      break;

      case '4':
        double hasil = bagi(a, b);
        if(b == 0)
        {
          print('\n$a : $b = tidak bisa dibagi dengan $b');
        }else{

          print('\n$a : $b = $hasil');
        }
        
      break;

      case '5':
        double hasil = modulus(a, b);
        if(b == 0)
        {
          print('\n$a % $b = tidak bisa modulus dengan $b');
        }else{

          print('\n$a % $b = $hasil');
        }
      default:
        print('\nANDA TIDAK MEMILIH MENU');
      break;
    }
  }
}
