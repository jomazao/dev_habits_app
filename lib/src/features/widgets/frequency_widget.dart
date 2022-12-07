import 'package:flutter/material.dart';

class FrequencyWidget extends StatelessWidget {
  const FrequencyWidget({
    Key? key,
    required this.mainColor,
    this.showHalf = false,
  }) : super(key: key);

  final Color mainColor;
  final bool showHalf;

  @override
  Widget build(BuildContext context) {
    late Widget content;
    if (showHalf) {
      content = ClipPath(
        clipper: CustomTriangleClipper(),
        child: DecoratedBox(
            decoration: BoxDecoration(
          color: mainColor,
          borderRadius: BorderRadius.circular(12),
        )),
      );
    } else {
      content = DecoratedBox(
          decoration: BoxDecoration(
        color: mainColor,
        borderRadius: BorderRadius.circular(12),
      ));
    }

    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
          color: mainColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12)),
      height: 54,
      width: 54,
      child: content,
    );
  }
}

class CustomTriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
