import 'dart:convert';

import 'package:flutter/material.dart';

class ListBeer extends StatefulWidget {
  const ListBeer({super.key});

  @override
  State<ListBeer> createState() => _ListBeerState();
}

class _ListBeerState extends State<ListBeer> {
  final pathArquivo = "assets/bebidas.json";

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 200,
      child: FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString(pathArquivo),
        builder: (context, snapshot) {
          var bebidas = json.decode(snapshot.data.toString());
          return ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              var bebida = bebidas[index];
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(children: [
                    Image.network(
                      bebida['image'],
                      height: 60,
                      width: 60,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Column(
                      children: [
                        Text("Nome:" + bebida["name"]),
                        Text("Pais:" + bebida["country"]),
                        Text("Teor Alcol.:" + bebida["abv"]),
                      ],
                    ),
                  ]),
                ),
              );
            },
            itemCount: bebidas == null ? 0 : bebidas.length,
          );
        },
      ),
    );
  }
}
