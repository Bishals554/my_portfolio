import 'package:flutter/material.dart';
import 'package:my_portfolio/screens/widgets/crousel.dart';
import 'package:my_portfolio/screens/widgets/header.dart';
import 'package:my_portfolio/utilities/constants';
import 'package:my_portfolio/utilities/globel.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Globals.scaffoldKey,
      backgroundColor: Colors.black,
      endDrawer: Drawer(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 24.0,
            ),
            child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return headerItems[index].isButton
                    ? MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Container(
                          decoration: BoxDecoration(
                            color: kDangerColor,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 28.0),
                          child: TextButton(
                            onPressed: headerItems[index].onTap,
                            child: Text(
                              headerItems[index].title,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      )
                    : ListTile(
                        title: Text(
                          headerItems[index].title,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 10.0,
                );
              },
              itemCount: headerItems.length,
            ),
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Header(),
              ),
              Carousel(),
              SizedBox(
                height: 20.0,
              ),
              // CvSection(),
              // IosAppAd(),
              SizedBox(
                height: 70.0,
              ),
              // WebsiteAd(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 28.0),
                // child: PortfolioStats(),
              ),
              SizedBox(
                height: 50.0,
              ),
              // EducationSection(),
              SizedBox(
                height: 50.0,
              ),
              // SkillSection(),
              SizedBox(
                height: 50.0,
              ),
              // Sponsors(),
              SizedBox(
                height: 50.0,
              ),
              // TestimonialWidget(),
              // Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
