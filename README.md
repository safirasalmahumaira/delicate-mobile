# Delicate - Skincare and Makeup
Nama: Safira Salma Humaira 


NPM: 2306245850 


Kelas: PBP F


Repository GitHub ini merupakan representasi dari **Delicate Mobile**, sebuah platform e-commerce yang dibuat sebagai bagian dari **Tugas Pemrograman Berbasis Platform**.


<details>
  <summary>Tugas 7</summary>

## 1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
Stateless Widget adalah widget dengan tampilan tetap yang tidak berubah selama aplikasi berjalan karena tidak memiliki state (keadaan) yang dapat berubah. Sebaliknya, Stateful Widget memiliki state internal yang dapat berubah, sehingga dapat memperbarui tampilan saat terjadi perubahan data. Perbedaan utama antara keduanya adalah kemampuan Stateful Widget untuk merespons perubahan data dan memperbarui UI, sementara Stateless Widget tidak memiliki kemampuan tersebut.

## 2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
Berikut adalah widget yang saya gunakan pada proyek ini:

- **Scaffold**: Memberikan struktur dasar aplikasi dengan AppBar dan body.
- **AppBar**: Menampilkan bar di bagian atas aplikasi yang berisi judul.
- **Padding**: Memberikan jarak di sekitar widget anaknya.
- **Column**: Menyusun widget secara vertikal.
- **Row**: Menyusun widget secara horizontal.
- **Card**: Menampilkan kotak dengan sudut melengkung dan bayangan, digunakan dalam InfoCard.
- **Container**: Membungkus widget lain dan memungkinkan pengaturan ukuran, padding, dan dekorasi.
- **Text**: Menampilkan teks di layar.
- **SizedBox**: Memberikan jarak vertikal antara widget.
- **Center**: Menempatkan widget di tengah parent-nya.
- **GridView.count**: Menampilkan widget dalam bentuk grid dengan jumlah kolom tertentu.
- **Material**: Menyediakan efek material seperti bayangan dan warna latar belakang.
- **InkWell**: Menangani interaksi sentuhan pada widget dan memberikan efek ripple.
- **Icon**: Menampilkan ikon.
- **SnackBar**: Menampilkan pesan sementara di bagian bawah layar.

## 3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Fungsi `setState()` digunakan dalam Stateful Widget untuk memberi tahu Flutter bahwa ada perubahan pada state internal widget, sehingga framework perlu membangun ulang UI dengan data terbaru. Variabel yang terpengaruh adalah semua variabel state yang didefinisikan dalam kelas State. Dalam kode saya, karena menggunakan StatelessWidget, fungsi `setState()` tidak digunakan karena tidak ada state yang berubah.

## 4. Jelaskan perbedaan antara const dengan final.
Perbedaan antara `const` dan `final` adalah sebagai berikut:

- **const**: Digunakan untuk mendefinisikan nilai konstan pada waktu kompilasi (compile-time constant). Nilainya harus sudah diketahui sebelum program berjalan dan bersifat immutable.
- **final**: Digunakan untuk variabel yang nilainya ditetapkan sekali dan tidak dapat diubah setelahnya. Nilainya dapat ditentukan saat runtime, bukan hanya pada waktu kompilasi.

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

```dart
final List<ItemHomepage> items = [
  ItemHomepage("Lihat Daftar Produk", Icons.list_alt, Colors.red),
  ItemHomepage("Tambah Produk", Icons.add, Colors.blue),
  ItemHomepage("Logout", Icons.logout, Colors.yellow),
];
```

Jelaskan cara kamu menerapkan checklist di atas.
Saya membuat proyek Flutter bernama delicate-mobile menggunakan VS Code. Setelah menginstal semua ekstensi yang diperlukan, saya memulai proyek ini dengan menekan command + shift + p.

Selanjutnya, saya merapikan kode dengan memindahkan beberapa bagian ke dalam file menu.dart yang saya buat.

Untuk membuat tiga tombol sederhana dengan ikon dan teks—"Lihat Daftar Produk," "Tambah Produk," dan "Logout"—saya menggunakan kelas ItemHomepage yang mendefinisikan nama, ikon, dan warna setiap tombol. Objek-objek ini disimpan dalam daftar items:

```dart
final List<ItemHomepage> items = [
  ItemHomepage("Lihat Daftar Produk", Icons.list_alt, Colors.red),
  ItemHomepage("Tambah Produk", Icons.add, Colors.blue),
  ItemHomepage("Logout", Icons.logout, Colors.yellow),
];
```
Setiap tombol memiliki warna latar belakang yang berbeda, yang diatur menggunakan properti color di dalam ItemCard melalui widget Material:

```dart
return Material(
  color: item.color, // Warna diambil dari properti color
  borderRadius: BorderRadius.circular(12),
  child: InkWell(
    // Aksi untuk interaksi
  ),
);
```
Saya juga menambahkan aksi untuk menampilkan snackbar ketika tombol ditekan. Di dalam ItemCard, InkWell menangani aksi saat tombol ditekan, dan ScaffoldMessenger digunakan untuk menampilkan snackbar yang sesuai dengan nama tombol:

```dart
onTap: () {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(content: Text("Kamu telah menekan tombol ${item.name}")),
    );
},
```

</details>


<details>
  <summary>Tugas 8</summary>

## 1. Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
Di Flutter, const digunakan untuk mendefinisikan objek-objek yang sifatnya tetap (immutable) dan menjadikannya konstan pada saat kompilasi (compile-time constants). Artinya, nilai-nilai tersebut sudah ditentukan ketika aplikasi dikompilasi, bukan saat dijalankan. Ini dapat menghemat penggunaan memori karena Flutter tidak perlu membuat ulang objek tersebut setiap kali widget diperbarui. Menggunakan const memberikan keuntungan berupa peningkatan kinerja, sebab objek const hanya dibuat satu kali. Sebaiknya const diterapkan pada widget yang statis dan tidak berubah selama siklus hidup aplikasi (seperti teks, ikon, atau padding yang tetap). Selain itu, const cocok untuk elemen-elemen dengan nilai tetap yang sering digunakan di beberapa bagian aplikasi, seperti warna atau margin tertentu. Namun, const sebaiknya dihindari pada widget yang bergantung pada state atau kondisi yang bisa berubah.

## 2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!

Column dan Row adalah widget layout di Flutter yang digunakan untuk menempatkan widget lain dalam susunan baris atau kolom.

Column: Menyusun widget secara vertikal, dari atas ke bawah. Biasanya dipakai untuk menumpuk elemen-elemen dalam satu kolom pada layar.
Row: Menyusun widget secara horizontal, dari kiri ke kanan, sehingga elemen-elemen ditempatkan berdampingan.
Contoh penggunaan Column:
```dart
Column(
  children: [
    Text("Item 1"),
    Text("Item 2"),
  ],
);
```

Contoh penggunaan Row:
```dart
Row(
  children: [
    Icon(Icons.star),
    Text("Rating"),
  ],
);
```


## 3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
Berikut adalah elemen input yang digunakan di halaman form:

TextFormField: Dipakai untuk memasukkan data teks dalam formulir, seperti Item, Amount, dan Description.
Elemen input Flutter lain yang tidak dipakai dalam tugas ini meliputi:

Checkbox: Digunakan untuk memilih antara dua opsi (aktif/non-aktif).
Switch: Menyediakan opsi aktif/non-aktif dalam bentuk saklar.
Slider: Memungkinkan pemilihan nilai dalam rentang tertentu.
DropdownButton: Digunakan untuk memilih satu opsi dari beberapa pilihan dalam bentuk dropdown.
DatePicker/TimePicker: Memfasilitasi pemilihan tanggal atau waktu, biasanya dipakai di aplikasi yang memerlukan data waktu.
Radio: Digunakan untuk memilih satu opsi di antara beberapa pilihan.

## 4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
Tema pada aplikasi dikelola menggunakan Theme.of(context) untuk memastikan keseragaman tampilan visual. Kode ini memanfaatkan colorScheme.primary untuk menentukan warna pada AppBar dan tombol. Pengaturan tema secara global dapat dilakukan di MaterialApp melalui ThemeData untuk mengonfigurasi warna, tipografi, dan elemen visual lainnya.

Berikut adalah implementasi tema pada tugas ini:

```dart
// Latar belakang AppBar menggunakan warna utama dari skema warna aplikasi.
backgroundColor: Theme.of(context).colorScheme.primary,
```


## 5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
Navigasi dalam aplikasi dilakukan dengan menggunakan Navigator bersama MaterialPageRoute untuk berpindah antar layar. Drawer berfungsi sebagai menu navigasi samping. Fungsi Navigator.push() digunakan untuk membuka halaman baru, sementara Navigator.pushReplacement() menggantikan halaman yang sedang ditampilkan. Hal ini mempermudah pengguna untuk beralih antara halaman utama dan formulir penambahan item.

</details>


<details>
  <summary>Tugas 9</summary>

## 1. Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?
Membuat model untuk pengambilan atau pengiriman data JSON penting karena model membantu menyusun data JSON dalam format yang lebih terstruktur dan mudah dikelola, seperti objek. Ini juga memudahkan validasi dan manipulasi data, serta mengurangi kemungkinan kesalahan saat terjadi perubahan format data. Tanpa model, kita akan menangani data secara manual, yang bisa rentan terhadap error, lebih sulit untuk dipelihara, dan menambah kompleksitas kode.

## 2. Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini
Library HTTP digunakan dalam aplikasi Flutter untuk mengirimkan permintaan HTTP, seperti GET dan POST, ke server backend. Selain itu, library ini juga berfungsi untuk menerima respons dari server, termasuk mengurai data JSON yang diterima. Dengan demikian, HTTP bertindak sebagai penghubung antara aplikasi Flutter dan API backend, untuk menangani pertukaran data.

## 3. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
CookieRequest berfungsi untuk menyimpan cookie yang berisi status sesi pengguna, seperti autentikasi login. Cookie ini akan dikirim otomatis dengan setiap permintaan HTTP yang membutuhkan autentikasi. Agar semua bagian aplikasi dapat mengakses status sesi yang sama, instance CookieRequest perlu dibagikan ke seluruh komponen aplikasi, sehingga tidak perlu mengelola ulang sesi autentikasi di setiap komponen.

## 4. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
Mekanisme dimulai ketika pengguna memasukkan data melalui form di Flutter. Data tersebut kemudian dikirim ke backend menggunakan request HTTP, misalnya POST. Backend (Django) memproses data, menyimpannya ke database atau menghasilkan respons tertentu. Respons yang diberikan dalam format JSON kemudian diterima oleh Flutter, diproses, dan akhirnya ditampilkan pada antarmuka aplikasi.

## 5. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
Proses autentikasi dimulai saat pengguna memasukkan kredensial di Flutter. Data login dikirim melalui request POST ke Django, yang memverifikasi kredensial. Jika valid, Django mengirimkan cookie atau token sesi yang disimpan dalam CookieRequest. Pada proses registrasi, data dikirim ke Django untuk diverifikasi dan disimpan di database. Django kemudian mengonfirmasi keberhasilan pendaftaran ke Flutter. Saat logout, Flutter mengirimkan request untuk menghapus sesi atau token, dan Django memastikan proses logout berhasil. Setelah itu, Flutter menghapus sesi lokal dan mengarahkan pengguna kembali ke halaman login.

## 6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
Pertama, saya mengimplementasikan fitur registrasi akun di Django dengan membuat aplikasi bernama authentication dan menambahkan fungsi untuk memvalidasi input. Setelah itu, saya membuat file register.dart di Flutter yang berisi form registrasi, lalu menghubungkannya dengan endpoint Django menggunakan package pbp_django_auth.

Selanjutnya, saya membuat halaman login di Flutter dan menghubungkannya dengan Django untuk memverifikasi kredensial. CookieRequest digunakan untuk mengirimkan data login ke server. Saya juga mengatur middleware CORS di Django untuk mendukung komunikasi lintas domain dan menambahkan konfigurasi di Flutter untuk membagikan instance CookieRequest ke seluruh aplikasi menggunakan Provider.

Untuk model produk, saya membuat model di Django yang mencakup nama, harga, deskripsi, dan jumlah produk. Di Flutter, saya menggunakan Quicktype untuk membuat model Dart yang sesuai dengan format JSON dari Django.

Saya kemudian membuat halaman daftar item di Flutter menggunakan FutureBuilder untuk mengambil data produk dari endpoint Django. Data ditampilkan dalam widget ListView.builder. Saya pastikan data yang ditampilkan adalah milik pengguna yang sedang login.

Setelah itu, saya mengimplementasikan fitur logout di Django dan mengubah perilaku tombol logout di Flutter untuk mengarahkan pengguna kembali ke halaman login setelah logout.

Terakhir, saya mengintegrasikan form input dari Flutter dengan Django dengan membuat endpoint untuk menerima data dari Flutter dan menyimpannya ke dalam database Django.


</details>