import 'package:flutter/material.dart';

class ImageCircle extends StatelessWidget {
  final String path;
  final double size;

  ImageCircle({@required this.path, @required this.size});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        padding: EdgeInsets.all(6),
        decoration: BoxDecoration(color: Colors.grey[200]),
        child: Image.asset(
          path,
          width: size,
          height: size,
        ),
      ),
    );
  }
}
