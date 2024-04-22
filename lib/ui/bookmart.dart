import 'package:flutter/material.dart';

class Bookmark extends StatefulWidget {
  const Bookmark({super.key});

  @override
  State<Bookmark> createState() => _BookmartState();
}

class _BookmartState extends State<Bookmark> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          IconButton(
            onPressed: () {}
          , icon: Icon(Icons.bookmark))
        ],
      ),
    );
  }
}