import 'package:flutter/material.dart';
import 'package:my_portfolio/screens/home/widgets/intro_body.dart';
import 'package:my_portfolio/screens/home/widgets/social_media_list.dart';
import 'package:my_portfolio/utilities/constants';
import 'package:my_portfolio/utilities/responsive.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.01,
          ),
          if (!Responsive.isLargeMobile(context))
            Column(
              children: [
                const Spacer(),
                TweenAnimationBuilder(
                  tween: Tween(begin: 0.0, end: 1.0),
                  duration: const Duration(milliseconds: 200),
                  builder: (context, value, child) {
                    return InkWell(
                      onTap: () => Scaffold.of(context).openDrawer(),
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: defaultPadding * 2.0 * value,
                        width: defaultPadding * 2.0 * value,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.pinkAccent.withOpacity(.5),
                                  offset: const Offset(1, 1)),
                              BoxShadow(
                                  color: Colors.blue.withOpacity(.5),
                                  offset: const Offset(-1, -1)),
                            ]),
                        child: Center(
                            child: ShaderMask(
                          shaderCallback: (bounds) {
                            return LinearGradient(
                                    colors: [Colors.pink, Colors.blue.shade900])
                                .createShader(bounds);
                          },
                          child: Icon(
                            Icons.menu,
                            color: Colors.white,
                            size: defaultPadding * 1.2 * value,
                          ),
                        )),
                      ),
                    );
                  },
                ),
                const Spacer(
                  flex: 5,
                )
              ],
            ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.02,
          ),
          if (!Responsive.isLargeMobile(context)) const SocialMediaIconList(),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.07,
          ),
          const Expanded(
            child: IntroBody(),
          ),
        ],
      ),
    );
  }
}
