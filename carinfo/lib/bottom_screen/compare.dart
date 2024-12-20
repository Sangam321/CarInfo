import 'package:flutter/material.dart';

class Compare extends StatefulWidget {
  const Compare({super.key});

  @override
  State<Compare> createState() => _AboutScreeState();
}

class _AboutScreeState extends State<Compare> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Compare'),
    );
  }
}
