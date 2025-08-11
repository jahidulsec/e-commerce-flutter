import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TermsConditionCheckbox extends StatelessWidget {
  const TermsConditionCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);

    return Row(
      children: [
        SizedBox(
          height: 24,
          width: 24,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        const SizedBox(width: TSizes.spaceBtwInputFields),

        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'I agree to ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: 'Privacy policy ',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: isDark ? TColors.primary : TColors.accent,
                  decoration: TextDecoration.underline,
                  decorationColor: isDark ? TColors.primary : TColors.accent,
                ),
              ),
              TextSpan(
                text: 'and ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: 'Terms of use',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: isDark ? TColors.primary : TColors.accent,
                  decoration: TextDecoration.underline,
                  decorationColor: isDark ? TColors.primary : TColors.accent,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
