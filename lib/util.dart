import 'package:dynamic_render/model.dart';
import 'package:dynamic_render/widgets/gender_field.dart';
import 'package:dynamic_render/widgets/text_field.dart';
import 'package:flutter/material.dart';

Section getFields() {
  Section fields = Section.fromJson(x);
  return fields;
}

Map res = {};

renderFields() {
  List<Widget> widgets = [];
  Section fields = getFields();
  fields.subQuestions.forEach((element) {
    if (element.valueType == "text") {
      widgets.add(
        CustomTextFieldOutline(
          label: element.question,
          hintText: "Enter ${element.question}",
          controller: TextEditingController(),
          onChange: (value) {
            res[element.questionKey] = value;
          },
        ),
      );
    } else if (element.valueType == "switch") {
      widgets.add(
        GenderSwitch(
          options: element.options!,
          onchanged: (p0) {
            
          },
        ),
      );
    } else if(element.valueType == "email"){
      widgets.add(
        CustomTextFieldOutline(
          label: element.question,
          hintText: "Enter ${element.question}",
          controller: TextEditingController(),
          keyboardType: TextInputType.emailAddress,
          onChange: (value) {
            res[element.questionKey] = value;
          },
        ),
      );
    }
  });
  return widgets;
}
