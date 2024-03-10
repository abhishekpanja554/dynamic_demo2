// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Section _$SectionFromJson(Map<String, dynamic> json) => Section(
      id: json['id'] as int,
      questionKey: json['question_key'] as String,
      question: json['question'] as String?,
      canComment: json['can_comment'] as bool? ?? false,
      description: json['description'] as String?,
      options:
          (json['options'] as List<dynamic>?)?.map((e) => e as String).toList(),
      subQuestions: (json['sub_questions'] as List<dynamic>)
          .map((e) => Section.fromJson(e as Map<String, dynamic>))
          .toList(),
      isEditable: json['is_editable'] as bool,
      isMandatory: json['is_mandatory'] as bool,
      page: json['page'] as String?,
      section: json['section'] as String?,
      sequence: json['sequence'] as int,
      specialOption: json['special_option'] == null
          ? null
          : SpecialOption.fromJson(
              json['special_option'] as Map<String, dynamic>),
      stage: json['stage'] as String?,
      validations: json['validations'] == null
          ? null
          : Validations.fromJson(json['validations'] as Map<String, dynamic>),
      valueType: json['value_type'] as String?,
    );

Map<String, dynamic> _$SectionToJson(Section instance) => <String, dynamic>{
      'id': instance.id,
      'question_key': instance.questionKey,
      'value_type': instance.valueType,
      'question': instance.question,
      'options': instance.options,
      'description': instance.description,
      'can_comment': instance.canComment,
      'sub_questions': instance.subQuestions,
      'stage': instance.stage,
      'page': instance.page,
      'section': instance.section,
      'sequence': instance.sequence,
      'validations': instance.validations,
      'special_option': instance.specialOption,
      'is_mandatory': instance.isMandatory,
      'is_editable': instance.isEditable,
    };

Validations _$ValidationsFromJson(Map<String, dynamic> json) => Validations(
      validationMessage: json['validation_message'] as String?,
      validationType: json['validation_type'] as String?,
      validationValue: json['validation_value'] as String?,
    );

Map<String, dynamic> _$ValidationsToJson(Validations instance) =>
    <String, dynamic>{
      'validation_type': instance.validationType,
      'validation_value': instance.validationValue,
      'validation_message': instance.validationMessage,
    };

SpecialOption _$SpecialOptionFromJson(Map<String, dynamic> json) =>
    SpecialOption(
      action: json['action'] as String?,
      data: json['data'] as String?,
      message: json['message'] as String?,
      option:
          (json['option'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$SpecialOptionToJson(SpecialOption instance) =>
    <String, dynamic>{
      'option': instance.option,
      'message': instance.message,
      'action': instance.action,
      'data': instance.data,
    };
