```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonResponse = jsonDecode(response.body);
      // Access data from the JSON response, for example: 
      print(jsonResponse['name']); 
    } else {
      // Handle error response
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions (e.g., network errors, JSON decoding errors)
    print('Error: $e');
    //Consider rethrowing to handle in a higher level
    rethrow; 
  }
}
```