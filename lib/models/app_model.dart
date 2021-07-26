import 'package:flutter/material.dart';

class AppModel {
  final String? id;
  final String? question;
  final List<Map<String, Object>>? answers;

  AppModel({
    @required this.id,
    @required this.question,
    @required this.answers,
  });
}
