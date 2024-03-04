import 'package:flutter/material.dart';
import 'package:my_portfolio/utilities/constants';
import 'package:percent_indicator/linear_percent_indicator.dart';

class AnimatedLoadingText extends StatelessWidget {
  const AnimatedLoadingText({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: defaultPadding * 5,
      child: TweenAnimationBuilder(
        duration: const Duration(seconds: 2),
        builder: (context, value, child) => Column(
          children: [
            LinearPercentIndicator(
              lineHeight: 10,
              alignment: MainAxisAlignment.center,
              barRadius: const Radius.circular(5),
              width: 100,
              percent: value * 1,
              progressColor: Colors.deepPurpleAccent,
            ),
            const SizedBox(
              height: defaultPadding / 2,
            ),
            Text(
              '${(value * 100).toInt()}%',
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                        color: Colors.pink,
                        blurRadius: 10,
                        offset: Offset(2, 2)),
                    Shadow(
                        color: Colors.blue,
                        blurRadius: 10,
                        offset: Offset(-2, -2)),
                  ]),
            )
          ],
        ),
        tween: Tween(begin: 0.0, end: 1.0),
      ),
    );
  }
}
