# Delicate Mobile

# Tugas 7

## 1. Apa itu Stateless Widget dan Stateful Widget? Jelaskan perbedaannya.
- **Stateless Widget**: Stateless Widget merupakan widget yang tidak mengalami perubahan status. Antarmuka pengguna tetap sama dan tidak berubah, sehingga cocok untuk elemen yang tidak perlu berubah, seperti teks atau ikon.

- **Stateful Widget**: Stateful Widget merupakan widget yang bisa berubah karena interaksi pengguna atau perubahan data. Widget ini memiliki status internal yang memungkinkan antarmuka pengguna menjadi dinamis, seperti tombol atau formulir.

### Perbedaan:
- **Stateless Widget**: Tidak bisa diubah setelah dibuat.
- **Stateful Widget**: Bisa diubah dengan mengubah statusnya.

## 2. Sebutkan widget yang kamu gunakan dalam proyek ini dan fungsinya.
Beberapa widget yang digunakan dalam proyek ini antara lain:

- **Scaffold**: Menyediakan struktur dasar untuk halaman, termasuk bagian atas (AppBar) dan konten utama.

- **AppBar**: Digunakan untuk menampilkan judul aplikasi di bagian atas layar.

- **Padding**: Memberikan jarak di sekitar widget lain.

- **Column**: Mengatur widget secara vertikal, dari atas ke bawah.

- **Row**: Mengatur widget secara horizontal, dari kiri ke kanan.

- **InfoCard**: Widget khusus yang digunakan untuk menampilkan informasi seperti NPM, nama, dan kelas dalam bentuk kartu.

- **GridView**: Menyusun widget dalam format grid atau tabel, memudahkan pembuatan layout dengan beberapa kolom.

- **Material**: Memberikan tema material pada widget, termasuk efek bayangan dan ketinggian.

- **InkWell**: Merespons interaksi pengguna seperti klik, dan memberikan efek visual.

- **Icon**: Menampilkan ikon dari koleksi ikon bawaan Flutter.

- **Text**: Menampilkan teks di layar.

## 3. Apa fungsi dari `setState()`? Sebutkan variabel apa saja yang bisa terpengaruh oleh fungsi tersebut.
Fungsi `setState()` digunakan untuk memberi tahu Flutter bahwa ada perubahan dalam status widget yang bersifat Stateful, sehingga perlu memperbarui tampilan widget tersebut. Saat `setState()` dipanggil, Flutter akan menjalankan kembali metode `build()` dari widget untuk memperbarui antarmuka pengguna berdasarkan perubahan yang terjadi. Variabel yang bisa berubah melalui `setState()` adalah variabel yang mempengaruhi tampilan antarmuka, seperti teks, status tombol, atau data input.

## 4. Apa perbedaan antara `const` dan `final`?
`const` dan `final` digunakan untuk mendeklarasikan variabel yang tidak bisa diubah setelah diinisialisasi. Perbedaannya adalah `const` mengharuskan nilai diketahui pada saat kompilasi dan bersifat tidak dapat diubah (immutable), sementara `final` lebih fleksibel karena nilai dapat diinisialisasi saat runtime, tetapi tetap tidak dapat diubah setelah ditetapkan.

## 5. Bagaimana cara kamu mengimplementasikan checklist di atas?
1. Buat proyek Flutter baru dengan nama `delicate` menggunakan perintah `flutter create delicate`, kemudian masuk ke direktori tersebut dengan `cd delicate`.
2. Jalankan aplikasi Flutter menggunakan `flutter run` atau buka di Google Chrome dengan perintah `flutter run -d chrome`.
3. Atur tema warna di `main.dart` menggunakan `ColorScheme.fromSwatch` dan pilih warna kombinasi biru-hijau, misalnya `Colors.teal` untuk warna utama dan `Colors.tealAccent` untuk warna sekunder.
4. Pindahkan widget `MyHomePage` dari `main.dart` ke file baru `menu.dart` di folder `lib` dengan menambahkan `import 'package:delicate/menu.dart';` di `main.dart`.
5. Deklarasikan variabel `npm`, `name`, dan `className` dalam `MyHomePage` di `menu.dart` untuk menampilkan informasi NPM, nama, dan kelas.
6. Buat widget `InfoCard` di `menu.dart` untuk menampilkan informasi tersebut dalam bentuk kartu sederhana.
7. Tambahkan daftar `ItemHomepage` di `menu.dart` yang berisi tiga tombol: "Lihat Daftar Produk", "Tambah Produk", dan "Logout".
8. Implementasikan widget `ItemCard` di `menu.dart` untuk menampilkan tombol-tombol tersebut dan munculkan `SnackBar` saat tombol ditekan, menampilkan pesan sesuai tombol yang ditekan.
9. Tampilkan `InfoCard` dan `ItemCard` di `MyHomePage` menggunakan `GridView` dan `Row` untuk mengatur layout tombol dan informasi.
