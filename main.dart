import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dropdown Button Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButton<String>(
                value: dropdownValue,
                items: <String>['Dog', 'Cat', 'Tiger', 'Lion']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(fontSize: 16),
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
              ),
              SizedBox(height: 20),
              Text(
                'Selected Animal: $dropdownValue',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Define the dropdownValue variable here
String dropdownValue = 'Dog';
