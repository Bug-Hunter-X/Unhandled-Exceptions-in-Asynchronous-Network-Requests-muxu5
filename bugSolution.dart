```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonResponse = jsonDecode(response.body);
        return jsonResponse;
      } catch (e) {
        print('JSON decoding error: $e');
        //Consider rethrowing to handle in a higher level
        rethrow; 
      }
    } else {
      print('Request failed with status: ${response.statusCode}. Body: ${response.body}');
      //Consider rethrowing to handle in a higher level
      rethrow; 
    }
  } catch (e) {
    print('Network error: $e');
    //Consider rethrowing to handle in a higher level
    rethrow; 
  }
}
```