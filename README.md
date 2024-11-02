# TOKOWEE 🏪
## We always do and do things for you!

## Tugas 7 PBP 2024/2025

### Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
Stateless Widget adalah widget yang tidak memiliki state atau kondisi yang bisa berubah saat aplikasi berjalan. Stateless Widget bentuknya statis, data di dalamnya juga statis dan tidak akan berubah kecuali kode bagaimana widget di-render diubah. Sementara stateful widget adalah adalah widget yang memiliki state atau kondisi yang dapat berubah saat aplikasi berjalan. Saat state berubah, widget akan merender ulang tampilannya agar mencerminkan perubahan tersebut. Perbedaannya terletak pada fungsionalitas masing-masing widget, stateless widget bagus digunakan untuk item-item statis seperti teks, ikon, gambar, dan lain-lain. Sementara stateful widget dapat digunakan pada teks yang dinamis, form input, animasi, dan lain-lain.

### Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
Widget yang digunakan dalam project saya terdiri dari _built-in widget_ dan juga _custom widget_. Berikut adalah beberapa contoh _built in widget_ dalam project saya:
- `Scaffold`: Container utama dari sebuah _page_, dapat digunakan untuk menambahkan elemen-elemen lain.
- `AppBar`: Digunakan untuk menampilkan bagian atas aplikasi yang berisi judul, ikon, atau gambar.
- `Card`: Card digunakan pada header TokoWee agar background dari container Card terlihat seperti terangkat.
- `SnackBar`: Menampilkan notifikasi singkat di bagian bawah layar.

Lalu, berikut adalah _custom widget_ yang saya buat dalam project saya:
- `TokoWeeHeader`: Menampilkan header dengan nama toko (title) dan deskripsi (desc). Widget ini dibuat dengan menggunakan _built-in_ widget yakni `Card`.
- `ButtonCard`: Menampilkan setiap tombol dalam bentuk kartu yang warnanya berbeda.

### Apa fungsi dari `setState()?` Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
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

### Jelaskan perbedaan antara const dengan final.
`const` adalah sebuah keyword dalam dart untuk menyatakan state sebuah variabel. Nilai dari variabel yang di-state oleh `const` harus sudah ditentukan pada saat _compile time_, bukan saat program berjalan. Sementara keyword `final`, nilai yang di-state ditentukan pada saat program berjalan. Namun, keduanya sama-sama _immutable_ dan tidak bisa diubah.

Contoh penggunaan:
```
const int pi = 3;
final String userName = getUserName();
```

Dapat dilihat, `const` sudah ditentukan dan tidak dapat diganti sejak awal program berjalan. Namun `final` terlihat kondisional berdasarkan username yang dimasukkan dan setelah method `getUserName()` dijalankan, variablenya menjadi _immutable_

### Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.

#### 1. Membuat base app flutter dan merapikan proyek
Instansiasi app flutter yang baru dengan menggunakan prompt `flutter create tokowee_mobile`, lalu dalam direktori `lib/` buat sebuah file dart baru, contohnya `menu.dart`. Lalu pindahkan beberapa class ke file baru tersebut agar proyek menjadi rapih dan terpisah. Jangan lupa untuk hilangkan parameter title dan ubah juga menjadi `StatelessWidget`

#### 2. Buat tiga buah tombol sederhana dengan ikon dan teks
