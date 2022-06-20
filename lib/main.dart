import 'package:book_app/views/book_list.dart';
import 'package:flutter/material.dart';
import 'package:book_app/controllers/book_controller.dart';
import 'package:book_app/widgets/constants.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BookController(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Book App',
        theme: ThemeData(
          primaryColor: primaryColor,
          appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Colors.white),
            titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
            backgroundColor: customBlue,
          ),
          scaffoldBackgroundColor: Colors.white,
          primarySwatch: Colors.blue,
        ),
        home: const BookListPage(),
      ),
    );
  }
}