import 'package:app_flutter_lista_bebida/widget/bookmark_beer.dart';
import 'package:app_flutter_lista_bebida/widget/form_beer.dart';
import 'package:app_flutter_lista_bebida/widget/list_beer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  final List<Widget> widgetOptions = [
    const ListBeer(),
    const FormBeer(),
    const BookmarkBeer()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gelada App"),
      ),
      body: Column(
        children: [
          Center(
            child: widgetOptions.elementAt(selectedIndex),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.local_drink), label: "Lista"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_a_photo), label: "Adicionar"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Bebida"),
        ],
        onTap: (int newIndex) => {
          setState(() {
            selectedIndex = newIndex;
          })
        },
        currentIndex: selectedIndex,
      ),
    );
  }
}
