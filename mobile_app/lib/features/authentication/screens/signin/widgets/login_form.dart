import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mobile_app/utils/constants/sizes.dart';
import 'package:mobile_app/utils/constants/text_strings.dart';


class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
          child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            //Email Field
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TTexts.email,
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields),
            //Password Field
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: TTexts.password,
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields / 2),
            //Remember me and Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Remember me
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (bool? value) {},
                    ),
                    const Text(TTexts.rememberMe),
                  ],
                ),
                //Forget Password
                TextButton(
                    onPressed: (){},
                    child: const Text(TTexts.forgetPassword))
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwSections),
            //SighIn Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: (){},
                    child: const Text(TTexts.signIn))),
            const SizedBox(height: TSizes.spaceBtwItems),
            //Create Account Button
    
            SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: ()=> Get.to((){}),
                    child: const Text(TTexts.createAccount))),
          ],
        ),
      )  
    );
  }
}