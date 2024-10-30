import 'package:flutter/cupertino.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 100,
      height: 100,
      child: Image(
        image: AssetImage('assets/g1.jpg'),
        fit: BoxFit.cover,
      ),
    );
  }
}
