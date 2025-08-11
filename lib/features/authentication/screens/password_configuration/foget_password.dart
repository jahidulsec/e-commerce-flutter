import 'package:e_commerce_app/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FogetPasswordScreen extends StatelessWidget {
  const FogetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // heading
            Text(
              TTexts.tForgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: TSizes.spaceBtwItems),

            Text(
              TTexts.tForgetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: TSizes.spaceBtwItems * 2),

            // text form field
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct),
                labelText: "Email",
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            // button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(const ResetPasswordScreen()),
                child: Text(TTexts.submit),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
