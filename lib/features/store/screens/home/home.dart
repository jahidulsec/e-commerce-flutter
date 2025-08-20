import 'package:e_commerce_app/features/store/screens/home/widgets/appbar.dart';
import 'package:e_commerce_app/features/store/screens/home/widgets/home_category.dart';
import 'package:e_commerce_app/features/store/screens/home/widgets/promo_slider.dart';
import 'package:e_commerce_app/shared/widgets/shapes/containers/primary_header.dart';
import 'package:e_commerce_app/shared/widgets/shapes/containers/search_container.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  // appbar
                  const HomeAppbar(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // search bar
                  SearchContainer(text: "Search in store"),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // categories
                  const HomeCategory(),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: PromoSlider( banners: [
                TImages.promoBanner1,
                TImages.promoBanner2,
                TImages.promoBanner3,
              ],),
            ),
          ],
        ),
      ),
    );
  }
}
