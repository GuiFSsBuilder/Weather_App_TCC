import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const _assetName = 'assets/svgs/logo.svg';

class Logo extends StatelessWidget {
  final double width;
  final double height;

  const Logo({
    this.width = 82,
    this.height = 49,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      _assetName,
      width: width,
      height: height,
    );
  }
}
