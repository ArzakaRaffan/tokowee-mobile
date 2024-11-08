# TOKOWEE 🏪
## We always do and do things for you! 📢

---

## Tugas 8 PBP 2024/2025

### Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
`const` dalam flutter berjalan secara konstan selama aplikasi berjalan, yang memiliki arti bahwa sebuah objek `const` tidak perlu dibuat ulang setiap kali build dilakukan oleh flutter. Keuntungan penggunaan `const` adalah aplikasi dapat mengalami peningkatan kinerja, pengurangan penggunaan memori karena `const` berjalan secara konstan. Kita dapat menggunakan `const` apabila berhadapan dengan widget-widget statis yang tidak akan berubah selama jalannya aplikasi, widget yang digunakan secara berulang, dan juga penggunaan konstanta. Namun, `const` sebaiknya jangan dipakai pada widget yang dinamis dimana widget tersebut memiliki properti yang berubah-ubah.

### Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
`column` digunakan untuk menyusun widget secara vertikal dari atas ke bawah. Sesuai namanya `column` akan mengatur objek sehingga berbentuk sebuah kolom. Sedangkan `Row`, digunakan untuk menyusun widget secara horizontal sehingga objek atau widget berbentuk baris.

Contoh penggunaan `Column`:
```
      home: Scaffold(
        appBar: AppBar(title: const Text('Contoh Column')),
        body: Column(
          children: const [
            Text('Item 1'),
            Text('Item 2'),
            Text('Item 3'),
          ],
        ),
      ),
```
Kode di atas memposisikan tulisan Item 1, Item 2, dan Item 3 dalam bentuk kolom dari atas ke bawah. Dimana 'Item 1' akan diposisikan paling atas dan 'Item 3' akan diposisikan paling bawah

Contoh penggunaan `Row`:
```
      home: Scaffold(
        appBar: AppBar(title: const Text('Contoh Row')),
        body: Row(
          children: const [
            Text('Item 1'),
            Text('Item 2'),
            Text('Item 3'),
          ],
        ),
      ),
```
Kode di atas memposisikan tulisan Item 1, Item 2, dan Item 3 dalam sebuah barisan kiri ke kanan. Dimana tulisan 'Item 1' akan berada di posisi paling kiri dan 'Item 3' akan berada di posisi paling kanan.

### Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
Elemen input yang saya gunakan pada halaman form saya adalah `TextFormField` dimana user akan memberikan sebuah input berbentuk text yang bisa berupa string maupun integer. Lalu elemen input lain yang saya gunakana adalah `ElevatedButton` yang berfungsi mengirimkan sinyal berupa data yang di-input oleh user. Terdapat beberapa elemen input lain dalam flutter yang saya tidak gunakan seperti `Checkbox`, `RadioButton`, `DropDownButton`, `Slider`, dan lain-lain.

### Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
Agar aplikasi konsisten dengan tema dan pewarnaan, pengaturan tema dilakukan pada file `main.dart` dalam widget `MaterialApp`:
```
    MaterialApp(
      title: 'TokoWee',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
       primarySwatch: Colors.blueGrey,
       ).copyWith(secondary: Colors.blueGrey[800]),
        scaffoldBackgroundColor: Colors.black,
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
```
Widget ini dapat digunakan pada seluruh file dalam project flutter dimana warna dari widget-widget yang mengaplikasikan `MaterialApp` ini dapat menggunakan atribut `MaterialApp`. Dalam project ini, pengaplikasian tema dapat dilakukan dengan memanggil:
```
  backgroundColor: Theme.of(context).colorScheme.primary,
```

sehingga warna latar belakang dari sebuah fitur dapat sama dengan yang diinginkan pada tema aplikasi.

### Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
Navigasi halaman pada aplikasi dapat dilakukan dengan berbagai cara. Beberapa cara navigasi yang saya tangani dalam aplikasi adalah dengan menggunakan beberapa method yakni `Navigator.pushReplacement()` yang memiliki fungsi menghapus route yang sedang ditampilkan dan menggantinya dengan route yang baru sehingga stack dari halaman menjadi hanya satu halaman, yakni halaman yang baru. Selanjutnya saya menggunakan `Navigator.push()` dimana fungsinya adalah menambahkan route baru di atas route lama sehingga jumlah stack menjadi dua. Terakhir, saya menggunakan `Navigator.pop()` yang fungsinya adalah menghapus route yang sedang ditampilkan dan menggantinya ke route sebelumnya di dalam stack.

## Archive Tugas 📖

## Tugas 7 PBP 2024/2025 🤖 📖

### - Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
Stateless Widget adalah widget yang tidak memiliki state atau kondisi yang bisa berubah saat aplikasi berjalan. Stateless Widget bentuknya statis, data di dalamnya juga statis dan tidak akan berubah kecuali kode bagaimana widget di-render diubah. Sementara stateful widget adalah adalah widget yang memiliki state atau kondisi yang dapat berubah saat aplikasi berjalan. Saat state berubah, widget akan merender ulang tampilannya agar mencerminkan perubahan tersebut. Perbedaannya terletak pada fungsionalitas masing-masing widget, stateless widget bagus digunakan untuk item-item statis seperti teks, ikon, gambar, dan lain-lain. Sementara stateful widget dapat digunakan pada teks yang dinamis, form input, animasi, dan lain-lain.

### - Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
Widget yang digunakan dalam project saya terdiri dari _built-in widget_ dan juga _custom widget_. Berikut adalah beberapa contoh _built in widget_ dalam project saya:
- `Scaffold`: Container utama dari sebuah _page_, dapat digunakan untuk menambahkan elemen-elemen lain.
- `AppBar`: Digunakan untuk menampilkan bagian atas aplikasi yang berisi judul, ikon, atau gambar.
- `Card`: Card digunakan pada header TokoWee agar background dari container Card terlihat seperti terangkat.
- `SnackBar`: Menampilkan notifikasi singkat di bagian bawah layar.

Lalu, berikut adalah _custom widget_ yang saya buat dalam project saya:
- `TokoWeeHeader`: Menampilkan header dengan nama toko (title) dan deskripsi (desc). Widget ini dibuat dengan menggunakan _built-in_ widget yakni `Card`.
- `ButtonCard`: Menampilkan setiap tombol dalam bentuk kartu yang warnanya berbeda.

### - Apa fungsi dari `setState()?` Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
`setState()` digunakan untuk menandakan bahwa data dari sebuah variabel dalam widget telah berubah. _method_ `setState()` ini hanya dapat berjalan di dalam `StatefulWidget` karena `StatefulWidget` punya kemampuan untuk menyimpan perubahan variabel.
Contoh penggunaan `setState()` pada default project flutter:

```
int counter = 0;

void incrementCounter() {
  setState(() {
    counter++; // Perubahan ini akan memicu pembaruan UI
  });
}
```
Berdasarkan kode di atas, setState() digunakan untuk mengubah variabel counter dimana setiap kali fungsi `incrementCounter()` dijalankan, flutter akan me-request kembali fungsi `build()` agar dijalankan sehingga tampilan bisa berubah. Variabel `counter` di atas jelas terdampak karena akan berubah setiap kali fungsi `incrementCounter()` dipanggil.

### - Jelaskan perbedaan antara `const` dengan `final`.
`const` adalah sebuah keyword dalam dart untuk menyatakan state sebuah variabel. Nilai dari variabel yang di-state oleh `const` harus sudah ditentukan pada saat _compile time_, bukan saat program berjalan. Sementara keyword `final`, nilai yang di-state ditentukan pada saat program berjalan. Namun, keduanya sama-sama _immutable_ dan tidak bisa diubah.

Contoh penggunaan:
```
const int pi = 3;
final String userName = getUserName();
```

Dapat dilihat, `const` sudah ditentukan dan tidak dapat diganti sejak awal program berjalan. Namun `final` terlihat kondisional berdasarkan username yang dimasukkan dan setelah method `getUserName()` dijalankan, variablenya menjadi _immutable_

### - Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.

#### 1. Membuat base app flutter dan merapikan proyek:
Instansiasi app flutter yang baru dengan menggunakan prompt `flutter create tokowee_mobile`, lalu dalam direktori `lib/` buat sebuah file dart baru, contohnya `menu.dart`. Lalu pindahkan beberapa class ke file baru tersebut agar proyek menjadi rapih dan terpisah. Jangan lupa untuk hilangkan parameter title dan ubah juga menjadi `StatelessWidget`

#### 2. Buat tiga buah tombol sederhana dengan ikon, teks dan warna yang berbeda. Serta Implementasikan `SnackBar` dengan tulisan yang berbeda-beda:
Buat sebuah class sederhana yang menyatakan sebuah button dengan beberapa atributnya seperti nama, icon, dan warna (ditambahkan atribut warna agar per-_button_ dapat berbeda warna:
```
class HomeButtons {
  final String name;
  final IconData icon;
  final Color color;

  HomeButtons(this.name, this.icon, this.color);
}
```
Lalu sambungkan class HomeButton dengan sebuah class yang meng-_extends_ `StatelessWidget` dimana class tersebut mengatur penampilan `SnackBar` dan juga penempatan string, icon, dll.

Terakhir, tampilkan buttons yang sudah dibuat dalam class `MyHomePage`, tepatnya di dalam Widget Build di body dengan memanfaatkan fungsi `map` agar bisa menambahkan class class `HomeButtons` ke dalam sebuah list.

