import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/assets_path.dart';

class screent_bacground extends StatelessWidget {
  screent_bacground({super.key, required this.child});

  Widget child;

  @override
  Widget build(BuildContext context) {
    Size _screentSiz = MediaQuery.sizeOf(context);
    return Stack(
      children: [
        SvgPicture.asset(
          AssetsPath.background,
          height: _screentSiz.height,
          width: _screentSiz.width,
          fit: BoxFit.cover,
        ),
        child,
      ],
    );
  }
}
