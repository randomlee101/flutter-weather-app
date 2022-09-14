params_to_string(Map<String, dynamic> params)
{
  List<String> parameters = [];
  params.forEach((key, value) {parameters.add("$key=$value");});
  return parameters.join("&");
}