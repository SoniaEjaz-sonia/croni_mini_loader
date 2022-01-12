import 'package:carousel_slider/carousel_slider.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

List<T> map<T>(List list, Function handler) {
  List<T> result = [];
  for (var i = 0; i < list.length; i++) {
    result.add(handler(i, list[i]));
  }
  return result;
}

class MLStud extends StatefulWidget {
  const MLStud({Key? key}) : super(key: key);

  @override
  State<MLStud> createState() => _MLStudState();
}

class _MLStudState extends State<MLStud> {
  List<List<String>> croniIndustries = [
    ['Pallet fork for mini loader', 'img15', '/attachments/pallet-fork'],
    ['Grapple rake for mini loader', 'img17', '/attachments/grapple-rake'],
    ['Broom for mini loader', 'img10', '/attachments/broom'],
    ['Grapple bucket for mini loader', 'img13', '/attachments/grapple-bucket'],
  ];

  List<String> images = [
    'img29',
    'img28',
    'img13',
    'img17',
    'img10',
    'img12',
    'img50',
  ];

  int _current = 0;
  late VideoPlayerController _controller1;
  late VideoPlayerController _controller2;
  ChewieController? _chewieController1;
  ChewieController? _chewieController2;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _chewieController1?.dispose();
    _chewieController2?.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _controller1 = VideoPlayerController.asset('assets/grapple-rake.mp4');
    _controller2 = VideoPlayerController.asset('assets/m-l-broom.mp4');
    await Future.wait([_controller1.initialize()]);
    await Future.wait([_controller2.initialize()]);
    _createChewieController1();
    _createChewieController2();
    setState(() {});
  }

  void _createChewieController1() {
    _chewieController1 = ChewieController(
      videoPlayerController: _controller1,
      autoPlay: false,
      looping: false,
    );
  }

  void _createChewieController2() {
    _chewieController2 = ChewieController(
      videoPlayerController: _controller2,
      autoPlay: false,
      looping: false,
    );
  }

  Widget plotImages(List<String> images) {
    if (images.isEmpty) {
      return Container();
    }
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            CarouselSlider(
              items: images.map((image) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0),
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Image.asset(
                        'images/' + image + '.jpg',
                        fit: BoxFit.cover,
                        height: 300.0,
                      ),
                    );
                  },
                );
              }).toList(),
              options: CarouselOptions(
                enableInfiniteScroll: false,
                viewportFraction: 1.0,
                height: 300,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                },
              ),
            ),
            Positioned(
              left: MediaQuery.of(context).size.width / 3.0,
              bottom: 10.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: map<Widget>(images, (index, url) {
                  return Container(
                    width: 10.0,
                    height: 10.0,
                    margin: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current == index ? Colors.white : Colors.orange,
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ],
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
              padding:
                  const EdgeInsets.only(left: 3, right: 3, top: 8, bottom: 0),
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
                          child: Image.asset('images/img46.jpg')),
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
                            children: [
                              const Text(
                                "Mini loader for stud",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "The mini loader that makes your job easy.",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
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
              margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 0),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                      top: 15,
                      left: 10,
                      right: 5,
                    ),
                    child: const Text(
                      "Mini loader for stud – A compact and strong machine that can be used"
                      " by everyone who needs it, with a wide selection of attachments. "
                      "\n\n With a mini loader from Croni you can easily clean up the stud,"
                      " move big amounts of hay, cleared the yard or and the riding tracking,"
                      " and many more tasks. \n\n Call or send an e-mail to find the perfect"
                      " matching and attachments, that fits your needs.",
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
                  Container(
                    padding: const EdgeInsets.only(
                      top: 15,
                      left: 10,
                      right: 5,
                    ),
                    child: const Text(
                      "Croni Mini Loader – Perfect Designate For Jobs At A Stud",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Divider(height: 1.5, color: Colors.black),
                  Container(
                    padding: const EdgeInsets.only(
                      top: 15,
                      left: 10,
                      right: 5,
                    ),
                    child: const Text(
                      "About Mini Loader For Stud",
                      style: TextStyle(
                        fontSize: 20,
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
                      "If you work at a stud, or has to do tasks around at stud, our mini "
                      "loader is the perfect tool for you. Our mini loader is designate"
                      " so it perfectly fits the tasks you have to do at a stud. \n\n"
                      " With our wide selection of attachments, we can modify the mini"
                      " loader so it fits exactly the needs you have. We will together"
                      " find a solution so your tasks can be solved, and we make sure"
                      " that you have the right machine with the right attachments.",
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
                  Container(
                    padding: const EdgeInsets.only(
                      top: 15,
                      left: 10,
                      right: 5,
                    ),
                    child: const Text(
                      "Do You Have Any Questions?",
                      style: TextStyle(
                        fontSize: 20,
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
                      "At Croni we are always ready to answer the question you may have, "
                      "and at the same time give you guidance about mini loaders, so "
                      "you can get the maximum benefit from your machine. Through our "
                      "experience in the field, we will cooperate to find the right "
                      "solution that fits your situation, so the mini loader will be "
                      "efficient for your tasks. \n\n Contact us for further information,"
                      " or to get an offer on mini loaders and attachments.",
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
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ListTile(
                      title: Text(
                        "See Here How Our Mini Loader From Croni Can Help You With The Work At"
                        " Your Stud, So You Have More Time To Take Care Of Your Horses.",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Card(
                      elevation: 10,
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
                              height: 200,
                              width: double.infinity,
                              child: _chewieController1 != null &&
                                      _chewieController1!.videoPlayerController
                                          .value.isInitialized
                                  ? Chewie(
                                      controller: _chewieController1!,
                                    )
                                  : const CircularProgressIndicator(),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              top: 15,
                              left: 10,
                              right: 5,
                            ),
                            child: const Text(
                              "Grapple Rake For Mini Loader",
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
                              "A grapple rake for mini loader is an essential tool for working at a stud.",
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
                      elevation: 10,
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
                              height: 200,
                              width: double.infinity,
                              child: _chewieController2 != null &&
                                      _chewieController2!.videoPlayerController
                                          .value.isInitialized
                                  ? Chewie(
                                      controller: _chewieController2!,
                                    )
                                  : const CircularProgressIndicator(),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              top: 15,
                              left: 10,
                              right: 5,
                            ),
                            child: const Text(
                              "Broom For Mini Loader",
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
                              "With a broom for your mini loader, you can easily sweep large areas.",
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
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                      top: 15,
                      left: 10,
                      right: 5,
                    ),
                    child: const Text(
                      "The Mini Loader Is Built To Be Used For Daily Tasks",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  plotImages(images),
                  Container(
                    padding: const EdgeInsets.only(
                      top: 15,
                      left: 10,
                      right: 5,
                    ),
                    child: const Text(
                      "At Croni we have many years of experience with machines at a stud."
                      " We know that it is important to have a strong machine that can"
                      " lift heavy objects, while it also has to come around in small "
                      "paths. \n\n That is why we have developed a mini loader, that "
                      "with its width of only 78 cm, so it can come around in small "
                      "paths. Our mini loader makes it a lot easier and faster to clean"
                      " out stables, feed your animals, and much more, so you can save "
                      "time and spend it with your animals. \n\n The mini loader is "
                      "equipped with a strong motor from Kubota, which makes the machine"
                      " strong and able to lift heavy objects. We are competitive on the"
                      " price, and at the same time we offer a wide selection of attachments,"
                      " that we will find together with you, so your work at your stud will"
                      " be as efficient as possible.",
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
                        "Attachments For Croni Mini Loader",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(
                        "The benefits the most from your Croni mini loader, it is important"
                        " to have the aright attachments that fits your job. That is "
                        "why we can offer you a wide selection of attachments, so your "
                        "job at the stud becomes much easier. You can here see some of "
                        "our attachments, that fits perfectly for the tasks at a stud.",
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: SizedBox(
                      height: 220,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: croniIndustries.length,
                        itemBuilder: (_, index) => InkWell(
                          onTap: () => Get.toNamed(croniIndustries[index][2]),
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
                                    'images/${croniIndustries[index][1]}.jpg',
                                    height: 150,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    width: 180,
                                    child: Text(
                                      croniIndustries[index][0],
                                      maxLines: 3,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFFF19c57),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
