void main() {

  final int n = 201;

  for (int i = 0; i <= n; i++) {
    int count = 0;

    for (int j = 1; j <= i; j++) {
      if (i % j == 0) {
        count += 1;
      }
    }

    if (count == 2) {
      print("Bilangan Prima: $i");
      print("Nama : Patria Anggara Susilo Putra");
      print("NIM  : 2141720058\n");
    }
  }
}
