import 'package:flutter/material.dart';

class CustomTextFieldOutline extends StatefulWidget {
  const CustomTextFieldOutline(
      {Key? key,
      this.hintText,
      this.label,
      this.keyboardType,
      this.onChange,
      required this.controller})
      : super(key: key);

  final String? hintText;
  final String? label;
  final TextInputType? keyboardType;
  final TextEditingController controller;
  final void Function(String value)? onChange;

  @override
  _CustomTextFieldOutlineState createState() => _CustomTextFieldOutlineState();
}

class _CustomTextFieldOutlineState extends State<CustomTextFieldOutline> {
  // bool showPassword = false;
  late TextEditingController controller;

  void _onChange(String value) {
    controller.text = value;
    if (widget.onChange != null) {
      widget.onChange!(value);
    }
  }

  @override
  void initState() {
    controller = widget.controller;
    super.initState();
  }

  // void _changePwdType() {
  //   setState(() {
  //     showPassword = !showPassword;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // obscureText: showPassword,
      controller: widget.controller,
      onChanged: (value) => _onChange,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        hintText: widget.hintText,
        labelText: widget.label,
      ),
    );
  }
}
