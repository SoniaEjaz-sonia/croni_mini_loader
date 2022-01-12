import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class EdgeTrimmer extends StatefulWidget {
  const EdgeTrimmer({Key? key}) : super(key: key);

  @override
  State<EdgeTrimmer> createState() => _EdgeTrimmerState();
}

class _EdgeTrimmerState extends State<EdgeTrimmer> {
  late VideoPlayerController _controller;
  ChewieController? _chewieController;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  @override
  void dispose() {
    _controller.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _controller = VideoPlayerController.asset('assets/edge-trimmer.mp4');
    await Future.wait([_controller.initialize()]);
    _createChewieController();
    setState(() {});
  }

  void _createChewieController() {
    _chewieController = ChewieController(
      videoPlayerController: _controller,
      autoPlay: false,
      looping: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF19c57),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 8),
              child: Stack(
                children: [
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: <Widget>[
                      ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                          ),
                          child: Image.asset('images/img30.jpg')),
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                        ),
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.only(
                            top: 15,
                            left: 5,
                            right: 5,
                            bottom: 10,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Edgetrimmer for mini loader",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Edgetrimmer for mini loader – With an edgetrimmer for your mini"
                                " loader, you get sharp and nice edges.",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () => Get.back(),
                    icon: const Icon(Icons.arrow_back_sharp),
                  ),
                ],
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      child: Image.asset(
                        'images/img18.jpg',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            'Edgetrimmer For Mini Loader',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFF19c57),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              'Attachment in the front',
                              'Built for hard use',
                              'Minimum maintenance',
                              'Easy to attach and detach',
                            ]
                                .map(
                                  (item) => Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Icon(
                                        Icons.check,
                                        color: Color(0xFFF19c57),
                                      ),
                                      const SizedBox(width: 10),
                                      Text(
                                        item,
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text(
                        "About Our Edgetrimmer For Mini Loader",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(
                        "An edgetrimmer from Croni helps you to make nice and even edges. An "
                        "edgetrimmer for your mini loader is easy to attach, and will make "
                        "your job in bigger areas easy and fast, and at the same time, gives"
                        " you a nice result. \n\n Our edgetrimmer for mini loader is designed"
                        " so it can be used in hard areas, where it has to be stable. Our "
                        "edgetrimmer is designed so it is easy to attach on our mini loaders,"
                        " so your job can be done quick and flexible.",
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text(
                        "Need guidance regarding our edgetrimmer for mini loader?",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(
                        "We are at Croni always ready to give you guidance about all our mini"
                        " loader and all our attachments, so you can get the tools that fits"
                        " your needs. \n\n An edgetrimmer for mini loader can handle tasks in"
                        " many industries. \n\n Contact us for further information about edgetrimmer"
                        " for mini loader.",
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      child: Image.asset(
                        'images/img18.jpg',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      top: 15,
                      left: 10,
                      right: 5,
                    ),
                    child: const Text(
                      "Benefits Of Edgetrimmer For Mini Loader:",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      top: 15,
                      left: 10,
                      right: 5,
                    ),
                    child: const Text(
                      "- Nice results \n\n "
                      "- Can handle hard tasks \n\n"
                      "- Easy to use \n\n"
                      "- Quick result – save time on your tasks \n\n",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text(
                        "See Our Edgetrimmer In Use In The Video Below:",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(
                        "In the video you can see our edgetrimmer for mini loader being used"
                        " to cut edges around a hedge. \n\n The edgetrimmer always give a nice"
                        " result, and is easy to use for everyone. \n\n The edgetrimmer can be "
                        "used for any edges, and will always give a nice result.",
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: _chewieController != null &&
                            _chewieController!
                                .videoPlayerController.value.isInitialized
                        ? ClipRRect(
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(30.0),
                              bottomRight: Radius.circular(30.0),
                            ),
                            child: Chewie(
                              controller: _chewieController!,
                            ),
                          )
                        : const CircularProgressIndicator(),
                  ),
                ],
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text(
                        "Want To Know More?",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(
                        "Do you want to know more about our edgetrimmer for mini loader? We are"
                        " at Croni always ready for a conversation about our mini loader and"
                        " attachments that fits your needs. \n\n Contact us for further "
                        "information.",
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () => Get.toNamed('/contact'),
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFe98332),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                      child: const Text('Contact Us'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
