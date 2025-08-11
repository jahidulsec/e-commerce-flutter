import 'package:e_commerce_app/features/authentication/screens/login/login.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // image
            Image(
              width: THelperFunctions.screenWidth() * 0.6,
              image: AssetImage(TImages.deliveredEmailIllustration),
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            // title & subtitle
            Text(
              TTexts.tResetPassword,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: TSizes.spaceBtwItems),

            Text(
              "Password reset email sent.",
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            // button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.offAll(const LoginScreen()),
                child: Text(TTexts.done),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
