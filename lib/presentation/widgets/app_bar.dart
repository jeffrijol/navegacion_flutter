import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final Color backgroundColor;
  final String tittle;
  final bool automaticallyImplyLeading;
  final bool centerTitle;

  const CustomAppBar(
      {super.key,
      required this.backgroundColor,
      required this.tittle,
      required this.automaticallyImplyLeading,
      required this.centerTitle});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: automaticallyImplyLeading,
      backgroundColor: backgroundColor,
      title: Text(tittle),
      centerTitle: false,
    );
  }
}
