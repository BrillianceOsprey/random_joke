import 'package:restinpower/things/modal.dart';

// import 'package:http/http.dart' as http;
import 'package:http/http.dart';

Future<RandomJoke> getData() async {
  // var response=await http.get("https://official-joke-api.appspot.com/jokes/programming/random");
  var response = await get(
      Uri.https('official-joke-api.appspot.com', 'jokes/programming/random'));
  if (response.statusCode == 200) {
    return randomJokeFromJson(response.body)[0];
  } else {
    throw Exception;
  }
}
