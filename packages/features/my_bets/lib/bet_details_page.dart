import 'package:flutter/material.dart';

class BetDetailsPage extends StatelessWidget {
  final String id;

  const BetDetailsPage({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("bet en cours")));
  }
}
