import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../../utils/constants/sizes.dart';
import '../../../../../../utils/constants/text_strings.dart';
import '../../../../../../common/widgets/login_sign_up/verify_email.dart';
import 'terms_conditions_checkbox.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
          children: [
            // First Name & Last Name
            Row(
              children: [
                Expanded(
                    child: TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.user),
                        labelText: TText.firstName,
                      ),
                    )
                ),
                const SizedBox(width: TSizes.spaceBtwInputFields),
                Expanded(
                    child: TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.user),
                        labelText: TText.lastName,
                      ),
                    )
                ),
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields),

            // user name
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.user_edit),
                labelText: TText.username,
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields),

            // Email
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct),
                labelText: TText.email,
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields,),

            // Phone Number
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.call),
                labelText: TText.phoneNo,
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields),

            // Password
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: TText.password,
                  suffixIcon: Icon(Iconsax.eye_slash)
              ),
            ),

            const SizedBox(height: TSizes.spaceBtwItems),

            // Terms and Condition
            const TTermsAndConditionsCheckbox(),
            const SizedBox(height: TSizes.spaceBtwItems),

            // Sign Up Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const VerifyEmailScreen()) ,
                child: const Text(TText.createAccount),
              ),
            )
          ],
        )
    );
  }
}


