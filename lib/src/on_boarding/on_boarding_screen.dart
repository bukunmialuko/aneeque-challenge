import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentPage = 0;
  String? swipeDirection;

  List<String> images = ["assets/images/ob1.jpeg", "assets/images/ob2.jpeg"];
  List<String> title = ["1 Let the journey start", "2 Let the journey start"];
  List<String> subTitle = [
    "1 Find the best pair to fit your\nlifestyle and fulfill your life",
    "2 Find the best pair to fit your\nlifestyle and fulfill your life"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                // color: Colors.green,
                // shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage(images[currentPage]), fit: BoxFit.cover),
              ),
            ),
            Container(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Spacer(
                          flex: 3,
                        ),
                        Container(
                          padding: EdgeInsets.all(16),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            // color: Colors.green,
                            // shape: BoxShape.circle,
                            image: DecorationImage(image: AssetImage(images[1]), fit: BoxFit.cover),
                          ),
                        ),
                        Spacer(
                          flex: 2,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          title[currentPage],
                          style: TextStyle(
                              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Spacer(
                          flex: 2,
                        ),
                        Text(
                          subTitle[currentPage],
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Spacer(),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                                child: TextButton(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Start now',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  style: TextButton.styleFrom(
                                    primary: Colors.white,
                                    onSurface: Colors.white,
                                    backgroundColor: Colors.blue,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            )
                          ],
                        ),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            2,
                            (index) => buildDot(index: index),
                          ),
                        ),
                        Spacer(
                          flex: 3,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  var kAnimationDuration = Duration(milliseconds: 200);
  var kPrimaryColor = Colors.blue;
  var kPrimaryColorInverse = Colors.grey;

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: MediaQuery.of(context).size.width / 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : kPrimaryColorInverse,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
