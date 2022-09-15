///Converts a map of query parameters for easy concatenation with the url
params_to_string(Map<String, dynamic> params)
{
  //initialization of list of parameters
  List<String> parameters = [];
  //looping through the key and value pair of the Map
  //processing each value and adding to the list of parameters as string <key>=<value>
  params.forEach((key, value) {parameters.add("$key=$value");});
  //in the case of more than one parameter, the join method as the name implies joins the next parameter to the
  //preceding parameter with the & and returns a string as the final result once the list of parameters is looped through completely
  return parameters.join("&");
}