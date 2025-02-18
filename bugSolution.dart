```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonResponse = jsonDecode(response.body);
        print(jsonResponse);
      } catch (e) {
        print('Error decoding JSON: $e');
      }
    } else {
      print('Request failed with status: ${response.statusCode}.  Response body: ${response.body}');
    }
  } catch (e) {
    print('Network Error: $e');
  }
}
```