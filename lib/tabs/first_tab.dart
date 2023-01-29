import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  const FirstTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('The Little mermaid'),
        Image.asset('assets/book.jpg'),
        Text('dgfhda adgfha'),

      ],
    );
  }
}
