## Nama: Patria Anggara Susilo Putra
## NIM : 2141720058
## Kelas: 3F

### Praktikum 1

1. Mengganti title dengan nama panggilan.
!["demo_praktikum_satu](docs/images/praktikum1/soal/soal1.png)

2. Carilah judul buku favorit Anda di Google Books, lalu ganti ID buku pada variabel path di kode tersebut.
!["demo_praktikum_satu](docs/images/praktikum1/soal/soal2.png)

3. Maksud kode **subString** dan **catchError**.
   - subString: mengambil jumlah karakter string dari range tertentu, di sini dari karaketer ke-0 sampai karakter ke-450.
   - catchError: jika terjadi error saat menekan tombol GO, maka block catchError akan dieksekusi dan menampilkan pesan "An error Accurred".

!["demo_praktikum_satu](docs/images/praktikum1/soal/demo.gif)

## Praktikum 2

4. Jelaskan maksud kode langkah 1 dan 2 pada praktikum 2!
   -  Langkah 1: membuat tiga fungsi Future, sama-sama mempunyai delay 3 detik, jadi setelah delay 3 detik, fungsi berikutnya akan dieksekusi dan seterusnya.
   - Langkah 2: mengisi nilai total dengan memanggil fungsi pertama, maka nilai total menjadi 1. setelah 3 detik, fungsi kedua akan dipanggil, total menjadi 3. setalah 3 detik, fungsi ketiga akan dipanggil, total menjadi 6 dan total running program menjadi 9 detik.

!["demo_praktikum_dua](docs/images/praktikum2/soal/demo.gif)

# Praktikum 3

5. Jelaskan maksud kode langkah 2 tersebut!
   Completer merupakan kelas yang digunakan untuk membuat Future, fungsi getNumber() mengembalikan sebuah Future. Completer digunakan untuk menghubungkan Future dengan operasi asinkronus yang tidak memberikan Future secara langsung. Fungsi calculate() menunggu selama 5 detik sebelum menyelesaikan completer dengan nilai 42.

!["demo_praktikum_tiga](docs/images/praktikum3/soal/demo_1.gif)
