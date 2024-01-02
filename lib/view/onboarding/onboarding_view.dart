import 'package:coffee_shop/view/home_page.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          BackgroundImage(),
          Foreground(),
        ],
      ),
    );
  }
}

class Foreground extends StatelessWidget {
  const Foreground({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            'Coffee so good,\nyour taste buds\nwill love it.',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 34, color: Colors.white),
          ),
          const SizedBox(height: 15),
          const Text('The best grain, the finest roast, the\npowerful flavor.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xffA9A9A9))),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                  (route) => false);
            },
            style: ButtonStyle(
                backgroundColor:
                    const MaterialStatePropertyAll(Color(0xffC67C4E)),
                foregroundColor: const MaterialStatePropertyAll(Colors.white),
                padding: const MaterialStatePropertyAll(
                    EdgeInsets.fromLTRB(0, 25, 0, 25)),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)))),
            child: const Text(
              'Get Started',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Image.asset(
          'assets/images/onboarding.png',
          fit: BoxFit.fitWidth,
        ),
        Flexible(
            child: Container(
          color: Colors.black,
        ))
      ],
    );
  }
}
