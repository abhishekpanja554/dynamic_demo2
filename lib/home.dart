import 'package:dynamic_render/util.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _formKey = GlobalKey<FormState>();
  List<Widget> formList = [];
  @override
  void initState() {
    getFormList();
    super.initState();
  }

  getFormList() async {
    formList = await renderFields();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        _formKey.currentState!.save();
        print(res);
      }),
      appBar: AppBar(
        title: const Text("Json render demo"),
        backgroundColor: Colors.cyanAccent,
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        return Container(
          height: constraints.maxHeight,
          width: constraints.maxWidth,
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key: _formKey,
            child: ListView(
              children: formList,
            ),
          ),
        );
      }),
    );
  }
}
