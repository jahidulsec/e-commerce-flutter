import 'package:e_commerce_app/features/authentication/screens/login/login.dart';
import 'package:e_commerce_app/shared/widgets/success_screen/success_screen.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/instance_manager.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(const LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
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
                TTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              Text(
                "support@email.com",
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              Text(
                TTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              // button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(
                    SuccessScreen(
                      image: TImages.tWelcomeScreenImage,
                      title: TTexts.yourAccountCreatedTitle,
                      subtitle: TTexts.yourAccountCreatedSubTitle,
                      onPressed: () => Get.offAll(LoginScreen()),
                    ),
                  ),
                  child: Text(TTexts.tContinue),
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: Text(TTexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
