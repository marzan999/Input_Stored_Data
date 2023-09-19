import 'package:flutter/material.dart';
import 'package:input_stored_data/comment_screen.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CommentScreen(),
    );
  }
}