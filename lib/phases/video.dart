import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class VideoPlayerScreen extends StatefulWidget {

  const VideoPlayerScreen({super.key});

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.asset("assets/videos/6091129-uhd_3840_2160_25fps.mp4")
      ..initialize().then((_) {
        setState(() {});
      });

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      aspectRatio: _videoPlayerController.value.aspectRatio,
      autoPlay: true,
      fullScreenByDefault : true,
      looping: true,
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
    width: MediaQuery.of(context).size.width * 0.7,
    height: MediaQuery.of(context).size.height * 0.5,
    
    // height: 400,
    color: Colors.purple,
        child: _videoPlayerController.value.isInitialized
            ? GestureDetector(
                onTap: () {
                  if (_videoPlayerController.value.isPlaying) {
                    _videoPlayerController.pause();
                  } else {
                    _videoPlayerController.play();
                  }
                },
                onDoubleTap: () {
                  _videoPlayerController.seekTo(
                      _videoPlayerController.value.position +
                          Duration(seconds: 10));
                },
                onHorizontalDragUpdate: (details) {
                  if (details.delta.dx > 0) {
                    _videoPlayerController.seekTo(
                        _videoPlayerController.value.position +
                            Duration(seconds: 5));
                  } else {
                    _videoPlayerController.seekTo(
                        _videoPlayerController.value.position -
                            Duration(seconds: 5));
                  }
                },
                child: Chewie(
                  controller: _chewieController!,
                ),
              )
            : CircularProgressIndicator(),
    );
  }
}
