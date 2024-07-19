import 'dart:async';
import 'package:flutter/material.dart';

class ContainerList2 extends StatefulWidget {
  @override
  _ContainerList2State createState() => _ContainerList2State();
}

class _ContainerList2State extends State<ContainerList2> {
  final List<Map<String, String>> appData = [
    {
      'image': 'assets/images/csama.png',
      'title': 'Samadhan App',
      'description': 'Revolutionizing travel planning.'
    },
    {
      'image': 'assets/images/csamaksh.png',
      'title': 'Samaksh App',
      'description': 'Revolutionizing travel planning.'
    },
    {
      'image': 'assets/images/ctaskflow.png',
      'title': 'Taskflow App',
      'description': 'Revolutionizing travel planning.'
    },
    {
      'image': 'assets/images/caspire.png',
      'title': 'Aspire App',
      'description': 'Revolutionizing travel planning.'
    },
  ];

  late PageController _controller;
  int currentPage = 0;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    _controller = PageController(viewportFraction: 0.6);
    startTimer();
  }

  @override
  void dispose() {
    timer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 4), (Timer timer) {
      if (currentPage < appData.length - 1) {
        currentPage++;
      } else {
        currentPage = 0;
      }
      _controller.animateToPage(
        currentPage,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      width: MediaQuery.of(context).size.width * 0.4, // Adjust width as needed
      height: MediaQuery.of(context).size.height * 0.9, // Adjust height as needed
      child: PageView.builder(
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        controller: _controller,
        itemCount: appData.length,
        itemBuilder: (BuildContext context, int index) {
          return AnimatedContainerItem(
            index: index,
            currentPage: currentPage,
            data: appData[index],
          );
        },
        onPageChanged: (int page) {
          setState(() {
            currentPage = page;
          });
        },
      ),
    );
  }
}

class AnimatedContainerItem extends StatelessWidget {
  final int index;
  final int currentPage;
  final Map<String, String> data;

  AnimatedContainerItem({required this.index, required this.currentPage, required this.data});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedContainer(
        duration: Duration(milliseconds: 1500),
        curve: Curves.easeInOut,
        width: MediaQuery.of(context).size.width * 0.7, // Adjust width as needed
        height: MediaQuery.of(context).size.height * 0.7, // Adjust height as needed
        margin: EdgeInsets.symmetric(vertical: 10.0), // Adjust vertical margin between containers
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 212, 230, 255),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              height: 100,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage(data['image']!),
                  fit: BoxFit.contain,
                ),
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.25,
              margin: EdgeInsets.all(8),
              child: Text(
                data['title']!,
                style: TextStyle(
                  color: Color(0xff062659),
                  fontFamily: 'roboto',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.28,
              alignment: Alignment.center,
              margin: EdgeInsets.all(8),
              child: Text(
                data['description']!,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff062659),
                  fontFamily: 'roboto',
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContainerList extends StatefulWidget {
  @override
  _ContainerListState createState() => _ContainerListState();
}

class _ContainerListState extends State<ContainerList> {
  final List<Map<String, String>> appData = [
    {
      'image': 'assets/images/cdak.png',
      'title': 'Dak App',
      'description': 'Revolutionizing travel planning'
    },
    {
      'image': 'assets/images/chome.png',
      'title': 'Home App',
      'description': 'Revolutionizing travel planning.'
    },
    {
      'image': 'assets/images/ciris.png',
      'title': 'Iris App',
      'description': 'Simplifies the creation'
    },
    {
      'image': 'assets/images/cprath.png',
      'title': 'Prathmikta App',
      'description': 'Revolutionizing travel planning.'
    },
  ];

  late PageController _controller;
  int currentPage = 0;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    _controller = PageController(viewportFraction: 0.6);
    startTimer();
  }

  @override
  void dispose() {
    timer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 4), (Timer timer) {
      if (currentPage < appData.length - 1) {
        currentPage++;
      } else {
        currentPage = 0;
      }
      _controller.animateToPage(
        currentPage,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView.builder(
        reverse: true,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        controller: _controller,
        itemCount: appData.length,
        itemBuilder: (BuildContext context, int index) {
          return AnimatedContainerItem2(
            index: index,
            currentPage: currentPage,
            data: appData[index],
          );
        },
        onPageChanged: (int page) {
          setState(() {
            currentPage = page;
          });
        },
      ),
    );
  }
}
class AnimatedContainerItem2 extends StatelessWidget {
  final int index;
  final int currentPage;
  final Map<String, String> data;

  AnimatedContainerItem2({required this.index, required this.currentPage, required this.data});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedContainer(
        duration: Duration(milliseconds: 1500),
        curve: Curves.easeInOut,
        width: MediaQuery.of(context).size.width * 0.7, // Adjust width as needed
        height: MediaQuery.of(context).size.height * 0.7, // Adjust height as needed
        margin: EdgeInsets.symmetric(vertical: 10.0), // Adjust vertical margin between containers
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 212, 230, 255),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              height: 100,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage(data['image']!),
                  fit: BoxFit.contain,
                ),
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.25,
              margin: EdgeInsets.all(8),
              child: Text(
                data['title']!,
                style: TextStyle(
                  color: Color(0xff062659),
                  fontFamily: 'roboto',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.28,
              alignment: Alignment.center,
              margin: EdgeInsets.all(8),
              child: Text(
                data['description']!,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff062659),
                  fontFamily: 'roboto',
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class AnimatedContainerItem2 extends StatelessWidget {
//   final int index;
//   final int currentPage;
//   final Map<String, String> data;

//   AnimatedContainerItem2({required this.index, required this.currentPage, required this.data});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: AnimatedContainer(
//         duration: Duration(milliseconds: 500),
//         curve: Curves.easeInOut,
//         width: MediaQuery.of(context).size.width * 0.7, // Adjust width as needed
//         height: MediaQuery.of(context).size.height * 0.7, // Adjust height as needed
//         margin: EdgeInsets.symmetric(vertical: 10.0), // Adjust vertical margin between containers
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20),
//           color: Color.fromARGB(255, 212, 230, 255),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Container(
//               width: MediaQuery.of(context).size.width * 0.7,
//               height: 100,
//               margin: EdgeInsets.all(8),
//               decoration: BoxDecoration(
//               // color:Colors.blue,
//                 color: Colors.white,
//                 image: DecorationImage(
//                   image: AssetImage(data['image']!),
//                   fit: BoxFit.contain,
//                 ),
//                 borderRadius: BorderRadius.circular(25),
//               ),
//             ),
//             Container(
//               width: MediaQuery.of(context).size.width * 0.25,
//               margin: EdgeInsets.all(8),
//               child: Text(
//                 data['title']!,
//                 style: TextStyle(
//                   color: Color(0xff062659),
//                   fontFamily: 'roboto',
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             Container(
//               width: MediaQuery.of(context).size.width * 0.4,
//               height: MediaQuery.of(context).size.height * 0.2,
//               alignment: Alignment.center,
//               margin: EdgeInsets.all(8),
//               child: Text(
//                 data['description']!,
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   color: Color(0xff062659),
//                   fontFamily: 'roboto',
//                   fontSize: 16,
//                   fontWeight: FontWeight.normal,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }