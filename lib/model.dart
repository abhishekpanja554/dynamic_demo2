import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

@JsonSerializable()
class Section {
  int id;
  String questionKey;
  String? valueType;
  String? question;
  List<String>? options;
  String? description;
  bool canComment;
  List<Section> subQuestions;
  String? stage;
  String? page;
  String? section;
  int sequence;
  Validations? validations;
  SpecialOption? specialOption;
  bool isMandatory;
  bool isEditable;

  Section(
      {required this.id,
      required this.questionKey,
      this.question,
      this.canComment = false,
      this.description,
      this.options,
      required this.subQuestions,
      required this.isEditable,
      required this.isMandatory,
      required this.page,
      required this.section,
      required this.sequence,
      this.specialOption,
      required this.stage,
      this.validations,
      this.valueType});

  factory Section.fromJson(Map<String, dynamic> json) =>
      _$SectionFromJson(json);

  Map<String, dynamic> toJson() => _$SectionToJson(this);
}

@JsonSerializable()
class Validations {
  String? validationType;
  String? validationValue;
  String? validationMessage;

  Validations({
    this.validationMessage,
    this.validationType,
    this.validationValue,
  });

  factory Validations.fromJson(Map<String, dynamic> json) =>
      _$ValidationsFromJson(json);

  Map<String, dynamic> toJson() => _$ValidationsToJson(this);
}

@JsonSerializable()
class SpecialOption{
  List<String>? option;
  String? message;
  String? action;
  String? data;

  SpecialOption({this.action, this.data,this.message,this.option});

  factory SpecialOption.fromJson(Map<String, dynamic> json) =>
      _$SpecialOptionFromJson(json);

  Map<String, dynamic> toJson() => _$SpecialOptionToJson(this);
}

var x = {
  "id": 910,
  "question_key": "your_details",
  "question": null,
  "value_type": null,
  "options": [],
  "description": null,
  "can_comment": false,
  "sub_questions": [
    {
      "id": 911,
      "question_key": "proposer_first_name",
      "question": "First Name",
      "value_type": "text",
      "options": [],
      "description": null,
      "can_comment": false,
      "sub_questions": [],
      "stage": "7",
      "page": "USERINFO",
      "section": "proposer_details",
      "sequence": 1,
      "validations": {
        "validation_type": null,
        "validation_value": null,
        "validation_message": "Please Enter Correct First Name"
      },
      "special_option": {
        "option": [],
        "message": null,
        "action": null,
        "data": null
      },
      "is_mandatory": true,
      "is_editable": true
    },
    {
      "id": 912,
      "question_key": "proposer_last_name",
      "question": "Last Name",
      "value_type": "text",
      "options": [],
      "description": null,
      "can_comment": false,
      "sub_questions": [],
      "stage": null,
      "page": "USERINFO",
      "section": "proposer_details",
      "sequence": 2,
      "validations": {
        "validation_type": null,
        "validation_value": null,
        "validation_message": "Please Enter Correct proposer_last_name"
      },
      "special_option": {
        "option": [],
        "message": null,
        "action": null,
        "data": null
      },
      "is_mandatory": true,
      "is_editable": true
    },
    {
      "id": 913,
      "question_key": "proposer_dob",
      "question": "DOB",
      "value_type": "date",
      "options": [],
      "description": null,
      "can_comment": false,
      "sub_questions": [],
      "stage": "8",
      "page": "USERINFO",
      "section": "proposer_details",
      "sequence": 3,
      "validations": {
        "validation_type": null,
        "validation_value": null,
        "validation_message": null
      },
      "special_option": {
        "option": [],
        "message": null,
        "action": null,
        "data": null
      },
      "is_mandatory": true,
      "is_editable": true
    },
    {
      "id": 914,
      "question_key": "proposer_phone_number",
      "question": "Contact Number",
      "value_type": "phone_number",
      "options": [],
      "description": null,
      "can_comment": false,
      "sub_questions": [],
      "stage": null,
      "page": "USERINFO",
      "section": "proposer_details",
      "sequence": 4,
      "validations": {
        "validation_type": null,
        "validation_value": null,
        "validation_message": "Please enter correct proposer_phone_number"
      },
      "special_option": {
        "option": [],
        "message": null,
        "action": null,
        "data": null
      },
      "is_mandatory": true,
      "is_editable": true
    },
    {
      "id": 915,
      "question_key": "proposer_email",
      "question": "Email",
      "value_type": "email",
      "options": [],
      "description": null,
      "can_comment": false,
      "sub_questions": [],
      "stage": null,
      "page": "USERINFO",
      "section": "proposer_details",
      "sequence": 5,
      "validations": {
        "validation_type": null,
        "validation_value": null,
        "validation_message": "Please enter correct proposer_email"
      },
      "special_option": {
        "option": [],
        "message": null,
        "action": null,
        "data": null
      },
      "is_mandatory": true,
      "is_editable": true
    },
    {
      "id": 916,
      "question_key": "proposer_gender",
      "question": "Gender",
      "value_type": "switch",
      "options": ["Male", "Female"],
      "description": null,
      "can_comment": false,
      "sub_questions": [],
      "stage": null,
      "page": "USERINFO",
      "section": "proposer_details",
      "sequence": 6,
      "validations": {
        "validation_type": null,
        "validation_value": null,
        "validation_message": null
      },
      "special_option": {
        "option": [],
        "message": null,
        "action": null,
        "data": null
      },
      "is_mandatory": true,
      "is_editable": true
    },
    {
      "id": 917,
      "question_key": "address",
      "question": "Address",
      "value_type": "address",
      "options": [],
      "description": null,
      "can_comment": false,
      "sub_questions": [],
      "stage": null,
      "page": "USERINFO",
      "section": "proposer_details",
      "sequence": 7,
      "validations": {
        "validation_type": null,
        "validation_value": null,
        "validation_message": null
      },
      "special_option": {
        "option": [],
        "message": null,
        "action": null,
        "data":
            "{\n  \"fields\": [\n    \"address_line_1\",\n    \"address_line_2\",\n    \"pincode\",\n    \"city\",\n    \"state\"\n  ]\n}"
      },
      "is_mandatory": true,
      "is_editable": true
    },
    {
      "id": 918,
      "question_key": "ext_transaction_id",
      "question": "External Transaction Id",
      "value_type": "string",
      "options": [],
      "description": null,
      "can_comment": false,
      "sub_questions": [],
      "stage": null,
      "page": "USERINFO",
      "section": "proposer_details",
      "sequence": 8,
      "validations": {
        "validation_type": null,
        "validation_value": null,
        "validation_message": null
      },
      "special_option": {
        "option": [],
        "message": null,
        "action": null,
        "data": null
      },
      "is_mandatory": true,
      "is_editable": true
    }
  ],
  "stage": "4",
  "page": "USERINFO",
  "section": "proposer_details",
  "sequence": 0,
  "validations": {
    "validation_type": null,
    "validation_value": null,
    "validation_message": null
  },
  "special_option": {
    "option": [],
    "message": null,
    "action": null,
    "data": null
  },
  "is_mandatory": false,
  "is_editable": true
};
