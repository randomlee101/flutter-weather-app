import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/network/endpoints.dart';
import 'package:weather_app/network/params_to_string.dart';

get(url, {Map<String, dynamic>? params}) async {
  try {
    params = {...?params, "key": "a9ff03b3cd404cf98d3c94dfc571e6c0"};
    String parameters = params_to_string(params);
    url = "${Endpoints.BASE_URL}$url?$parameters";
    Uri uri = Uri.parse(url);
    var response = await http.get(uri);
    var data = jsonDecode(response.body);
    return data;
  } catch (e) {
    return e;
  }
}
