import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const _assetName = 'logo.svg';

class Logo extends StatelessWidget {
  final double width;
  final double height;

  const Logo({
    this.width = 100,
    this.height = 86,
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
