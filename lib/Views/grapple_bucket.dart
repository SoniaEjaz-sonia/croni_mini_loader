import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class GrappleBucket extends StatefulWidget {
  const GrappleBucket({Key? key}) : super(key: key);

  @override
  State<GrappleBucket> createState() => _GrappleBucketState();
}

class _GrappleBucketState extends State<GrappleBucket> {
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
    _controller = VideoPlayerController.asset('assets/grapple-bucket.mp4');
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
                          child: Image.asset('images/img31.jpg')),
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
                                "Grapple bucket for mini loader",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Grapple bucket for mini loader – With a grapple bucket for mini"
                                " loader from Croni, your work gets more efficient and makes"
                                " it easier.",
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
                        'images/img13.jpg',
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
                            'Grapple Bucket For Mini Loader',
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
                              'Easy attached in the front',
                              'Built to handle hard work',
                              'Long term solution',
                              'Handles heavy lifting',
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
                        "About Grapple Bucket For Mini Loader",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(
                        "A grapple bucket for mini loader makes the job easier and faster. You"
                        " can with a grapple bucket for mini loader lift heavy objects, such"
                        " as hay bales, soil, wood and much more. A grapple bucket for mini"
                        " loader fits different tasks, which means it can be used in many"
                        " industries. \n\n Grapple bucket for mini loader is easy to attach"
                        " in the front, requires a minimum of maintenance, which makes it a"
                        " long term solution for your jobs.",
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
                        "Want to know more about grapple bucket for mini loader?",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(
                        "We are always ready to guide you to find the right attachments that"
                        " fits your needs. \n\n We have a lot of experience within the use"
                        " of mini loaders, and can give you the best counseling. If you have"
                        " questions or are interested in our products, you can contact us for"
                        " an offer. \n\n Contact us here if you need further information about"
                        " grapple bucket for mini loader.",
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
                        'images/img13.jpg',
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
                      "Benefits Of Grapple Bucket For Mini Loader",
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
                      "- Easy to control \n\n "
                      "- Can be used for many tasks \n\n"
                      "- Solid design \n\n"
                      "- Minimum maintenance \n\n"
                      "- Makes the job more efficient \n\n",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
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
                  const ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text(
                        "See Our Grapple Bucket For Mini Loader In Use:",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(
                        "In the video below you can see our grapple bucket for mini loader being"
                        " used to lift hay. As you can see in the video, our grapple bucket"
                        " for mini loader is easy to use, and can lift hay bales easy and "
                        "elegant. With a grapple bucket attached to your mini loader your work"
                        " with lifting heavy objects gets easy. The grapple bucket for mini "
                        "loader fits many types of tasks, which makes it a flexible tool on "
                        "every workplace.",
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
                        "Need A Different Bucket?",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: SizedBox(
                      height: 350,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          InkWell(
                            onTap: () => Get.toNamed('/attachments/bucket'),
                            child: Card(
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(30.0)),
                                    child: Image.asset(
                                      'images/img16.jpg',
                                      height: 150,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      width: 180,
                                      child: ListTile(
                                        title: Padding(
                                          padding: EdgeInsets.only(bottom: 8.0),
                                          child: Text(
                                            'Bucket For Mini Loader',
                                            maxLines: 2,
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFFF19c57),
                                            ),
                                          ),
                                        ),
                                        subtitle: Text(
                                          'If you need a bucket for heavy goods, you can read more'
                                          ' about our bucket for mini loader here.',
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => Get.toNamed(
                                '/attachments/light-material-bucket'),
                            child: Card(
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(30.0)),
                                    child: Image.asset(
                                      'images/img29.jpg',
                                      height: 150,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      width: 180,
                                      child: ListTile(
                                        title: Padding(
                                          padding: EdgeInsets.only(bottom: 8.0),
                                          child: Text(
                                            'Light Material Bucket For Mini Loader',
                                            maxLines: 2,
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFFF19c57),
                                            ),
                                          ),
                                        ),
                                        subtitle: Text(
                                          'If you need a larger bucket, that is built for handling'
                                          ' light goods, you can read more about our light '
                                          'material bucket for mini loader here.',
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
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
                        "Do you want to know more about our grapple bucket for mini loader or"
                        " other attachments that fits your needs? You can always contact "
                        "Croni, where we are ready to give you counseling and advice on "
                        "which attachments you should pick. Contact us for further information.",
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
