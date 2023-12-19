import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart'; //introduction_screen: ^3.1.12
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:pairingapp/homepage.dart';

//import 'package:loading_animation_widget/loading_animation_widget.dart'; //loading_animation_widget: ^1.2.0+4
//import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart'; //fan_carousel_image_slider: ^0.1.2
//import 'package:flutter_slidable/flutter_slidable.dart';//flutter_slidable: ^3.0.1



void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
    );

    return MaterialApp(
      title: 'Introduction screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const IntroductionScreenExample(),
    );
  }
}

class IntroductionScreenExample extends StatelessWidget {
  const IntroductionScreenExample({super.key});

  static MaterialPageRoute route() => MaterialPageRoute(
        
        builder: (_) => Scaffold(
          body: SafeArea(child: IntroductionScreenExample()),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: IntroductionScreen(
        next: const Icon(Icons.navigate_next),
        // showBackButton: true, ! showBack and showSkip can't be both be true.
        // back: const Icon(Icons.arrow_back),
        
        showSkipButton: true,
        skip: const Text('Skip'),
        onDone: ()=>Index(),
        done: const Text("Done"),
        dotsFlex: 3,
        pages: [
          PageViewModel(
            //! The title/body can either be strings or widgets.
            title: "slide 1",
            body: 'Welcome to the Flutter Catalog app!',
          ),
          PageViewModel(
            title: 'Examples',
            body:
                'You can find many examples here, browse them by category, bookmark your favorite ones!',
            image: Image.asset('images/sifeature.png'),
          ),
          PageViewModel(
            title: 'Preview tab',
            body: 'Open and interact with the preview pages.',
            image: Image.asset('images/sifeature.png'),
          ),
          PageViewModel(
            title: 'Code tab',
            body: "Open the source code tab to see how it's implemented.",
            image: Image.asset('images/sifeature.png'),
          ),
          PageViewModel(
            title: 'Enjoy!',
            bodyWidget: Column(
              children: [
                Text('Explore the demos and learn Flutter anywhere as you go!\n'
                    'And you are more than welcome to contribute to this open-source app :)'),
              ],
            ),
            image: Image.asset('images/sifeature.png'),
          ),
        ],
      ),
    );
  }
}
