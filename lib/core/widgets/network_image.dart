import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:naxa_app/core/constants/constants.dart';

class GeneralNetworkImage extends StatelessWidget {
  const GeneralNetworkImage({
    Key? key,
    this.image,
    this.placeHolder = placeNetworkImage,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;
  final String? image;
  final String placeHolder;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: CachedNetworkImage(imageUrl: image ?? placeHolder),
    );
  }
}
