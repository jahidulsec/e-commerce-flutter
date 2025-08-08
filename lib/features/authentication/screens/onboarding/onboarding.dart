import 'package:e_commerce_app/features/authentication/controllers/onboarding_controller.dart';
import 'package:e_commerce_app/features/authentication/screens/onboarding/widgets/on_boarding_dot_navigation.dart';
import 'package:e_commerce_app/features/authentication/screens/onboarding/widgets/on_boarding_next_button.dart';
import 'package:e_commerce_app/features/authentication/screens/onboarding/widgets/on_boarding_page.dart';
import 'package:e_commerce_app/features/authentication/screens/onboarding/widgets/on_boarding_skip.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          // horizontal scrollable page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              const OnBoarding(
                title: TTexts.tOnBoardingTitle1,
                subTitle: TTexts.tOnBoardingSubTitle1,
                image: TImages.tOnBoardingImage1,
              ),
              const OnBoarding(
                title: TTexts.tOnBoardingTitle2,
                subTitle: TTexts.tOnBoardingSubTitle2,
                image: TImages.tOnBoardingImage2,
              ),
              const OnBoarding(
                title: TTexts.tOnBoardingTitle3,
                subTitle: TTexts.tOnBoardingSubTitle3,
                image: TImages.tOnBoardingImage3,
              ),
            ],
          ),
          // skip button
          const OnBoardingSkip(),

          // dot navigation
          OnBoardingDotNavigation(),

          // circular button
          OnBoardingNextButton(),
        ],
      ),
    );
  }
}

