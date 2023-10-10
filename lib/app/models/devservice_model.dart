import 'package:flutter/material.dart';

class ServiceModel {
  final String title;
  final String? subtitle;
  final String? icon;

  ServiceModel(
      {required this.title, this.subtitle, this.icon, this.description});

  List<String>? description;
}
