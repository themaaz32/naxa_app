import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const appScreenSize = Size(320, 782);
final smallBorderRadius = 4.r;

EdgeInsetsGeometry getListItemBoundaryPaddings({
  required int index,
  required double space,
  required int length,
}) {
  return EdgeInsets.only(
    left: index == 0 ? space : 0,
    right: index == length - 1 ? space : 0,
  );
}
