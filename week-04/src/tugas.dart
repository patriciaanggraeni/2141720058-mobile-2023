void main() {
  // --------------- Jawaban Nomor 3
  // menggunakan positional parameter
  positionalParam("Angga", 15);

  // menggunakan named parameter
  namedParam(nama: "Angga", umur: 17);

  // menggunakan required parameter
  requiredParam(name: "Angga", age: 15);

  // menggunakan optional parameter
  optionalParam("Angga");

  // menggunakan default parameter
  defaultParam("Angga");

  // --------------- Jawaban Nomor 4
  // Fungsi dapat menerima input parameter
  inputParam("Angga");

  // Fungsi dapat mengembalikan nilai
  int result = plus(14, 11);
  print(result);

  // Fungsi dapat mereturn fungsi lain
  var number = multiply(10);
  var resultTwo = number(2);
  print(resultTwo);

  // ------------------------- Jawaban Nomor 5
  var inputSometing = (x) {
    print("Your Input: $x");
  };
  inputSometing(10);
}

// ------------------------- Jawaban Nomor 3
// 1: Positional Parameter
void positionalParam(String nama, int umur) {
  print("nama: $nama, umur: $umur");
}

// 2: Named Parameter
void namedParam({String? nama, int? umur}) {
  print("nama: $nama, umur: $umur");
}

// 3: Required Paramater
void requiredParam({required String name, int? age}) {
  print("Name: $name, Age: $age");
}

// 4: Optional Parameter
void optionalParam(String name, [int? umur]) {
  print("Nama: $name, umur: $umur");
}

// 5: Default Parameter
void defaultParam(String name, {int umur = 15}) {
  print("nama: $name, umur: $umur");
}

// ------------------------- Jawaban Nomor 4
// 1: Fungsi dapat mempunyai parameter
void inputParam(String name) {
  print("Hello, $name");
}

// 2: Fungsi dapat disimpan di variabel
int plus(int a, int b) {
  return a + b;
}

// 3: Fungsi dapat sebgai nilai kembalian
Function multiply(int number) {
  return (int times) => number * times;
}

// ------------------------- Jawaban Nomor 6
// 1: Lexical Scope
int x = 10;

void parentFunc() {
  int y = 5;

  void childFunc() {
    int z = 3;
    print(x);
    print(y);
    print(z);
  }

  childFunc();
}

// 2: Lexical Closure
Function pembuatCounter() {
  int counter = 0;

  return () {
    counter++;
    print(counter);
  };
}

// ------------------------- Jawaban Nomor 7

(String, String) name() {
  return ("Patria", "Anggara");
}
