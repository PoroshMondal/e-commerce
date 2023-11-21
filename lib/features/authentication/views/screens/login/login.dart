import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/styles/spacing_styles.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../../../common/widgets/login_sign_up/form_divider.dart';
import '../../../../../common/widgets/login_sign_up/social_buttons.dart';
import 'widgets/login_form.dart';
import 'widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    final dark = THelperFunctions.isDarkMode(context);
    
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo, Title & Sub-Title
              LoginHeader(dark: dark),

              // Form
              const LoginForm(),

              // Divider
              TFormDivider(dividerText: TText.orSignInWith.capitalize!,),

              const SizedBox(height: TSizes.spaceBtwSections,),

              // Footer
              const TSocialButtons()

            ],

          ),
        ),
      ),
    );
  }
}









