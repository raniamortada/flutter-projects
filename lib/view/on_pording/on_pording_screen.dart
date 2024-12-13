import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:gym_app/utills/components.dart';
import 'package:gym_app/view/welcome/welcome_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';



class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}
class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();
  bool _isLastPage = false;

  void _onGetStarted() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => WelcomeScreen()),
    );
  }


  void _onNext() {
    if (!_isLastPage) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      _onGetStarted();
    }
  }

  void _onSkip() {
    _onGetStarted();
  }

  @override
  Widget build(BuildContext context) {
    final List<OnBoardingItem> _onBoardingItems = [
      OnBoardingItem(
        imagePath: "assets/image/FcLyt7lW5wg (1).jpg",
        title: "Sports club management\n",
       // AppLocalizations.of(context)!.,
        titleHighlighted: "It's ",
        //AppLocalizations.of(context)!.discoverTitleHighlighted,
        titleSub: "easier ",
        //AppLocalizations.of(context)!.discoverTitleSub,
        titleFourth: "now",
        fourthTitleFontWeight:FontWeight.w700 ,
        fourthTitleFontSize:26 ,
        fourthTitleFontFamily:"Poppins" ,
        titleColor: Colors.white,
        highlightedColor: ColorManager.white,
        subTitleColor: ColorManager.primaryColor,
        fourthTitleColor: Colors.white,
        titleFontSize: 26,
        titleFontFamily: 'Poppins',
        titleFontWeight: FontWeight.w700,
        highlightedFontSize: 26,
        highlightedFontFamily: 'Poppins',
        highlightedFontWeight: FontWeight.w700,
        subTitleFontSize: 26,
        subTitleFontFamily: 'Poppins',
        subTitleFontWeight: FontWeight.w700, colors: [Colors.white],

      ),
      OnBoardingItem(
        imagePath: "assets/image/FcLyt7lW5wg (1).jpg",
        title: "Manage players\ ",
       // AppLocalizations.of(context)!.discoverTitle,
        titleHighlighted: "in\n",
        //AppLocalizations.of(context)!.discoverTitleHighlighted,
        titleSub: "one place",
        //AppLocalizations.of(context)!.discoverTitleSub,

        titleColor: Colors.white,
        highlightedColor: ColorManager.white,
        subTitleColor: ColorManager.primaryColor,
        fourthTitleColor: Colors.white,
        titleFontSize: 29,
        titleFontFamily: 'Poppins',
        titleFontWeight: FontWeight.w700,
        highlightedFontSize: 29,
        highlightedFontFamily: 'Poppins',
        highlightedFontWeight: FontWeight.w700,
        subTitleFontSize: 29,
        subTitleFontFamily: 'Poppins',
        subTitleFontWeight: FontWeight.w700, colors: [Colors.white],
      ),
      OnBoardingItem(
        imagePath: "assets/image/FcLyt7lW5wg (1).jpg",
        title:"All exercises are ",
        //AppLocalizations.of(context)!.discoverTitle,
        titleHighlighted:"illustrated \ ",
        //AppLocalizations.of(context)!.discoverTitleHighlighted,
        titleSub:"Professionally",
        //AppLocalizations.of(context)!.discoverTitleSub,

        titleColor: Colors.white,
        highlightedColor: ColorManager.white,
        subTitleColor: ColorManager.primaryColor,
        fourthTitleColor: Colors.white,
        titleFontSize: 25,
        titleFontFamily: 'Poppins',
        titleFontWeight: FontWeight.w700,
        highlightedFontSize: 25,
        highlightedFontFamily: 'Poppins',
        highlightedFontWeight: FontWeight.w700,
        subTitleFontSize: 25,
        subTitleFontFamily: 'Poppins',
        subTitleFontWeight: FontWeight.w700, colors: [Colors.white],
      ),
      OnBoardingItem(
        imagePath: "assets/image/FcLyt7lW5wg (1).jpg",
        title:"Welcome to\n ",
        //AppLocalizations.of(context)!.discoverTitle,
        titleHighlighted:"SYSTEM GYM\n  ",
        //AppLocalizations.of(context)!.discoverTitleHighlighted,
        titleSub:"Achieve your body goals with us",
        //AppLocalizations.of(context)!.discoverTitleSub,

        titleColor: Colors.white,
        highlightedColor: ColorManager.white,
        subTitleColor: Color(0xffBDBDBD),
        fourthTitleColor: Colors.white,
        titleFontSize: 27,
        titleFontFamily: 'Poppins',
        titleFontWeight: FontWeight.w400,
        highlightedFontSize: 33,
        highlightedFontFamily: 'Poppins',
        highlightedFontWeight: FontWeight.w700,
        subTitleFontSize: 16,
        subTitleFontFamily: 'Poppins',
        subTitleFontWeight: FontWeight.w400, colors: [Colors.white],
      ),
    ];


    void _onPageChanged(int index) {
      setState(() {
        _isLastPage = index == _onBoardingItems.length - 1;
      });
    }

    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: _onBoardingItems.length,
            onPageChanged: _onPageChanged,
            itemBuilder: (context, index) {
              final item = _onBoardingItems[index];
              return Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 555,
                      height: 450,
                      child: Image.asset(
                        item.imagePath,
                        width: 380,
                        height: 350,

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: item.title,
                              style: TextStyle(
                                color: item.titleColor,
                                fontSize: item.titleFontSize,
                                fontFamily: item.titleFontFamily,
                                fontWeight: item.titleFontWeight,
                              ),
                            ),
                            TextSpan(
                              text: item.titleHighlighted,
                              style: TextStyle(
                                color: item.highlightedColor,
                                fontSize: item.highlightedFontSize,
                                fontFamily: item.highlightedFontFamily,
                                fontWeight: item.highlightedFontWeight,
                              ),
                            ),
                            TextSpan(
                              text: item.titleSub,
                              style: TextStyle(
                                color: item.subTitleColor,
                                fontSize: item.subTitleFontSize,
                                fontFamily: item.subTitleFontFamily,
                                fontWeight: item.subTitleFontWeight,
                              ),
                            ),
                            if (item.titleFourth != null)
                              TextSpan(
                                text: item.titleFourth!,
                                style: TextStyle(
                                  color: item.fourthTitleColor,
                                  fontSize: item.fourthTitleFontSize,
                                  fontFamily: item.fourthTitleFontFamily,
                                  fontWeight: item.fourthTitleFontWeight,
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          const SizedBox(height: 20,),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (!_isLastPage)
              SmoothPageIndicator(
                controller: _pageController,
                count: _onBoardingItems.length,
                effect: const SlideEffect(
                  spacing: 8.0,
                  radius: 8.0,
                  dotWidth: 12.0,
                  dotHeight: 12.0,
                  paintStyle: PaintingStyle.fill,
                  dotColor: Color(0xffFFF50A),
                  activeDotColor: Color(0xFFFFFFFF),
                ),
              ),
              const SizedBox(height: 20),

              if (_isLastPage)
                buildCustomButton(
                  width: 244,
                    height: 55,
                    context: context,
                    text:"Get Started",
                    //AppLocalizations.of(context)!.getStarted,
                    backgroundColor: ColorManager.primaryColor,
                    onPressed: (){
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => WelcomeScreen()),
                      );
                    }),
              SizedBox(height: 16,),
            ],
          ),
        ],
      ),
    );
  }
}

class OnBoardingItem {
  final String imagePath;
  final String title;
  final String titleHighlighted;
  final String titleSub;
  final String? titleFourth;
  final Color titleColor;
  final Color highlightedColor;
  final Color subTitleColor;
  final Color fourthTitleColor;

  final double titleFontSize;
  final String titleFontFamily;
  final FontWeight titleFontWeight;
  final double highlightedFontSize;
  final String highlightedFontFamily;
  final FontWeight highlightedFontWeight;
  final double subTitleFontSize;
  final String subTitleFontFamily;
  final FontWeight subTitleFontWeight;
  final double? fourthTitleFontSize;
  final String? fourthTitleFontFamily;
  final FontWeight? fourthTitleFontWeight;

  final List<Color> colors;

  OnBoardingItem({
    required this.imagePath,
    required this.title,
    required this.titleHighlighted,
    required this.titleSub,
    this.titleFourth,
    required this.titleColor,
    required this.highlightedColor,
    required this.subTitleColor,
    required this.fourthTitleColor,
    required this.titleFontSize,
    required this.titleFontFamily,
    required this.titleFontWeight,
    required this.highlightedFontSize,
    required this.highlightedFontFamily,
    required this.highlightedFontWeight,
    required this.subTitleFontSize,
    required this.subTitleFontFamily,
    required this.subTitleFontWeight,
    this.fourthTitleFontSize,
    this.fourthTitleFontFamily,
    this.fourthTitleFontWeight,

    required this.colors,
  });
}




