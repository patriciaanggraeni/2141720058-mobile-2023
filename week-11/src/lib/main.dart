import 'package:flutter/material.dart';
import 'package:state_management/provider/plan_provider.dart';
import 'package:state_management/views/plan_creator_screen.dart';
import 'package:state_management/views/plan_screen.dart';
import 'models/plan.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 @override
  Widget build(BuildContext context) {
    return PlanProvider(
      notifier: ValueNotifier<List<Plan>>(const []),
      child: MaterialApp(
        title: 'State management app',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const PlanCreatorScreen(),
      ),
    );
  }
}

