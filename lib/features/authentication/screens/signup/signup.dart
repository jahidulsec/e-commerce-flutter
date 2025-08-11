import 'package:e_commerce_app/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:e_commerce_app/shared/widgets/authentication/form_divider.dart';
import 'package:e_commerce_app/shared/widgets/authentication/form_footer.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// title
              Text(
                TTexts.tSignUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// form
              const SignupForm(),

              const SizedBox(height: TSizes.spaceBtwSections),

              /// divider
              const FormDivider(dividerText: 'Or Sign up with'),

              const SizedBox(height: TSizes.spaceBtwItems),

              const FormFooter(),
            ],
          ),
        ),
      ),
    );
  }
}

