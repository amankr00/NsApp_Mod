import 'package:flutter/material.dart';

// ignore: must_be_immutable
class phase4 extends StatelessWidget {
  String dp;
  String testimonial1;
  String name;

  phase4(this.dp, this.name, this.testimonial1);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 400,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                width: 180,
                height: 180,
                child: ClipOval(
                    child: Image.asset(
                  dp,
                  fit: BoxFit.cover,
                ))),
                SizedBox(width: 70,),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 120,
              ),
              Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  // color: Colors.pink,
                  child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      text: testimonial1,
                      style: TextStyle(
                          color: Color.fromARGB(255, 65, 65, 65),
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w300),
                    ),
                  )),
              SizedBox(
                height: 40,
              ),
              Container(
                  width: MediaQuery.of(context).size.width * 0.38,
                  height: 50,
                  // color: Colors.blue,

                  child: RichText(
                    text: TextSpan(
                      text:
                          // 'Shri Pranav Kumar, I.A.S. , Secretary, Home Department, Bihar ',
                          name,
                      style: TextStyle(
                          color: Color.fromARGB(255, 1, 1, 1),
                          fontSize: 22,
                          fontWeight: FontWeight.w600
                          // fontStyle: FontStyle.italic,
                          ),
                    ),
                  )),
              Container(
                width: 300,
                height: 50,
                // color: Color.fromARGB(255, 105, 202, 108),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SelectableText(
                      'Get started for free',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 17, 146, 251),
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(
                        child: ClipRect(
                      child: Image.asset(
                        'assets/images/ra.png',
                        width: 30,
                        height: 30,
                      ),
                    )),
                  ],
                ),
              )
            ]),
          ],
        ));
  }
}
