import 'package:dynamic_render/util.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Json render demo"),
        backgroundColor: Colors.cyanAccent,
      ),
      body: LayoutBuilder(builder: (context, constraints){
        return Container(
          height: constraints.maxHeight,
          width: constraints.maxWidth,
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: renderFields(),
          ),
        );
      }),
    );
  }
}