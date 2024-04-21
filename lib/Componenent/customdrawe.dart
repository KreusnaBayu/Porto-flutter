import 'package:flutter/material.dart';

class CustomDrawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Image.asset(
        'assets/youtube.png', // Path to your YouTube logo image asset
        width: 100,
        height: 100,
      ),
    );
  }
}

