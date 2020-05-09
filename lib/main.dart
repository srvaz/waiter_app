import 'package:flutter/material.dart';
import 'package:waiter_app/pages/listPage.dart';

void main() {
  runApp(WaiterApp());
}

class WaiterApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Waiter App',
        theme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: ListPage());
  }
}
