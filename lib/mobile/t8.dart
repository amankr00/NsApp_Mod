import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
// class ZoomOnScroll extends StatefulWidget {
//   @override
//   _ZoomOnScrollState createState() => _ZoomOnScrollState();
// }

// class _ZoomOnScrollState extends State<ZoomOnScroll> {
//   double _scale = 1.0;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width, // Set container width
//       child: NotificationListener<ScrollNotification>(
//         onNotification: (notification) {
//           if (notification is ScrollUpdateNotification && notification.scrollDelta != null) {
//             double safeScrollDelta = notification.scrollDelta!.abs();
//             setState(() {
//               _scale = (1.0 + safeScrollDelta / 1000).clamp(0.5, 5.0);
//               print('Current scale: $_scale'); // For debugging
//             });
//           }
//           return true;
//         },
//         child: InteractiveViewer(
//           child: Image.asset(
//             'assets/images/clu.jpg',
//           ),
//           minScale: 0.5,
//           maxScale: 50.0,
//         ),
//       ),
//     );
//   }
// }





class ZoomImageScroll extends StatefulWidget {
  @override
  _ZoomImageScrollState createState() => _ZoomImageScrollState();
}

class _ZoomImageScrollState extends State<ZoomImageScroll> {
  late PageController _pageController;
  double _scaleFactor = 1.0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView.builder(
        controller: _pageController,
        scrollDirection: Axis.vertical,
        onPageChanged: (index) {
          setState(() {
            _scaleFactor = 1 + (_pageController.offset / 300);
            if (_scaleFactor < 1) _scaleFactor = 1;
            if (_scaleFactor > 3) _scaleFactor = 3;
          });
        },
        itemBuilder: (context, index) {
          return Column(
            children: [
              Transform.scale(
                scale: _scaleFactor,
                child: Container(
                  height: 400, // Adjust the height as needed
                  child: PhotoView(
                    imageProvider: NetworkImage('https://example.com/your-image.jpg'),
                    minScale: PhotoViewComputedScale.contained,
                    maxScale: PhotoViewComputedScale.covered * 3,
                  ),
                ),
              ),
              Container(
                height: 1000, // to enable scrolling
                color: Colors.grey[200],
              ),
            ],
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}



