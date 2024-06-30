
import 'package:Glovy/view/onboarding/onboarding_page.dart';
import 'package:Glovy/widget/CustomButton.dart';
import 'package:Glovy/widget/CustomText.dart';
import 'package:Glovy/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body:
        Padding(
          padding: const  EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              const CustomAppBar(),
              const Spacer(flex: 1,),

              Image.asset("assets/doctorAndPatient.png"),
              const  Spacer(flex: 1,),

              const CustomText(
                textAlign: TextAlign.center,
                text: "We aim to make your life easier",
                size:20 ,
                color:  Color(0xff58B0CD),),
              const Spacer(flex: 1,),

              CustomButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context)=>const OnboardingPage()));
                  },
                  fontSize: 26,
                  childText:"Let’s start >",
                  textColor: const Color(0xff58B0CD)),
              const Spacer(flex: 1,),




            ],
          ),
        )
    );
  }
}
