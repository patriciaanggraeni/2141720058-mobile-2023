import 'dart:async';
import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Angga',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const FuturePage(),
    );
  }
}

class FuturePage extends StatefulWidget {
  const FuturePage({super.key});

  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  String result = "";
  late Completer completer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Back from the Future"),
      ),
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            ElevatedButton(
              child: const Text("GO!"),
              onPressed: () {
                handlerError();
                // returnError().then((value) {
                //   setState(() {
                //     result = "Success";
                //   });
                // } ).catchError((onError) {
                //   setState(() {
                //     result = onError.toString();
                //   });
                // } ).whenComplete(() => print("Complete"));
                //returnFG();
                // getNumber().then((value) {
                //   setState(() {
                //     result = value.toString();
                //   });
                // } ).catchError((e) {
                //   result = "An error accurred";
                // } );
                // getNumber().then((value) {
                //   setState(() {
                //     result = value.toString();
                //   });
                // } );
                // count();
                // setState( () {
                //   getData().then( (value) {
                //     result = value.body.toString().substring(0, 450);
                //     setState( () {} );
                //   } ).catchError( (_) {
                //     result = "An error occured";
                //     setState( () {} );
                //   } );
                // } );
              },
            ),
            const Spacer(),
            Text(result),
            const Spacer(),
            const CircularProgressIndicator(),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  Future<Response> getData() async {
    const authority = "www.googleapis.com";
    const path = "/books/v1/volumes/J69lDwAAQBAJ";
    Uri url = Uri.https(authority, path);
    return http.get(url);
  }

  Future<int> returnOneAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 1;
  }

  Future<int> returnTwoAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 2;
  }

  Future<int> returnThreeAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 3;
  }

  Future count() async {
    int total = 0;
    total = await returnOneAsync();
    total += await returnTwoAsync();
    total += await returnThreeAsync();
    setState(() {
      result = total.toString();
    });
  }

  Future getNumber() {
    completer = Completer<int>();
    calculate();
    return completer.future;
  }

  Future calculate() async {
    await Future.delayed(const Duration(seconds : 5));
    completer.complete(42);
  }

  Future calculate2() async {
    try {
      await Future.delayed(const Duration(seconds: 5));
    } catch (_) {
      completer.completeError({});
    }
  }

  void returnFG() {
    final futures = Future.wait<int>([
      returnOneAsync(),
      returnTwoAsync(),
      returnThreeAsync(),
    ]);

    futures.then((List<int> value) {
      int total = 0;
      for (var element in value) {
        total += element;
      }
      setState(() {
        result = total.toString();
      });
    } );

    // FutureGroup<int> futureGroup = FutureGroup<int>();
    //
    // futureGroup.add(returnOneAsync());
    // futureGroup.add(returnTwoAsync());
    // futureGroup.add(returnThreeAsync());
    // futureGroup.close();
    //
    // futureGroup.future.then((List<int> value) {
    //   int total = 0;
    //   for (var element in value) {
    //     total += element;
    //   }
    //   setState(() {
    //     result = total.toString();
    //   });
    // } );
  }

  Future returnError() async {
    await Future.delayed(const Duration(seconds: 2));
    throw Exception("Something terrible happened!");
  }

  Future handlerError() async {
    try {
      await returnError();
    } catch (error) {
      setState(() {
        result = error.toString();
      });
    } finally {
      print("Complete");
    } 
  }
}


