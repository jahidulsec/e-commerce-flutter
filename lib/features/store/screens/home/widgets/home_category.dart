import 'package:e_commerce_app/shared/widgets/cards/image_text.dart';
import 'package:e_commerce_app/shared/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeCategory extends StatelessWidget {
  const HomeCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: TSizes.defaultSpace),
      child: Column(
        children: [
          // heading
          SectionHeading(
            title: "Popular Categories",
            textColor: TColors.white,
          ),
          const SizedBox(height: TSizes.spaceBtwItems),
    
          // categories
          SizedBox(
            height: 80,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return VerticalImageText(
                  image: TImages.shoeIcon,
                  title: "Shoes",
                  onTap: () {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
