import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './models/database_provider.dart';
import './screens/category_screen.dart';
import './screens/expense_screen.dart';
import 'package:expense_tracker/screens/all_expenses.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => DataBaseProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: CategoryScreen.name,
      routes: {
        CategoryScreen.name: (_) => const CategoryScreen(),
        ExpenseScreen.name: (_) => const ExpenseScreen(),
        AllExpenses.name: (_) => const AllExpenses(),
      },
    );
  }
}
