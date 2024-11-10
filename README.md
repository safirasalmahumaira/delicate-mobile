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

## 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
Saya membuat proyek flutter bernama `delicate-mobile`. Karena saya menggunakan VS Code, dan telah menginstal semua ekstensi yang dibutuhkan, proyek ini dibuat dengan menekan `Command + Shift + P`.

Selanjutnya, saya merapikan kode dengan memindahkan beberapa potongan kode ke dalam `menu.dart` yang saya buat.

### Implementasi Tiga Tombol
Untuk membuat tiga tombol sederhana dengan ikon dan teks untuk: **Lihat Daftar Produk**, **Tambah Produk**, dan **Logout**, saya mengimplementasikan kelas `ItemHomepage` yang mendefinisikan nama, ikon, dan warna tombol. Objek-objek ini dimasukkan ke dalam list `items` sebagai berikut:

```dart
final List<ItemHomepage> items = [
  ItemHomepage("Lihat Daftar Produk", Icons.list_alt, Colors.red),
  ItemHomepage("Tambah Produk", Icons.add, Colors.blue),
  ItemHomepage("Logout", Icons.logout, Colors.yellow),
];

Jelaskan cara kamu menerapkan checklist di atas.
Saya membuat proyek Flutter bernama delicate-mobile menggunakan VS Code. Setelah menginstal semua ekstensi yang diperlukan, saya memulai proyek ini dengan menekan command + shift + p.

Selanjutnya, saya merapikan kode dengan memindahkan beberapa bagian ke dalam file menu.dart yang saya buat.

Untuk membuat tiga tombol sederhana dengan ikon dan teks—"Lihat Daftar Produk," "Tambah Produk," dan "Logout"—saya menggunakan kelas ItemHomepage yang mendefinisikan nama, ikon, dan warna setiap tombol. Objek-objek ini disimpan dalam daftar items:

dart
Copy code
final List<ItemHomepage> items = [
  ItemHomepage("Lihat Daftar Produk", Icons.list_alt, Colors.red),
  ItemHomepage("Tambah Produk", Icons.add, Colors.blue),
  ItemHomepage("Logout", Icons.logout, Colors.yellow),
];
Setiap tombol memiliki warna latar belakang yang berbeda, yang diatur menggunakan properti color di dalam ItemCard melalui widget Material:

dart
Copy code
return Material(
  color: item.color, // Warna diambil dari properti color
  borderRadius: BorderRadius.circular(12),
  child: InkWell(
    // Aksi untuk interaksi
  ),
);
Saya juga menambahkan aksi untuk menampilkan snackbar ketika tombol ditekan. Di dalam ItemCard, InkWell menangani aksi saat tombol ditekan, dan ScaffoldMessenger digunakan untuk menampilkan snackbar yang sesuai dengan nama tombol:

dart
Copy code
onTap: () {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(content: Text("Kamu telah menekan tombol ${item.name}")),
    );
},