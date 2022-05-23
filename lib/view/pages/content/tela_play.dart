import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class TelaPlay extends StatefulWidget {
  const TelaPlay({Key? key, this.title, this.url}) : super(key: key);
  final String? title;
  final url;
  @override
  State<TelaPlay> createState() => _TelaPlayState();
}

class _TelaPlayState extends State<TelaPlay> {
  late YoutubePlayerController _controller;

  void runYoutubePlayer() {
    _controller = YoutubePlayerController(
      // initialVideoId: YoutubePlayer.convertUrlToId(
      //     "https://www.youtube.com/watch?v=W-rHIsDFrzQ")!,
      initialVideoId: "W-rHIsDFrzQ",
      flags: YoutubePlayerFlags(
        enableCaption: false,
        isLive: false,
        autoPlay: false,
      ),
    );
  }

  @override
  void initState() {
    runYoutubePlayer();
    _controller.play(); 
    super.initState();
  }

  @override
  void deactivate() {
    _controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: _controller,
        ),
        builder: (context, player) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Assistido"),
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () => {Navigator.pop(context)},
              ),
            ),
            body: Container(
              child: Center(
                child: Column(
                  children: [],
                ),
              ),
            ),
          );
        });
  }
}
