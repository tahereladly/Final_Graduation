import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class InstructionsScreen extends StatefulWidget {
  const InstructionsScreen({super.key});

  @override
  State<InstructionsScreen> createState() => _InstructionsScreenState();
}

class _InstructionsScreenState extends State<InstructionsScreen> {
  late final YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();

    const url = "https://youtu.be/rmuWPivH3w4";
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(url) ?? "",
      flags: const YoutubePlayerFlags(
        autoPlay: false,
      ),
    );
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

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: SvgPicture.asset("assets/icons/arrow_right_ic.svg"),
        ),
        title: const Text("Instructions"),
      ),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 16.0),
                child: Text(
                  "Learn how to use the glove",
                  style: TextStyle(
                    color: Color(0xff596992),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 4),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: YoutubePlayerBuilder(
                  player: YoutubePlayer(
                    showVideoProgressIndicator: true,
                    controller: _controller,
                  ),
                  builder: (context, player) => player,
                ),
              ),
              const Text(
                "The instructions to be followed to use the gloves:",
                style: TextStyle(
                  color: Color(0xff596992),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                ),
                child: Column(
                  children: [
                    RichText(
                      text: const TextSpan(
                        text:
                        "1.Consult with a healthcare professional: ",
                        style: TextStyle(
                          color: Color(0xff596992),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        children: [
                          TextSpan(
                            text:
                            "Before using any assistive device,including Parkinson's gloves, it's essential to consult with a healthcare professional.",
                            style: TextStyle(
                              color: Color(0xff8E95A7),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: const TextSpan(
                        text:
                        "2.Choose the right glove: ",
                        style: TextStyle(
                          color: Color(0xff596992),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        children: [
                          TextSpan(
                            text:
                            "There are various types of glove's designed for Parkinson's patients, and each may serve a different purpose. Some focus on reducing tremors, while others may assist with hand dexterity or other specific issues.",
                            style: TextStyle(
                              color: Color(0xff8E95A7),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: const TextSpan(
                        text:
                        "3.Learn how to put on the glove:  ",
                        style: TextStyle(
                          color: Color(0xff596992),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        children: [
                          TextSpan(
                            text:
                            "Some gloves may have specific instructions for putting them on. Follow these instructions carefully to ensure the glove is positioned correctly.",
                            style: TextStyle(
                              color: Color(0xff8E95A7),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: const TextSpan(
                        text:
                        "4.Calibrate the device:  ",
                        style: TextStyle(
                          color: Color(0xff596992),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        children: [
                          TextSpan(
                            text:
                            "If your glove has adjustable settings calibration features, work with a healthcare professional a technician to calibrate it to your specific needs. Proper calibration can significantly improve the effectiveness of the device.",
                            style: TextStyle(
                              color: Color(0xff8E95A7),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: const TextSpan(
                        text:
                        "5.Practice and training: ",
                        style: TextStyle(
                          color: Color(0xff596992),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        children: [
                          TextSpan(
                            text:
                            "Using Parkinson's gloves effectively often requires practice. Work with a physical therapist or occupational therapist to learn how to use the glove correctly and get the most benefit from it.",
                            style: TextStyle(
                              color: Color(0xff8E95A7),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: const TextSpan(
                        text:
                        "6.Monitor and adjust: ",
                        style: TextStyle(
                          color: Color(0xff596992),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        children: [
                          TextSpan(
                            text:
                            "Over time, your needs and symptoms may change. Be prepared to monitor your progress and adjust the settings or usage of the glove as necessary. Regularly.",
                            style: TextStyle(
                              color: Color(0xff8E95A7),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
