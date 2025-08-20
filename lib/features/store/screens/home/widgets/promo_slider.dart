import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/features/store/controllers/home_controller.dart';
import 'package:e_commerce_app/shared/widgets/images/rounded_image_container.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../shared/widgets/shapes/containers/circular_container.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({super.key, required this.banners});

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
          items: banners
              .map((url) => RoundedImageContainer(imageUrl: url))
              .toList(),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < banners.length; i++)
                CircularContainer(
                  width: 20,
                  height: 4,
                  margin: EdgeInsets.only(right: 10),
                  backgroundColor: controller.carousalCurrentIndex.value == i
                      ? TColors.accent
                      : TColors.grey,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
