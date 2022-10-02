import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home.dart';
import 'my_counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyCounter>(
        create: (context) => MyCounter(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Counter App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Home(),
      ),
    );
  }
}
