import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class Bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 1.5,
                    decoration: BoxDecoration(
                      color: Color(0xFFEFF0F1),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(40, 0, 5, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                                      fontSize: 25,
                                      letterSpacing: 0,
                                      fontFamily: 'roboto',
                                      fontWeight: FontWeight.bold,
                                    ),
                                    children: const <TextSpan>[
                                      TextSpan(
                                        text: '.',
                                        style: TextStyle(
                                          fontSize: 25,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.bold,
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
                          width: MediaQuery.sizeOf(context).width * 0.4,
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
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              GestureDetector(
                                onTap: () async {
                                  const url =
                                      'https://www.facebook.com/people/B-HUB/100089167454769/';
                                  if (await canLaunch(url)) {
                                    await launch(url);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                },
                                child: IconButton(
                                  icon: Icon(
                                    Icons.facebook,
                                    color: Colors.black,
                                    size: 24,
                                  ),
                                  onPressed:
                                      () {}, // GestureDetector handles the tap action
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 0),
                                  child: GestureDetector(
                                    onTap: () async {
                                      const url =
                                          'https://www.instagram.com/';
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
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 0, 0),
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
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 0, 0),
                                  child: GestureDetector(
                                    onTap: () async {
                                      const url = 'https://x.com/i/flow/login?redirect_after_login=%2FFollowBhub';
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
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
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
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 1.5,
                    decoration: BoxDecoration(
                      color: Color(0xFFEFF0F1),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(40, 20, 40, 20),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.copyright_sharp,
                      color: Color(0xFF57636c),
                      size: 24,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                      child: Text(
                        '2024',
                        style: TextStyle(
                          fontSize: 16,
                          letterSpacing: 0,
                          color: Color(0xFF67788A),
                          fontFamily: 'roboto',
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Terms',
                      style: TextStyle(
                        fontSize: 16,
                          fontFamily: 'roboto',
                        letterSpacing: 0,
                        color: Color(0xFF67788A),
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                      child: Text(
                        'Privacy',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'roboto',
                          letterSpacing: 0,
                          color: Color(0xFF67788A),
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                      child: Text(
                        'Cookies',
                        style: TextStyle(
                          fontFamily: 'roboto',
                          fontSize: 16,
                          letterSpacing: 0,
                          color: Color(0xFF67788A),
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                      child: Text(
                        'Sitemap',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'roboto',
                          letterSpacing: 0,
                          color: Color(0xFF67788A),
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
