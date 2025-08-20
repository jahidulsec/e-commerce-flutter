import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class RoundedImageContainer extends StatelessWidget {
  const RoundedImageContainer({
    super.key,
    required this.imageUrl,
    this.width ,
    this.height,
    this.applyImageRadius = true,
    this.border,
    this.backgroundColor = TColors.lightBackground,
    this.fit = BoxFit.contain,
    this.padding,
    this.isNetworkImage = false,
    this.onPressed,
    this.borderRadius = TSizes.md,
  });

  final String imageUrl;
  final double? width, height;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsets? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: padding,
        width: width,
        height: height,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
        ),
        child: Image(
          image: isNetworkImage ? NetworkImage(imageUrl) : AssetImage(imageUrl),
          fit: fit,
        ),
      ),
    );
  }
}
