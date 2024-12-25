```dart
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Process jsonData
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e, stacktrace) {
    // Log the exception with stacktrace for better debugging
    print('Error: $e
Stacktrace: $stacktrace'); 
    rethrow; // Re-throw the exception to be handled elsewhere
  }
}
```