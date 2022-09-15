import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/network/endpoints.dart';
import 'package:weather_app/network/params_to_string.dart';

///Custom & Re-usable HTTP GET method for sending a GET request to the server
get(url, {Map<String, dynamic>? params}) async {
  //a try-catch block to handle errors should they arise
  try {
    //a spread operator to add extra and custom parameters dynamically alongside the key
    params = {...?params, "key": "a9ff03b3cd404cf98d3c94dfc571e6c0"};
    //the params are converted to a string
    String parameters = params_to_string(params);
    //the url is updated with the available parameters
    url = "${Endpoints.BASE_URL}$url?$parameters";
    //conversion of the url string to Uri for usage in the http package get method
    Uri uri = Uri.parse(url);
    //response from the endpoint is stored
    var response = await http.get(uri);
    //the response body being a json object is decoded to give a key-value pair in form of a Map
    var data = jsonDecode(response.body);
    return data;
  } catch (e) {
    return e;
  }
}
