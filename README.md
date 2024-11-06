# UMKaMi Mobile

**Dibuat Oleh : Oscar Ryanda Putra / 2306217765 / Kelas F**

**Link Repository : https://github.com/oscarryanda/umkami-mobile***

## Tugas 7

### 1) Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.

Dalam flutter terdapat dua jenis widget yaitu Stateless Widget dan Stateful Widget. Masing-masing widget tersebut memiliki karakteristik dan fungsi yang berbeda berdasarkan kondisi state yang berubah atau tidak. Berikut penjelasannya :

#### 1. **StatelessWidget**

- **StatelessWidget** adalah widget yang tidak memiliki keadaan internal yang dapat berubah. Artinya, setelah widget ini dirender, widget tersebut akan tetap sama kecuali dirender ulang secara manual oleh aplikasi. 

- **StatelessWidget** cocok untuk elemen UI yang statis, seperti teks, ikon, atau tombol yang hanya menampilkan data dan tidak mengalami perubahan status (state).

Contoh :
```dart
import 'package:flutter/material.dart';

class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Ini adalah stateless widget yang hanya menampilkan teks.',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
```
#### 2. **StatefulWidget**

**StatefulWidget** adalah widget yang memiliki keadaan internal (state) yang dapat berubah. **StatefulWidget** terdiri dari dua bagian:

-   **StatefulWidget class**: Bagian yang mewakili struktur dari widget itu sendiri.

-   **State class**: Bagian yang menangani dan menyimpan state dari widget, yang memungkinkan tampilan widget diperbarui ketika ada perubahan.

Widget ini cocok untuk elemen UI yang dapat berubah-ubah, seperti form input, slider, atau tombol yang merespons aksi pengguna dan memerlukan pembaruan tampilan setiap kali state berubah.

Contoh :
```dart
import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int counter = 0;

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Counter: $counter',
            style: TextStyle(fontSize: 24),
          ),
          ElevatedButton(
            onPressed: _incrementCounter,
            child: Text('Increment'),
          ),
        ],
      ),
    );
  }
}
```

Pada contoh di atas, **StatefulWidget** digunakan karena nilai `counter` berubah setiap kali tombol ditekan. Fungsi `setState` memberitahu Flutter untuk merender ulang UI dan memperbarui tampilan nilai `counter`.

### 2) Sebutkan _widget_ apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.

Dalam proyek ini, saya menggunakan beberapa widget utk membangun tampilan aplikasi saya. Beberapa ada yang secara default disediakan oleh flutter ada juga yang saya buat sendiri. 

*Berikut adalah widget default yang digunakan :*

#### 1. **MaterialApp**

-   **Fungsi**: `MaterialApp` adalah widget utama yang menyatukan seluruh aplikasi Flutter. Ini memberikan struktur dasar aplikasi dan mengatur tema, title, serta halaman awal.

-   **Penjelasan**: Mengatur tema aplikasi (`theme`) dengan warna utama dan sekunder, serta mengatur halaman awal aplikasi (`home`), yaitu `MyHomePage`.

#### 2. **Scaffold**

-   **Fungsi**: `Scaffold` adalah widget yang menyediakan struktur dasar halaman aplikasi, termasuk `AppBar` (judul aplikasi di bagian atas), `body` (isi utama halaman), dan fitur tambahan lainnya seperti `drawer` atau `floatingActionButton`.

-   **Penjelasan**: Digunakan dalam `MyHomePage` untuk membangun struktur halaman dengan `AppBar` dan `body` yang berisi konten utama.

#### 3. **AppBar**

-   **Fungsi**: `AppBar` adalah widget yang berfungsi sebagai navbar atas aplikasi. Biasanya digunakan untuk menampilkan judul dan tindakan penting di bagian atas halaman.

-   **Penjelasan**: Digunakan untuk menampilkan judul "UMKaMi" dengan gaya teks yang tebal dan warna latar belakang sesuai tema utama aplikasi.

#### 4. **Padding**

-   **Fungsi**: `Padding` digunakan untuk memberikan jarak (ruang) di sekitar widget.

-   **Penjelasan**: Digunakan di `MyHomePage` untuk memberikan ruang di sekitar widget utama dalam `body`, dan juga untuk jarak antara teks dan ikon dalam berbagai widget.

#### 5. **Column**

-   **Fungsi**: `Column` adalah widget yang menyusun widget anaknya secara vertikal.

-   **Penjelasan**: Digunakan dalam `MyHomePage` untuk menyusun widget `Row`, teks sambutan, dan `GridView` secara vertikal.

#### 6. **Row**

-   **Fungsi**: `Row` adalah widget yang menyusun widget anaknya secara horizontal.

-   **Penjelasan**: Digunakan untuk menampilkan `InfoCard` (berisi NPM, Name, dan Class) secara horizontal agar tampil dalam satu baris.

#### 7. **Text**

-   **Fungsi**: `Text` adalah widget untuk menampilkan teks pada layar.

-   **Penjelasan**: Digunakan di berbagai tempat untuk menampilkan teks statis seperti judul, informasi, dan nama tombol pada setiap item dalam grid.

#### 8. **GridView.count**

-   **Fungsi**: `GridView.count` adalah widget untuk menampilkan anak-anaknya dalam tata letak grid yang memiliki jumlah kolom yang ditentukan.

-   **Penjelasan**: Digunakan untuk menampilkan tombol `ItemCard` dalam grid 3 kolom, menampilkan opsi seperti "Lihat Daftar Produk," "Tambah Produk," dan "Logout".

#### 9. **Card**

-   **Fungsi**: `Card` adalah widget yang memberikan efek kartu pada widget yang ada di dalamnya, biasanya dengan sudut yang sedikit melengkung dan efek bayangan.

-   **Penjelasan**: Digunakan dalam `InfoCard` untuk menampilkan informasi seperti NPM, Nama, dan Kelas dalam tampilan kartu yang terpisah.

#### 10. **Container**

-   **Fungsi**: `Container` adalah widget serbaguna yang dapat digunakan untuk memberi batas, margin, padding, ukuran, dan dekorasi pada widget anak di dalamnya.

-   **Penjelasan**: Digunakan untuk menampung teks dan ikon dalam `InfoCard` serta dalam `ItemCard` untuk mengatur ukuran dan tata letak kontennya.

#### 11. **Icon**

-   **Fungsi**: `Icon` adalah widget untuk menampilkan ikon pada layar.

-   **Penjelasan**: Digunakan untuk menampilkan ikon tertentu pada setiap item di `ItemCard` sesuai dengan nama itemnya, seperti `Icons.list`, `Icons.add`, dan `Icons.logout`.

#### 12. **InkWell**

-   **Fungsi**: `InkWell` adalah widget yang menambahkan efek klik atau sentuhan pada widget anak yang dibungkusnya.

-   **Penjelasan**: Digunakan dalam `ItemCard` untuk menambahkan aksi ketika kartu ditekan, seperti menampilkan pesan `SnackBar` dengan teks sesuai nama item yang ditekan.

#### 13. **SnackBar**

-   **Fungsi**: `SnackBar` adalah widget yang menampilkan pesan singkat di bagian bawah layar.

-   **Penjelasan**: Digunakan dalam `InkWell` untuk menampilkan pesan yang menunjukkan item yang ditekan oleh pengguna, seperti "Kamu telah menekan tombol Lihat Daftar Produk!"

#### 14. **Material**

-   **Fungsi**: `Material` adalah widget dasar untuk tampilan material design yang memungkinkan penerapan efek ripple dan dekorasi dasar.

-   **Penjelasan**: Digunakan di `ItemCard` untuk memberikan efek material pada setiap tombol, seperti latar belakang dengan warna tertentu berdasarkan nama item (misalnya, hijau untuk "Lihat Daftar Produk").

#### 15. **MediaQuery**

-   **Fungsi**: `MediaQuery` adalah widget untuk mendapatkan informasi tentang ukuran dan orientasi layar perangkat.

-   **Penjelasan**: Digunakan di `InfoCard` untuk mengatur lebar kartu secara dinamis berdasarkan lebar layar perangkat (`MediaQuery.of(context).size.width`), membuat desain responsif.

#### 16. **StatelessWidget**

-   **Fungsi**: `StatelessWidget` adalah widget yang tidak memiliki state dan hanya digunakan untuk menampilkan data statis yang tidak berubah.

-   **Penjelasan**: Digunakan di `MyApp`, `MyHomePage`, `InfoCard`, dan `ItemCard` karena widget ini tidak memerlukan perubahan state selama masa hidupnya.

*Berikut adalah widget yang dibuat sendiri :*
#### 1. **InfoCard**

-   **Fungsi**: `InfoCard` adalah widget kustom yang digunakan untuk menampilkan informasi statis seperti NPM, Nama, dan Kelas.

-   **Penjelasan**: Widget ini terdiri dari sebuah `Card` yang menampilkan dua teks, `title` dan `content`, yang disusun dalam bentuk vertikal. `InfoCard` tidak bergantung pada widget bawaan tertentu untuk menampilkan informasi, sehingga menjadikannya widget khusus yang dapat digunakan kembali di bagian lain aplikasi.

#### 2. **ItemCard**

-   **Fungsi**: `ItemCard` adalah widget kustom yang digunakan untuk menampilkan satu item dalam bentuk kartu, dengan ikon dan nama item yang berasal dari objek `ItemHomepage`. Ini juga menangani aksi ketika kartu ditekan.

-   **Penjelasan**: `ItemCard` menerima objek `ItemHomepage` dan menampilkan `name` dan `icon` dalam bentuk ikon dan teks dengan warna yang ditentukan berdasarkan nama item. Selain itu, `ItemCard` menggunakan `InkWell` untuk menambahkan aksi klik yang akan menampilkan `SnackBar`.

### 3) Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

Fungsi `setState()` dalam Flutter memiliki peran penting dalam memperbarui tampilan antarmuka pengguna (UI) dari aplikasi yang menggunakan **Stateful Widget**. Berikut adalah penjelasan lengkap mengenai fungsi `setState()` dan variabel yang dapat terdampak olehnya:

#### Fungsi `setState()`

`setState()` adalah fungsi yang digunakan dalam **Stateful Widget** untuk memberi tahu Flutter bahwa ada perubahan pada state (keadaan) aplikasi yang memerlukan pembaruan UI. Saat `setState()` dipanggil, Flutter akan merender ulang bagian dari UI yang bergantung pada state yang telah berubah. Ini berarti `build` akan dipanggil lagi, dan UI diperbarui untuk mencerminkan state yang terbaru.

#### Cara Kerja:

Ketika `setState()` dipanggil, Flutter akan:

1.  Menjalankan fungsi yang ada di dalam `setState()` untuk memperbarui nilai variabel atau properti yang disimpan dalam objek `State`.
2.  Menandai bagian UI terkait untuk dirender ulang berdasarkan perubahan tersebut.
3.  Menjalankan kembali metode `build()` pada widget `StatefulWidget` untuk menerapkan pembaruan tersebut.

#### Kapan `setState()` Digunakan:

-   `setState()` digunakan setiap kali ada perubahan state yang ingin Anda tampilkan di UI. Misalnya, jika Anda memiliki tombol untuk meningkatkan nilai counter, Anda akan memanggil `setState()` untuk memperbarui nilai counter dan memperbarui tampilan UI dengan nilai counter terbaru.

-   `setState()` hanya boleh digunakan dalam **State class** dari **Stateful Widget** dan tidak boleh digunakan dalam **Stateless Widget**, karena **Stateless Widget** tidak memiliki state yang bisa berubah.

#### Variabel yang Dapat Terdampak oleh `setState()`

Setiap variabel atau objek yang didefinisikan dalam **State class** dari widget **Stateful Widget** dan yang digunakan dalam metode `build()` dapat terdampak oleh `setState()`. Berikut adalah beberapa jenis variabel yang sering terdampak oleh `setState()`:

1.  **Variabel Primitif** (seperti `int`, `double`, `bool`):
    
    -   Misalnya, `int counter = 0;`. Jika variabel ini diperbarui dalam `setState()`, Flutter akan merender ulang UI yang bergantung pada variabel tersebut.
    
2.  **Variabel Koleksi** (seperti `List`, `Map`, atau `Set`):
    
    -   Misalnya, `List<String> items = [];`. Jika elemen dalam list ini ditambahkan, dihapus, atau diubah, Anda dapat memanggil `setState()` untuk memperbarui tampilan yang menampilkan daftar tersebut.
    
3.  **Objek Custom** (seperti kelas yang dibuat sendiri):
    
    -   Misalnya, Anda memiliki kelas `User` dengan atribut `name` dan `age`. Jika Anda memiliki objek `User` sebagai bagian dari state dan memperbarui atributnya, Anda harus memanggil `setState()` agar perubahan terlihat di UI.
    
4. **Variabel yang Menggambarkan Status UI**:

-   Misalnya, variabel `bool isLoading = false;` untuk menunjukkan status loading. Anda dapat memperbarui variabel ini di dalam `setState()` untuk menampilkan indikator loading atau menyesuaikan UI.

#### Hal yang Perlu Diperhatikan dalam Penggunaan `setState()`

-   **Efisiensi**: Jangan memanggil `setState()` secara berlebihan karena setiap pemanggilan akan menyebabkan `build()` dipanggil ulang, yang bisa berdampak pada performa.

-   **Pembatasan Lingkup**: Gunakan `setState()` hanya untuk memperbarui variabel yang benar-benar diperlukan dalam metode `build()` agar efisien.

-   **Asynchronous State Update**: Jika memperbarui state secara asynchronous (misalnya, mengambil data dari API), pastikan widget masih dipasang (`mounted`) sebelum memanggil `setState()` untuk menghindari kesalahan.

### 4) Jelaskan perbedaan antara `const` dengan `final`.

Dalam Dart, kata kunci `const` dan `final` digunakan untuk membuat variabel dengan nilai tetap (immutable), namun keduanya memiliki perbedaan dalam cara kerjanya dan kapan mereka digunakan. Berikut adalah penjelasan detail mengenai perbedaan `const` dan `final`:

#### 1. **Kata Kunci `final`**

-   **Definisi**: `final` digunakan untuk variabel yang nilainya ditetapkan hanya satu kali, saat runtime. Setelah nilai diinisialisasi, nilainya tidak dapat diubah, tetapi proses inisialisasinya bisa terjadi saat aplikasi berjalan.

-   **Kapan Nilai Ditentukan**: Nilai untuk variabel `final` bisa ditentukan saat runtime. Ini berarti Anda bisa menetapkan nilai berdasarkan perhitungan atau kondisi yang tidak diketahui sebelum aplikasi berjalan.

-   **Mutable vs. Immutable**: Meskipun variabel `final` tidak dapat diubah (immutable), objek yang diacu oleh variabel `final` bisa saja mutable jika tipe objeknya mutable. Misalnya, sebuah list yang diacu oleh `final` bisa memiliki elemen yang dimodifikasi, tetapi Anda tidak bisa mengubah referensi list-nya

#### 2. **Kata Kunci `const`**

-   **Definisi**: `const` digunakan untuk variabel yang bersifat compile-time constant, artinya nilai variabel tersebut harus sudah diketahui pada saat kompilasi, bukan saat runtime.

-   **Kapan Nilai Ditentukan**: Nilai variabel `const` harus diinisialisasi dengan nilai konstan yang diketahui saat kompilasi. Ini berarti `const` hanya bisa digunakan dengan nilai yang benar-benar tidak berubah sepanjang waktu dan dapat dievaluasi pada saat kompilasi.

-   **Kedalaman Immutability**: Variabel `const` bersifat immutable hingga kedalaman objeknya. Jadi, jika Anda memiliki list `const`, elemen di dalamnya juga tidak dapat dimodifikasi, menjadikan `const` lebih ketat dibandingkan `final`.


### 5) Jelaskan bagaimana cara kamu mengimplementasikan _checklist-checklist_ di atas.

##### Check 1 : Membuat sebuah program Flutter baru dengan tema _E-Commerce_ yang sesuai dengan tugas-tugas sebelumnya.

1. Saya membuat folder baru di komputer saya untuk menyimpan proyek flutter saya.
2. Kemudian, buka termina di folder tersebut dan saya generate proyek flutter baru pada terminal dengan nama UMKaMi. Berikut command nya :
```bash
flutter create umkami
cd umkami
```
3. Saya jalankan proyek tersebut di terminal dengan command sebagai berikut :
``` bash
flutter run
```
4. Agar proyek saya lebih rapih, maka saya perlu melakukan perubahan pada proyek saya. Saya perlu membuat file baru yaitu `menu.dart` pada direktori `umkami/lib` dan kemudian saya isikan dengan kode berikut :
```dart
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  final String npm = '2306245775'; // NPM
  final String name = 'Jeremia Rangga Setyawan'; // Nama
  final String className = 'PBP B'; // Kelas

  final List<ItemHomepage> items = [
    ItemHomepage("Lihat Daftar Produk", Icons.list),
    ItemHomepage("Tambah Produk", Icons.add),
    ItemHomepage("Logout", Icons.logout),
  ];

  @override
  Widget build(BuildContext context) {
    // Scaffold menyediakan struktur dasar halaman dengan AppBar dan body.
    return Scaffold(
      // AppBar adalah bagian atas halaman yang menampilkan judul.
      appBar: AppBar(
        // Judul aplikasi "Mental Health Tracker" dengan teks putih dan tebal.
        title: const Text(
          'UMKaMi',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        // Warna latar belakang AppBar diambil dari skema warna tema aplikasi.
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      // Body halaman dengan padding di sekelilingnya.
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        // Menyusun widget secara vertikal dalam sebuah kolom.
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Row untuk menampilkan 3 InfoCard secara horizontal.
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCard(title: 'NPM', content: npm),
                InfoCard(title: 'Name', content: name),
                InfoCard(title: 'Class', content: className),
              ],
            ),

            // Memberikan jarak vertikal 16 unit.
            const SizedBox(height: 16.0),

            // Menempatkan widget berikutnya di tengah halaman.
            Center(
              child: Column(
                // Menyusun teks dan grid item secara vertikal.

                children: [
                  // Menampilkan teks sambutan dengan gaya tebal dan ukuran 18.
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text(
                      'Welcome to UMKaMi',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),

                  // Grid untuk menampilkan ItemCard dalam bentuk grid 3 kolom.
                  GridView.count(
                    primary: true,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    // Agar grid menyesuaikan tinggi kontennya.
                    shrinkWrap: true,

                    // Menampilkan ItemCard untuk setiap item dalam list items.
                    children: items.map((ItemHomepage item) {
                      return ItemCard(item);
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  // Kartu informasi yang menampilkan title dan content.

  final String title; // Judul kartu.
  final String content; // Isi kartu.

  const InfoCard({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      // Membuat kotak kartu dengan bayangan dibawahnya.
      elevation: 2.0,
      child: Container(
        // Mengatur ukuran dan jarak di dalam kartu.
        width: MediaQuery.of(context).size.width /
            3.5, // menyesuaikan dengan lebar device yang digunakan.
        padding: const EdgeInsets.all(16.0),
        // Menyusun title dan content secara vertikal.
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(content),
          ],
        ),
      ),
    );
  }
}
```
5. Saya juga perlu mengubah `main.dart` saya di direktori yang sama dengan kode sebagai berikut :
```dart
import 'package:umkami/menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF6A0DAD), 
          secondary: const Color(0xFF9B30FF),
        ),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}
```

##### Check 2 : Membuat tiga tombol sederhana dengan ikon dan teks untuk melihat daftar produk, menambah produk dan logout.

6. Sebelum saya membuat tombol, saya perlu membuat class baru bernama `ItemHomepage` yang berisi atribut-atribur dari card seperti name dan icon. Pada file `menu.dart`, letakkan kode berikut di luar class `MyHomePage` yang sudah ada. 
```dart
 ...
 class ItemHomepage {
     final String name;
     final IconData icon;

     ItemHomepage(this.name, this.icon);
 }
 ...
```

7. Kemudian, saya perlu membuat list of `ItemHomepage` yang berisi ketiga tombol yang diminta. Berikut kodenya :
```dart
 class MyHomePage extends StatelessWidget {  
     ...
     final List<ItemHomepage> items = [
         ItemHomepage("Lihat Daftar Produk", Icons.list),
         ItemHomepage("Tambah Produk", Icons.add),
         ItemHomepage("Logout", Icons.logout),
     ];
     ...
 }
```

8. Saya perlu membuat class baru bernama `ItemCard` untuk menampilkan tombol tadi.
```dart
...
class ItemCard extends StatelessWidget {
  // Menampilkan kartu dengan ikon dan nama.

  final ItemHomepage item; 
  
  const ItemCard(this.item, {super.key}); 

  @override
  Widget build(BuildContext context) {
    return Material(
      // Menentukan warna latar belakang dari tema aplikasi.
      color: Theme.of(context).colorScheme.secondary,
      // Membuat sudut kartu melengkung.
      borderRadius: BorderRadius.circular(12),
     
        // Container untuk menyimpan Icon dan Text
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              // Menyusun ikon dan teks di tengah kartu.
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  
}
...
```

9. Saya juga perlu mengintegrasikan ItemCard tadi untuk ditampilkan di MyHomePage. Berikut kode nya :
```dart
...
class MyHomePage extends StatelessWidget {
  ...  

  @override
  Widget build(BuildContext context) {
    // Scaffold menyediakan struktur dasar halaman dengan AppBar dan body.
    return Scaffold(
      // AppBar adalah bagian atas halaman yang menampilkan judul.
      appBar: AppBar(
        title: const Text(
          'UMKaMi',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        // Warna latar belakang AppBar diambil dari skema warna tema aplikasi.
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      // Body halaman dengan padding di sekelilingnya.
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        // Menyusun widget secara vertikal dalam sebuah kolom.
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Row untuk menampilkan 3 InfoCard secara horizontal.
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCard(title: 'NPM', content: npm),
                InfoCard(title: 'Name', content: name),
                InfoCard(title: 'Class', content: className),
              ],
            ),

            // Memberikan jarak vertikal 16 unit.
            const SizedBox(height: 16.0),

            // Menempatkan widget berikutnya di tengah halaman.
            Center(
              child: Column(
                // Menyusun teks dan grid item secara vertikal.

                children: [
                  // Menampilkan teks sambutan dengan gaya tebal dan ukuran 18.
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text(
                      'Welcome to UMKaMi',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),

                  // Grid untuk menampilkan ItemCard dalam bentuk grid 3 kolom.
                  GridView.count(
                    primary: true,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    // Agar grid menyesuaikan tinggi kontennya.
                    shrinkWrap: true,

                    // Menampilkan ItemCard untuk setiap item dalam list items.
                    children: items.map((ItemHomepage item) {
                      return ItemCard(item);
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
...
``` 

##### Check 3 : Memunculkan `Snackbar` saat tombol ditekan.

10. Untuk menampilkan snackbar saat tombol ditekan, maka saya perlu melakukan perubahan di class `ItemCard`. Berikut perubahannya :
```dart
...
class ItemCard extends StatelessWidget {
  // Menampilkan kartu dengan ikon dan nama.

  final ItemHomepage item; 
  
  const ItemCard(this.item, {super.key}); 

  @override
  Widget build(BuildContext context) {
    return Material(
      // Menentukan warna latar belakang dari tema aplikasi.
      color: Theme.of(context).colorScheme.secondary,
      // Membuat sudut kartu melengkung.
      borderRadius: BorderRadius.circular(12),
      // PERUBAHAN : MENAMPILKAN SNACKBAR
      child: InkWell(
        // Aksi ketika kartu ditekan.
        onTap: () {
          // Menampilkan pesan SnackBar saat kartu ditekan.
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"))
            );
        },
        // SELESAI PERUBAHAN
        // Container untuk menyimpan Icon dan Text
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              // Menyusun ikon dan teks di tengah kartu.
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  
}
...
```

##### Check 4 : Mengimplementasikan warna-warna yang berbeda untuk setiap tombol (`Lihat Daftar Produk`, `Tambah Produk`, dan `Logout`).

11. Agar setiap tombol memiliki warna yang berbeda, maka saya perlu menambah atribut dan parameter baru di class `ItemHomepage` sebagai berikut :
```dart
...
class ItemHomepage {
  final String name;
  final IconData icon;
  final Color color; // Atribut baru

  ItemHomepage(this.name, this.icon, this.color); // Parameter baru
}
...
```

12. Kemudian, saya perlu mengganti isi warna dari `ItemCard` dengan atribut color tersebut. Berikut perubahan kodenya :
```dart
...
class ItemCard extends StatelessWidget {
  final ItemHomepage item;

  const ItemCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: item.color, // Warna tombol berdasarkan item
      borderRadius: BorderRadius.circular(12),
      ...
```

13. Sekarang, saya perlu menambahkan parameter warna saat saya memanggil class `ItemHompage` di class `MyHomePage`. Berikut perubahan kodenya :
```dart
...
  final List<ItemHomepage> items = [
    ItemHomepage("Lihat Daftar Produk", Icons.list, Colors.lightGreen), // Menambahkan warna hijau
    ItemHomepage("Tambah Produk", Icons.add, Colors.lightBlue), // Menambahkan warna biru
    ItemHomepage("Logout", Icons.logout, Colors.orange), // Menambahkan warna oren
  ];
 ...
```
14. Selesai, saya sudah mengimplementasikan seluruh checklist yang diminta.

Sekian & Terima Kasih