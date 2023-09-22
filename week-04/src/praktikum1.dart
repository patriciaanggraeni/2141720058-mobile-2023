void main() {

  // var list = [1, 2, 3];
  // assert(list.length == 3);
  // assert(list[1] == 2);
  // print(list.length);
  // print(list[1]);
  //
  // list[1] = 1;
  // assert(list[1] == 1);
  // print(list[1]);

  final list = List<String?>.filled(5, null);
  list[1] = "Patria Anggara Susilo Putra";
  list[2] = "2141720058";

  print("Nama: ${list[1]}");
  print("NIM : ${list[2]}");

}
