import 'package:flutter/material.dart';

class ImageFile extends StatelessWidget {
  const ImageFile({super.key});

  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image from assets"),
        ),
        body: Image.asset('assets/images/hourglas.jpg'), //   <-- image
      ),
    );
  }
}

