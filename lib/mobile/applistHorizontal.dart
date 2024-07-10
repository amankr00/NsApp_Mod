import 'dart:async';
import 'package:flutter/material.dart';

class HorizontalListView extends StatefulWidget {
  @override
  _HorizontalListViewState createState() => _HorizontalListViewState();
}

class _HorizontalListViewState extends State<HorizontalListView> {
  late ScrollController _scrollController;
  late Timer _timer;
  double _scrollSpeed = 50; // pixels per second
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _startAutoScroll();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _timer?.cancel();
    super.dispose();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(Duration(milliseconds: 20), (timer) {
      if (_scrollController.hasClients) {
        final maxScrollExtent = _scrollController.position.maxScrollExtent;
        final currentPosition = _scrollController.position.pixels;
        final newPosition = currentPosition + (_scrollSpeed * 0.009);

        if (newPosition >= maxScrollExtent) {
          _scrollController.jumpTo(0);
        } else {
          _scrollController.jumpTo(newPosition);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      controller: _scrollController,
      scrollDirection: Axis.horizontal,
      itemCount: 9,
      itemBuilder: (context, index) {
        if (index == 0) {
          return Container(
              width: MediaQuery.of(context).size.width * 0.1,
              margin: EdgeInsets.only(right : 80.0, left : 100),
              child: Container(
                  child: ClipRect(
                      child: Image.asset('assets/images/prathmikta.png'))));
        } else if (index == 1) {
          return Container(
              width: MediaQuery.of(context).size.width * 0.1,
              margin: EdgeInsets.only(right : 80.0),
              child: Container(
                  child: ClipRect(
                      child: Image.asset('assets/images/samadhan.png'))));
        } else if (index == 2) {
          return Container(
              width: MediaQuery.of(context).size.width * 0.1,
              margin: EdgeInsets.only(right : 80.0),
              child: Container(
                  child: ClipRect(
                      child: Image.asset('assets/images/samaksh.png'))));
        } else if (index == 3) {
          return Container(
              width: MediaQuery.of(context).size.width * 0.1,
              margin: EdgeInsets.only(right : 80.0),
              child: Container(
                  child: ClipRect(
                      child: Image.asset('assets/images/shravani.png'))));
        } else if (index == 4) {
          return Container(
              width: MediaQuery.of(context).size.width * 0.1,
              margin: EdgeInsets.only(right : 80.0),
              child: Container(
                  child:
                      ClipRect(child: Image.asset('assets/images/iris.png'))));
        } else if (index == 5) {
          return Container(
              width: MediaQuery.of(context).size.width * 0.1,
              margin: EdgeInsets.only(right : 80.0),
              child: Container(
                  child:
                      ClipRect(child: Image.asset('assets/images/home.png'))));
        } else if (index == 6) {
          return Container(
              width: MediaQuery.of(context).size.width * 0.1,
              margin: EdgeInsets.only(right : 80.0),
              child: Container(
                  child: ClipRect(
                      child: Image.asset('assets/images/taskflow.png'))));
        } else if (index == 7) {
          return Container(
              width: MediaQuery.of(context).size.width * 0.1,
              margin: EdgeInsets.only(right : 80.0),
              child: Container(
                  child: ClipRect(
                      child: Image.asset('assets/images/da.png'))));
        }
        else if (index == 8) {
          return Container(
              width: MediaQuery.of(context).size.width * 0.1,
              margin: EdgeInsets.only(right : 80.0),
              child: Container(
                  child: ClipRect(
                      child: Image.asset('assets/images/maa.png'))));
        }
      },
    );
  }
}