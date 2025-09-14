import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/assets_path.dart';

// ignore: must_be_immutable
class ScreentBacground extends StatelessWidget {
  ScreentBacground({super.key, required this.child});

  Widget child;

  @override
  Widget build(BuildContext context) {
    Size screentSiz = MediaQuery.sizeOf(context);
    return Stack(
      children: [
        SvgPicture.asset(
          AssetsPath.background,
          height: screentSiz.height,
          width: screentSiz.width,
          fit: BoxFit.cover,
        ),
        child,
      ],
    );
  }
}
