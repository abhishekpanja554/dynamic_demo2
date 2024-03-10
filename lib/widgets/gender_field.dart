import 'package:flutter/material.dart';

class GenderSwitch extends StatefulWidget {
  final List<String> options;
  final Function(bool)? onchanged;
  const GenderSwitch({super.key, this.onchanged, required this.options});

  @override
  State<GenderSwitch> createState() => _GenderSwitchState();
}

class _GenderSwitchState extends State<GenderSwitch> {
  bool swVal = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(widget.options[0]),
        Switch(value: swVal, onChanged: (val){
          setState(() {
            swVal = val;
            if(widget.onchanged != null){
              widget.onchanged!(val);
            }
          });
        }),
        Text(widget.options[1]),
      ],
    );
  }
}