
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class TestPageScreen extends StatelessWidget {
  const TestPageScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };
    return Container(
      decoration: BoxDecoration(
        color:  Colors.white,
      ),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            ),
            fixedSize: const Size(double.infinity, 50),
          ),
          onPressed: () async {
            var response = await http.Client().get(Uri.parse('http://192.168.225.180:1337/api/colors/'), headers: headers);
            print(jsonDecode(response.body));
          },
          child: const Text('Enregister',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          )),
    );
  }
}
