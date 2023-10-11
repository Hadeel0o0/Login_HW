import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:login_project/Login_screen.dart';

class IntroScreen extends StatelessWidget {
  final List<PageViewModel> pages = [
    PageViewModel(
      title: "تطبيق أذكار المسلم",
      body: "إقرأ جميع الأذكار بكل سهوله و يسر",
      footer: ElevatedButton(
        onPressed: () {},
        child: const Text("إنطلق"),
      ),
      image: Center(
        child: Image.network('https://images.app.goo.gl/oKZdjzdpG7re3mfFA'),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    PageViewModel(
      title: "تطبيق أذكار المسلم",
      body: " تؤثر قرآءة الأذكار في انشراح الصدر وطمأنينة القلب ومعية الله تعالى وذكره للعبد في الملأ الأعلى ",
      footer: ElevatedButton(
        onPressed: () {},
        child: const Text("إنطلق"),
      ),
      image: Center(
        child: Image.network('https://images.app.goo.gl/oKZdjzdpG7re3mfFA'),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    PageViewModel(

      title: "تطبيق أذكار المسلم",
      body: "الأذكار والأدعية هي نفسها من جملة القدر، فيُدفع بها أقدار أخرى لله تعالى  ",
      footer: ElevatedButton(
        onPressed: () {},
        child: const Text("إنطلق"),
      ),
      image: Center(
        child: Image.network('https://images.app.goo.gl/oKZdjzdpG7re3mfFA'),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.orange[50],
      appBar: appBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0),
        child: IntroductionScreen(
          pages: pages,
          dotsDecorator: const DotsDecorator(
            size: Size(15, 15),
            color: Colors.blueGrey,
            activeSize: Size.square(20),
            activeColor: Colors.cyan,
          ),
          showDoneButton: true,
          done: const Text(
            "أنتهى",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          showSkipButton: true,
          skip: const Text(
            "تخطي",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          showNextButton: true,
          next: const Icon(
            Icons.arrow_forward,
            size: 25,
          ),
          onDone: () => onDone(context),
          curve: Curves.bounceOut,
        ),
      ),
    );
  }

  void onDone(context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool("عن أذكار المسلم", false);
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Login()));
  }

  AppBar appBar() => AppBar(
        title: const Text("عن أذكار المسلم"),
        centerTitle: true,
        backgroundColor: Colors.blue[200],
      );
}
