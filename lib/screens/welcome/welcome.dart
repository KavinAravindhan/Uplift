import 'package:cancer_app/screens/login/login.dart';
import 'package:cancer_app/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  AudioPlayer audioPlayer = AudioPlayer();
  AudioPlayerState audioPlayerState = AudioPlayerState.PLAYING;
  String url =
      "https://2u039f-a.akamaihd.net/downloads/ringtones/files/mp3/temple-bell-2426.mp3";
  int i = 1;
  int count = 0;

  @override
  void dispose() {
    super.dispose();
    audioPlayer.release();
    audioPlayer.dispose();
  }

  playMusic() async {
    await audioPlayer.play(url);
  }

  stopMusic() async {
    await audioPlayer.stop();
  }

  @override
  Widget build(BuildContext context) {
// this must be a top-level function

    SizeConfig().init(context);
    if (i == 1) {
      playMusic();
    }

    return Scaffold(
      body: Stack(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Login()));
            },
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Image(
                image: AssetImage("assets/welcome/BG/BG.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: getProportionateScreenHeight(493),
              left: getProportionateScreenWidth(7),
            ),
            child: Text(
              "Welcome",
              style: TextStyle(
                  color: Colors.black.withOpacity(0.12),
                  fontFamily: "Google Sans",
                  fontSize: getProportionateScreenWidth(85),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: getProportionateScreenHeight(570)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: getProportionateScreenHeight(18)),
                      child: Text(
                        "to",
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.18),
                            fontFamily: "Google Sans",
                            fontSize: getProportionateScreenWidth(28),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      "UpLift",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Google Sans",
                          fontSize: getProportionateScreenWidth(108),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(30),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: getProportionateScreenWidth(35)),
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: getProportionateScreenWidth(306.88),
                            height: getProportionateScreenHeight(71),
                            child: Image(
                              image: AssetImage(
                                  "assets/welcome/MuteTextBG/MuteTextBG.png"),
                              fit: BoxFit.contain,
                            ),
                          ),
                          GestureDetector(
                            child: Icon(
                                audioPlayerState == AudioPlayerState.PLAYING
                                    ? Icons.volume_up_rounded
                                    : Icons.volume_off_rounded),
                            onTap: () {
                              setState(() {
                                print(audioPlayerState);
                                if (i == 1) {
                                  stopMusic();
                                  audioPlayerState = AudioPlayerState.STOPPED;
                                  print("stopped");
                                  i = 0;
                                } else {
                                  i = 1;
                                  audioPlayerState = AudioPlayerState.PLAYING;
                                }
                              });
                            },
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: getProportionateScreenWidth(50),
                          top: getProportionateScreenHeight(15),
                        ),
                        child: Text(
                          "You can mute the sound\nif you don't want it",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xFF583F00),
                              fontFamily: "Google Sans",
                              fontSize: getProportionateScreenWidth(15),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
