import 'package:flutter/material.dart';
import 'package:waliima_app/constants.dart';
import 'package:waliima_app/size_config.dart';
import 'package:waliima_app/views/public_components/default_button.dart';
import 'package:waliima_app/views/user/screens/auth/auth_screen.dart';
import 'package:waliima_app/views/user/screens/splash/components/splash_content.dart';


class SplashBody extends StatefulWidget {
  @override
  _SplashBodyState createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "أهلا بك في تطبيق وليمة",
      "image": "assets/images/login_bg.jpg",
    },
    {
      "text": "أطلب الأن من مختلف أنواع اللحوم",
      "image": "assets/images/advertising_2.jpg",
    },
    {
      "text": "سنقوم بتوصيلها إلى عنوانك",
      "image": "assets/images/advertising_3.jpg",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  text: splashData[index]["text"],
                  image: splashData[index]['image'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding:EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20),
                ),
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          splashData.length, (index) => buildDot(index: index)),
                    ),
                    Spacer(flex: 3,),
                    DefaultButton(
                      text: 'إبدأ هنا',
                      onPressed: (){
                        Navigator.pushNamed(context, AuthScreen.routeName);
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}


