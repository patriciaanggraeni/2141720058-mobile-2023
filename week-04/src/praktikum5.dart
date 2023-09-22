void main() {

  var record = ('first', a: 2, b: true, 'last');
  print(record);

  (int, int) tukar((int, int) record) {
    var (a, b) = record;
    return (b, a);
  }

  var result = tukar((1,9));
  print(result);

  (String, int) mahasiswa;
  mahasiswa = ('Patria Anggara Susilo Putra', 2141720058);
  var (nama, nim) = mahasiswa;
  print("Nama : $nama\nNIM  : $nim");

  var mahasiswa2 = ('first', a: 2, b: true, 'last');

  print(mahasiswa2.$1);
  print(mahasiswa2.a);
  print(mahasiswa2.b);
  print(mahasiswa2.$2);

  var mahasiswa3 = (
    'first',
    nama: 'Patria Anggara Susilo Putra',
    nim: '2141720058',
    'last'
  );

  print("\n");
  print("Nama : ${mahasiswa3.nama}");
  print("NIM  : ${mahasiswa3.nim}");

}
