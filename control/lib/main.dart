import 'package:control/page/bussiness.dart';
import 'package:control/page/education.dart';
import 'package:control/page/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _paginaActual = 1;
  List<Widget> _paginas = [Home(), Education(), Bussiness(), Education()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: _paginas[_paginaActual],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _paginaActual,
            onTap: (int index) {
              setState(() {
                _paginaActual = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                  backgroundColor: Colors.red),
              BottomNavigationBarItem(
                  icon: Icon(Icons.school),
                  label: 'Education',
                  backgroundColor: Colors.orange),
              BottomNavigationBarItem(
                  icon: Icon(Icons.business),
                  label: 'Business',
                  backgroundColor: Colors.yellow),
              BottomNavigationBarItem(
                  icon: Icon(Icons.info),
                  label: 'Info',
                  backgroundColor: Colors.green),
            ]),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
