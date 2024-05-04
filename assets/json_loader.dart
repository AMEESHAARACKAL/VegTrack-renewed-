import 'dart:convert';
import 'package:flutter/services.dart';

Future<List<dynamic>> loadJsonData() async {
  final String jsonString = await rootBundle.loadString('assets/data.json');
  final List<dynamic> jsonData = json.decode(jsonString);
  return jsonData;

}
