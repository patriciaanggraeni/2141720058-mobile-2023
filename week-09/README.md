# Praktikum 9 - Manajemen Plugins

### Nama: Patria Anggara Susilo Putra
### No. Absen: 19
### Kelas: TI 3F

### ------------------------------------------------------------
<h3>Langkah 4</h3>

<p>Menginstal plugin lewat terminal</p>
<img src="docs/praktikum/langkah4/add_pub_with_terminal_command.png" style="width: 300px;"/>

<p>Atau langsung dicopas ke dalam file pubspec.yaml</p>
<img src="docs/praktikum/langkah4/add_plugin.png" style="width: 300px;"/>
<p>tanda ^ artinya versi tersebut tidak konstan dan bisa diupdate, jika ingin mendapatkan update terbaru, gunakan tanda ^ dan jika serasa sudah cukup stabil dengan versi saat ini, cukup hilangkan tanda ^.</p>

<p>setelah menambahkan plugin, bisa tekan tombol get pub di bilah atas</p>
<img src="docs/praktikum/langkah4/pub_get.png" style="width: 300px;"/>
<p>atau mengetiknya lewat terminal</p>
<img src="docs/praktikum/langkah4/run_pub_get.png" style="width: 300px;"/>

### ------------------------------------------------------------
<h3>Langkah 6</h3>
<p>Jika kamu ngebet banget pakai versi terbaru plugin tapi dari pihak yang mmepunyai plugin tersebut belum melakukan merge pada branch mainnya , bisa mneggunakan konfigurasi di bawah ini</p>
<img src="docs/praktikum/langkah6/pr.png" style="width: 300px;"/>

### ------------------------------------------------------------
<h3>Langkah 7</h3>
<p>1. Buat dulu project flutternya</p>

<p>2. habis itu tambahkan plugin yang pingin dipakai, di sini pakai plugin yang sebelumnya sudah diinstall</p>
<img src="docs/praktikum/langkah7/run_pub.png" style="width: 300px;"/>

<p>3. mengisi file widget baru dan menambahkan widget auto_size_text</p>
<img src="docs/praktikum/langkah7/code_one.png" style="width: 300px;"/>

<p>4. tambahkan widget di main.dart</p>
<img src="docs/praktikum/langkah7/code_two.png" style="width: 300px;"/>
<img src="docs/praktikum/langkah7/code_three.png" style="width: 300px;"/>

<p>5. hasilnya seperti berikut</p>
<img src="docs/praktikum/langkah7/result.jpg" style="width: 300px;"/>





### ------------------------------------------------------------
<h3>1. Jelaskan maksud dari langkah 2 pada praktikum tersebut!</h3>
<p>
    Praktikum 2 menjelaskan mengenai manfaat dan masalah dalam menggunakan plugins. misal ketika ingin membuat aplikasi skala besar, kita tidak ingin membuat source code kosongan dari awal, maka dar itu plugins berperan di sini. Plugins itu reuseable, dapat digunakan kembali, banyak orang yang menggunakannya jadi jika terjadi error akan lebih mudah mencarinya karena hal serupa dialami juga oleh yang yang menggunakan plugins tersebut, hal ini dipastikan memiliki versi plugin terbaru, meski begitu penggunaan plugins juga berakibat dalam membangun sebuah aplikasi, misalnya sulit untuk mendiagnosa bug dan ketika kita mengupdate plugin, kemungkinan penggunakan pada versi baru dengan sebelumnya berbeda.
</p>

<h3>2. Jelaskan maksud dari langkah 5 pada praktikum tersebut!</h3>
<ul>
    <li>methodCall</li>
    <p>
        Komunikasi antar host di flutter,  MethodChannel digunakan untuk mengirim pesan ke sisi platform dan menerima hasilnya. itu juga merupakan teknik peminsakan antar UI dan PLatform.
    </p>
    <li>CocoaPods</li>
    <p>
       Ini dikhususkan untuk mengunduh libary buat IOS, persis seperti gradle, CocoaPods merupakan dependency management, jika memerlukan kode native IOS, maka CocoaPosd akan mengunduh library yang revelan dan memasukkan ke dalam versi IOS.
    </p>
    <li>Gradle</li>
     <p>
        Merupakan build tools agar file proyek saling terintegrasi, untuk menkonfigurasi file proyek, bisa di file android/build.gradle (module level) dan android/app/build.gradle untuk project level, dan bisa mengatur permission di file AndroidManifest.xml
    </p>
</ul>

<h3>4. Jelaskan maksud dari tiap parameter yang ada di dalam plugin auto_size_text</h3>

1. Key
2. textKey: mengatur teks yang akan ditampilkan, inputan berupa string
3. style: memberikan style teks agar semakin menarik
4. minFontSize: merupakan nilai minimal dari font, jika font sudah berada pada ukuran minimal, maka ukurannya tidak akan bisa mengecil lagi (misal sudah terlalu banyak teks)
5. maxFontSize: merupakan nilai maksimal dari font, ukuran tidak akan berubah ketika melebihi batas maksimal ukuran font (misal minim teks tapi containernya lebar)
6. softWrap: jika teks terlau panjang, maka secara otomatis akan ditaruh di bawah (bukan membuat baris baru, tapi dilanjutkan dibawahnya)
7. wordWrap: jika teks sudah mencapai batas, maka akan otomatis dilanjutkan di bawahnya (baris baru)
8. maxLines: menentukan batas maksimal dari jumlah baris teks.