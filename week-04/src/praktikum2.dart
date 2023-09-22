void main() {

  // var names1 = <String>{};
  // Set<String> names2 = {};
  // var names3 = {};
  //
  // print(names1);
  // print(names2);
  // print(names3);

  // perbaikan kode
  var names1 = <String>{};
  Set<String> names2 = {};

  // menambah data
  names1.add("Patria Anggara Suilo Putra");
  names1.add("2141720058");

  // menggunakan fungsi addAll() untuk menambahkan list collection
  names2.addAll(names1);

  Iterator<String> iterator = names2.iterator;
  while (iterator.moveNext()) {
    print("${iterator.current}");
  }

}
