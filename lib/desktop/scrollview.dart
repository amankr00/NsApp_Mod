import 'dart:async';
import 'package:flutter/material.dart';

class ContainerList3 extends StatefulWidget {
  @override
  _ContainerList3State createState() => _ContainerList3State();
}

class _ContainerList3State extends State<ContainerList3> {
  
  

  final List<Map<String, String>> appData = [
    {
      'image': 'assets/images/csama.png',
      'title': 'Samadhan App',
      'description': 'Revolutionizing travel planning: Our app simplifies booking.'
    },
    {
      'image': 'assets/images/csamaksh.png',
      'title': 'Samaksh App',
      'description': 'Revolutionizing travel planning: Our app simplifies booking.'
    },
    {
      'image': 'assets/images/ctaskflow.png',
      'title': 'Taskflow App',
      'description': 'Revolutionizing travel planning: Our app simplifies booking.'
    },
    {
      'image': 'assets/images/caspire.png',
      'title': 'Aspire App',
      'description': 'Revolutionizing travel planning: Our app simplifies booking.'
    },
  ];

  late PageController _controller;
  int currentPage = 0;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    _controller = PageController(viewportFraction: 0.4);
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
      decoration: BoxDecoration(
      color: Color.fromARGB(255, 234, 193, 225),
      borderRadius: BorderRadius.circular(20),
      border : Border.all(width: 2 , color : Colors.red)
      ),
      width: MediaQuery.of(context).size.width * 0.4, // Adjust width as needed
      // height: MediaQuery.of(context).size.height, // Adjust height as needed
      child: PageView.builder(
        reverse : true,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        controller: _controller,
        itemCount: appData.length,
        itemBuilder: (BuildContext context, int index) {
          return AnimatedContainerItem3(
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

class AnimatedContainerItem3 extends StatelessWidget {
  final int index;
  final int currentPage;
  final Map<String, String> data;

  AnimatedContainerItem3({required this.index, required this.currentPage, required this.data});

  @override
  Widget build(BuildContext context) {
    // Calculate scale factor based on position relative to currentPage
    double scaleFactor = (0.6 - (currentPage - index).abs() * 0.15).clamp(0.4, 0.6);

    // Calculate the scale factor for the center container
    double scale = 0.5;
    if (currentPage == index) {
      scale = 0.7; // Increase size when in center
    }

    return Center(
      child: AnimatedContainer(
        duration: Duration(milliseconds: 1500),
        curve: Curves.easeInOut,
        width: scaleFactor * MediaQuery.of(context).size.width * 0.25, // Adjust width as needed
        height: scaleFactor * MediaQuery.of(context).size.height * 0.55, // Adjust height based on scale factor
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
              width:scaleFactor *  MediaQuery.of(context).size.width * 0.2,
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
class ContainerList4 extends StatefulWidget {
  @override
  _ContainerList4State createState() => _ContainerList4State();
}

class _ContainerList4State extends State<ContainerList4> {
  
  

  final List<Map<String, String>> appData = [
    {
      'image': 'assets/images/csama.png',
      'title': 'Samadhan App',
      'description': 'Revolutionizing travel planning: Our app simplifies booking.'
    },
    {
      'image': 'assets/images/csamaksh.png',
      'title': 'Samaksh App',
      'description': 'Revolutionizing travel planning: Our app simplifies booking.'
    },
    {
      'image': 'assets/images/ctaskflow.png',
      'title': 'Taskflow App',
      'description': 'Revolutionizing travel planning: Our app simplifies booking.'
    },
    {
      'image': 'assets/images/caspire.png',
      'title': 'Aspire App',
      'description': 'Revolutionizing travel planning: Our app simplifies booking.'
    },
  ];

  late PageController _controller;
  int currentPage = 0;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    _controller = PageController(viewportFraction: 0.5);
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
       decoration: BoxDecoration(
      color: Color.fromARGB(255, 193, 234, 212),
      borderRadius: BorderRadius.circular(20),
      border : Border.all(width: 2 , color : Colors.red)
      ),
      width: MediaQuery.of(context).size.width * 0.4, // Adjust width as needed
      // height: MediaQuery.of(context).size.height, // Adjust height as needed
      child: PageView.builder(
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        controller: _controller,
        itemCount: appData.length,
        itemBuilder: (BuildContext context, int index) {
          return AnimatedContainerItem3(
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

class AnimatedContainerItem4 extends StatelessWidget {
  final int index;
  final int currentPage;
  final Map<String, String> data;

  AnimatedContainerItem4({required this.index, required this.currentPage, required this.data});

  @override
  Widget build(BuildContext context) {
    // Calculate scale factor based on position relative to currentPage
    double scaleFactor = (0.6 - (currentPage - index).abs() * 0.1).clamp(0.4, 0.6);

    // Calculate the scale factor for the center container
    double scale = 0.5;
    if (currentPage == index) {
      scale = 0.7; // Increase size when in center
    }

    return Center(
      child: AnimatedContainer(
        duration: Duration(milliseconds: 1500),
        curve: Curves.easeInOut,
        width: scaleFactor * MediaQuery.of(context).size.width * 0.25, // Adjust width as needed
        height: scaleFactor * MediaQuery.of(context).size.height * 0.55, // Adjust height based on scale factor
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
              width:scaleFactor *  MediaQuery.of(context).size.width * 0.2,
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
