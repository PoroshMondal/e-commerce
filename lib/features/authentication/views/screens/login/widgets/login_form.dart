import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/views/screens/password_configuration/forget_password.dart';
import 'package:t_store/navigation_menu.dart';

import '../../../../../../utils/constants/sizes.dart';
import '../../../../../../utils/constants/text_strings.dart';
import '../../signup/signup.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
          child: Column(
            children: [
              // Email
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.direct_right),
                    labelText: TText.email
                ),
              ),

              const SizedBox(height: TSizes.spaceBtwInputFields),

              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.password_check),
                    labelText: TText.password,
                    suffixIcon: Icon(Iconsax.eye_slash)
                ),
              ),

              const SizedBox(height: TSizes.spaceBtwInputFields),

              // Remember Me & Forget Password
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value){}),
                      const Text(TText.rememberMe),
                    ],
                  ),

                  // Forget Password
                  TextButton(onPressed: () => Get.to( () => const ForgetPassword()), child: const Text(TText.forgetPassword)),
                ],
              ),

              const SizedBox(height: TSizes.spaceBtwSections,),

              // Sign In Button
              SizedBox(width: double.infinity,child: ElevatedButton(onPressed: () => Get.offAll(const NavigationMenu()), child: const Text(TText.signIn)),),
              const SizedBox(height: TSizes.spaceBtwItems),

              // Create Account Button
              SizedBox(width: double.infinity,
                child: OutlinedButton(
                  onPressed: () => Get.to(() => const SignupScreen()), child: const Text(TText.createAccount)
                ),
              )
            ],
          ),
        )
    );
  }
}