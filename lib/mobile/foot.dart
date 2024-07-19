import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class Foot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height * 1,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: 3,
                decoration: BoxDecoration(
                  color: Color(0xFFEFF0F1),
                ),
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 0.9,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'NS Apps Innovations',
                              style: TextStyle(
                                fontSize: 20,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w900,
                                color: Colors.black
                              ),
                              children: const <TextSpan>[
                                TextSpan(
                                  text: '.',
                                  style: TextStyle(
                                    fontSize: 25,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1,
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 35, 0, 0),
                      child: Text(
                        "At NS Apps Innovations we are passionate team of app developers, we craft powerful tools to fuel your business. We don't just build apps, we guide you through the ever-changing digital landscape, turning your ideas into success stories.",
                        style: TextStyle(
                          color: Color(0xFF67788A),
                          fontSize: 16,
                          fontFamily: 'roboto',
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.facebook,
                    color: Colors.black,
                    size: 24,
                  ),
                  onPressed: () async {
                    const url =
                        'https://www.facebook.com/people/B-HUB/100089167454769/';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                ),
                Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: GestureDetector(
                      onTap: () async {
                        const url = 'https://www.instagram.com/';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(0),
                          child: SvgPicture.asset(
                            'assets/images/instagram.svg',
                            width: 20,
                            height: 20,
                          ),
                        ),
                      ),
                    )),
                Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                    child: GestureDetector(
                      onTap: () async {
                        const url =
                            'https://www.linkedin.com/in/followbhub/?originalSubdomain=in';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(0),
                          child: SvgPicture.asset(
                            'assets/images/linkedin.svg',
                            width: 20,
                            height: 20,
                          ),
                        ),
                      ),
                    )),
                Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                    child: GestureDetector(
                      onTap: () async {
                        const url =
                            'https://x.com/i/flow/login?redirect_after_login=%2FFollowBhub';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(0),
                          child: SvgPicture.asset(
                            'assets/images/tw.svg',
                            width: 20,
                            height: 20,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    )),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                  child: GestureDetector(
                    onTap: () async {
                      const url = 'https://dribbble.com/';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(0),
                        child: SvgPicture.asset(
                          'assets/images/dribbble.svg',
                          width: 24,
                          height: 24,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 3,
              decoration: BoxDecoration(
                color: Color(0xFFEFF0F1),
              ),
            ),
            Container(
              height: MediaQuery.sizeOf(context).height * 0.2,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Terms',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'roboto',
                      letterSpacing: 0,
                      color: Color(0xFF67788A),
                    ),
                  ),
                  Text(
                    'Privacy',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'roboto',
                      letterSpacing: 0,
                      color: Color(0xFF67788A),
                    ),
                  ),
                  Text(
                    'Cookies',
                    style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 0,
                      fontFamily: 'roboto',
                      color: Color(0xFF67788A),
                    ),
                  ),
                  Text(
                    'Sitemap',
                    style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 0,
                      fontFamily: 'roboto',
                      color: Color(0xFF67788A),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.copyright_sharp,
                        color: Color(0xFF57636c),
                        size: 24,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                        child: Text(
                          '2024',
                          style: TextStyle(
                            fontSize: 16,
                            letterSpacing: 0,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
