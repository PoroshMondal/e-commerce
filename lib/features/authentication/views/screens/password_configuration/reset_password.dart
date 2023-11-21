import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/success_screen/success_screen.dart';
import 'package:t_store/features/authentication/views/screens/login/login.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.back(), icon: const Icon(Icons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Image with 60% of screen width
              Image(
                image: const AssetImage(TImages.deliveredEmailIllustration),
                width: THelperFunctions.screenWidth()*0.6,
              ),
              const SizedBox(height: TSizes.spaceBtwSections,),

              // Title & SubTitle
              Text(TText.changeYourPasswordTitle, style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Text(TText.changeYourPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              // Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () => Get.offAll(const LoginScreen()), child: const Text(TText.resendEmail),),
              ),

              const SizedBox(height: TSizes.spaceBtwItems,),
              SizedBox(
                width: double.infinity,
                child: TextButton(onPressed: (){},child: const Text(TText.resendEmail),),
              )

              // Reusing the success screen
              /*SuccessScreen(
                  image: TImages.deliveredEmailIllustration,
                  title: TText.changeYourPasswordTitle,
                  subTitle: TText.changeYourPasswordSubTitle,
                  onPressed: () => Get.to(()=>const LoginScreen())),

              const SizedBox(height: TSizes.spaceBtwItems,),
              SizedBox(
                width: double.infinity,
                child: TextButton(onPressed: (){},child: const Text(TText.resendEmail),),
              )*/

            ],
          ),
        ),
      ),
    );
  }
}

