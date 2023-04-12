import 'package:flutter/material.dart';

class BookmarkBeer extends StatefulWidget {
  const BookmarkBeer({super.key});

  @override
  State<BookmarkBeer> createState() => _BookmarkBeerState();
}

class _BookmarkBeerState extends State<BookmarkBeer> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text("bookmark beer"),
    );
  }
}
