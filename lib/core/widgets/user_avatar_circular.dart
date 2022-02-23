import 'package:flutter/material.dart';
import 'package:naxa_app/core/constants/colors.dart';
import 'package:naxa_app/core/widgets/conditional_builder.dart';
import 'package:naxa_app/core/widgets/network_image.dart';

class UserAvatarCircular extends StatelessWidget {
  const UserAvatarCircular({
    Key? key,
    this.onPressed,
    this.imageUrl,
    this.showBorder = false,
    this.showHighlight = false,
    required this.size,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final String? imageUrl;
  final bool showHighlight;
  final bool showBorder;
  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        children: [

          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: showBorder
                  ? Border.all(
                      color: Theme.of(context).primaryColor,
                      width: 1,
                    )
                  : null,
            ),
            child: ClipOval(
              child: GeneralNetworkImage(
                image: imageUrl,
                height: size,
                width: size,
              ),
            ),
          ),
          ConditionalBuilder(
            child: Positioned(
              child: Icon(
                Icons.brightness_1_rounded,
                color: redStateColor,
                size: size / 2.8,
              ),
            ),
            visible: showHighlight,
          ),

        ],
      ),
    );
  }
}
