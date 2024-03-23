import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:my_portfolio/screens/home/widgets/animated_description_text.dart';
import 'package:my_portfolio/screens/home/widgets/animated_image.dart';
import 'package:my_portfolio/screens/home/widgets/combine_text.dart';
import 'package:my_portfolio/screens/home/widgets/download_button.dart';
import 'package:my_portfolio/screens/home/widgets/headline_text.dart';
import 'package:my_portfolio/utilities/constants';
import 'package:my_portfolio/utilities/responsive.dart';

class IntroBody extends StatelessWidget {
  const IntroBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // if (!Responsive.isDesktop(context))
              //   SizedBox(
              //     height: size.height * 0.06,
              //   ),
              // if (!Responsive.isDesktop(context))
              //   SizedBox(
              //     height: size.height * 0.1,
              //   ),
              const Responsive(
                  desktop: MyPortfolioText(start: 40, end: 50),
                  largeMobile: MyPortfolioText(start: 40, end: 35),
                  mobile: MyPortfolioText(start: 35, end: 30),
                  tablet: MyPortfolioText(start: 50, end: 40)),
              if (kIsWeb && Responsive.isLargeMobile(context))
                Container(
                  height: defaultPadding,
                  color: Colors.transparent,
                ),
              const CombineSubtitleText(),
              const SizedBox(height: defaultPadding / 2),
              const Responsive(
                desktop: AnimatedDescriptionText(start: 14, end: 15),
                largeMobile: AnimatedDescriptionText(start: 14, end: 12),
                mobile: AnimatedDescriptionText(start: 14, end: 12),
                tablet: AnimatedDescriptionText(start: 17, end: 14),
              ),
              const SizedBox(
                height: defaultPadding * 2,
              ),
              const DownloadButton(),
            ],
          ),
        ),
        const Spacer(),
        if (Responsive.isDesktop(context)) const AnimatedImageContainer(),
        const Spacer()
      ],
    );
  }
}
