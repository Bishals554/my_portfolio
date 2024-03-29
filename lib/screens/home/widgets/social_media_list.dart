import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/utilities/constants';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIconList extends StatelessWidget {
  const SocialMediaIconList({super.key});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Transform.scale(
          scale: value,
          child: Column(
            children: [
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () => launchUrl(
                        Uri.parse('https://www.linkedin.com/in/hamad-anwar/')),
                    borderRadius: BorderRadius.circular(20),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: defaultPadding * 0.4),
                      child: SvgPicture.asset(
                        'assets/icons/linkedin.svg',
                        color: Colors.white,
                        height: 15,
                        width: 15,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () =>
                        launchUrl(Uri.parse('https://github.com/Hamad-Anwar')),
                    borderRadius: BorderRadius.circular(20),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: defaultPadding * 0.4),
                      child: SvgPicture.asset(
                        'assets/icons/github.svg',
                        color: Colors.white,
                        height: 15,
                        width: 15,
                      ),
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(20),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: defaultPadding * 0.4),
                      child: SvgPicture.asset(
                        'assets/icons/dribble.svg',
                        color: Colors.white,
                        height: 15,
                        width: 15,
                      ),
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(20),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: defaultPadding * 0.4),
                      child: SvgPicture.asset(
                        'assets/icons/twitter.svg',
                        color: Colors.white,
                        height: 15,
                        width: 15,
                      ),
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(20),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: defaultPadding * 0.4),
                      child: SvgPicture.asset(
                        'assets/icons/linkedin.svg',
                        color: Colors.white,
                        height: 15,
                        width: 15,
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
        );
      },
    );
  }
}
