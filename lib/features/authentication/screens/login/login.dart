import 'package:e_commerce_app/shared/widgets/authentication/form_divider.dart';
import 'package:e_commerce_app/shared/widgets/authentication/form_footer.dart';
import 'package:e_commerce_app/features/authentication/screens/login/widgets/form_header.dart';
import 'package:e_commerce_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:e_commerce_app/shared/styles/spacing.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              // logo, title and sub title
              FormHeader(isDarkMode: isDarkMode),

              // form
              const LoginForm(),

              /// divider
              FormDivider(dividerText: "Or sign in with"),

              const SizedBox(height: TSizes.spaceBtwItems),

              /// footer
              const FormFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
