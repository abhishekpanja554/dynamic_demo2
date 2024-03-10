import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';

class DateField extends StatefulWidget {
  final Function(DateTime) onchanged;
  const DateField({Key? key, required this.onchanged});

  @override
  State<DateField> createState() => _DateFieldState();
}

class _DateFieldState extends State<DateField> {
  @override
  Widget build(BuildContext context) {
    return DateTimeFormField(
      decoration: const InputDecoration(
        labelText: 'Enter Date',
      ),
      mode: DateTimeFieldPickerMode.date,
      initialPickerDateTime: DateTime.now(),
      onChanged: (DateTime? value) {
        widget.onchanged(value!);
      },
    );
  }
}
