# Delicate Mobile

# Tugas 7

## 1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
- **Stateless Widget**: Widget tanpa perubahan status. UI bersifat statis, cocok untuk elemen yang tidak berubah seperti teks atau ikon.
  
- **Stateful Widget**: Widget yang bisa berubah karena interaksi atau data yang berubah. Memiliki status internal, cocok untuk UI dinamis seperti tombol atau formulir.

### Perbedaan:
- **Stateless Widget**: Tidak berubah setelah dibuat.
- **Stateful Widget**: Bisa berubah dengan memodifikasi statusnya.

## 2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
Beberapa widget yang digunakan dalam proyek ini meliputi:

- **Scaffold**: Struktur dasar halaman yang menyediakan layout standar untuk aplikasi, seperti AppBar di bagian atas dan body di tengah.
  
- **AppBar**: Digunakan untuk menampilkan judul aplikasi di bagian atas layar.
  
- **Padding**: Widget untuk memberikan jarak atau margin di sekitar widget lain.
  
- **Column**: Menyusun widget secara vertikal (dari atas ke bawah).
  
- **Row**: Menyusun widget secara horizontal (dari kiri ke kanan).
  
- **InfoCard**: Widget khusus yang dibuat untuk menampilkan informasi berupa judul dan konten, seperti NPM, nama, dan kelas.
  
- **GridView**: Menyusun widget dalam bentuk grid atau tabel, memungkinkan pembuatan layout dengan beberapa kolom.
  
- **Material**: Memberikan tema material pada widget, termasuk efek seperti bayangan dan ketinggian (elevation).
  
- **InkWell**: Widget yang merespons interaksi pengguna, seperti sentuhan atau klik, dan memberikan efek visual seperti ripple.
  
- **Icon**: Menampilkan ikon dari kumpulan ikon bawaan Flutter.
  
- **Text**: Menampilkan teks di layar.

## 3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Fungsi `setState()` digunakan untuk memberi tahu Flutter bahwa ada perubahan dalam status internal suatu Stateful Widget dan harus memperbarui tampilan widget tersebut. Ketika `setState()` dipanggil, Flutter akan menjalankan ulang metode `build()` dari widget untuk memperbarui UI berdasarkan perubahan data. Variabel yang bisa berubah melalui `setState()` adalah variabel yang mempengaruhi tampilan UI, seperti teks, status tombol, atau data input.

## 4. Jelaskan perbedaan antara const dengan final.
`const` dan `final` digunakan untuk mendeklarasikan variabel yang nilainya tidak bisa diubah setelah diinisialisasi, tetapi perbedaannya adalah `const` mengharuskan nilai diketahui pada waktu kompilasi dan bersifat immutable, sementara `final` lebih fleksibel karena nilainya dapat diinisialisasi pada runtime, meskipun tetap tidak dapat diubah setelah ditetapkan.

## 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
1. Buat proyek Flutter baru dengan nama `delicate` menggunakan perintah `flutter create delicate`, lalu masuk ke direktori tersebut dengan `cd delicate`.
2. Jalankan aplikasi Flutter menggunakan `flutter run` atau jalankan di Google Chrome dengan perintah `flutter run -d chrome`.
3. Atur tema warna di `main.dart` menggunakan `ColorScheme.fromSwatch` dan ubah warna menjadi kombinasi biru-hijau, misalnya `Colors.teal` untuk primary dan `Colors.tealAccent` untuk secondary.
4. Pindahkan widget `MyHomePage` dari `main.dart` ke file baru `menu.dart` di dalam folder `lib` dengan menambahkan `import 'package:delicate/menu.dart';` di `main.dart`.
5. Deklarasikan variabel `npm`, `name`, dan `className` dalam `MyHomePage` di `menu.dart` untuk menampilkan NPM, nama, dan kelas.
6. Buat `InfoCard` di `menu.dart` untuk menampilkan informasi NPM, nama, dan kelas dalam bentuk kartu sederhana.
7. Tambahkan list `ItemHomepage` di `menu.dart` yang berisi tiga tombol: "Lihat Daftar Produk", "Tambah Produk", dan "Logout".
8. Implementasikan `ItemCard` di `menu.dart` untuk menampilkan tombol-tombol tersebut dan munculkan `SnackBar` saat tombol ditekan, menampilkan pesan sesuai tombol yang ditekan.
9. Tampilkan `InfoCard` dan `ItemCard` di `MyHomePage` menggunakan `GridView` dan `Row` untuk layout tombol dan informasi.
