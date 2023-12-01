import 'package:flutter/material.dart';

class StateWise extends StatefulWidget {
  const StateWise({super.key});

  @override
  State<StateWise> createState() => _StateWiseState();
}

class _StateWiseState extends State<StateWise> {
  @override
  Widget build(BuildContext context) {
    return const Center(child:  Text("data"),);
  }
}