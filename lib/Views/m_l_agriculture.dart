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

class MLAgriculture extends StatefulWidget {
  const MLAgriculture({Key? key}) : super(key: key);

  @override
  State<MLAgriculture> createState() => _MLAgricultureState();
}

class _MLAgricultureState extends State<MLAgriculture> {
  List<List<String>> croniIndustries = [
    ['Pallet fork for mini loader', 'img15', '/attachments/pallet-fork'],
    ['Grapple rake for mini loader', 'img17', '/attachments/grapple-rake'],
    ['Rake for mini loader', 'img12', '/attachments/rake'],
    ['Broom for mini loader', 'img10', '/attachments/broom'],
  ];

  List<String> images = [
    'img2',
    'img6',
    'img18',
    'img20',
    'img12',
    'img28',
    'img29',
    'img17',
    'img10',
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
    _controller1 = VideoPlayerController.asset('assets/m-l-grapple-rake.mp4');
    _controller2 = VideoPlayerController.asset('assets/hedgetrimmer.mp4');
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
                                "Mini loader for agriculture",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "Croni Mini Loader For Agriculture – Helps You With Heavy"
                                " Tasks On Your Farm.",
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
                      "Mini loader for agriculture – Croni – A strong, compact mini"
                      " loader that is easy to handle. Croni has a wide selection"
                      " of attachments for your mini loader. \n\n With a mini "
                      "loader from Croni, you can easily clean out the stable,"
                      " set up fences, clear up the yard, only you set the limits."
                      " \n\n Call us to find the perfect machine, with attachments"
                      " that fits the needs you have.",
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
                      "About Mini Loader For Agriculture",
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
                      "Our mini loader is developed to handle all the tasks you have to handle"
                      " in agriculture, in stable or on your farm.With attachments on your"
                      " mini loader, your work with agriculture or on your farm gets more"
                      " efficient, so you can save time to do more tasks during your day."
                      " \n\n With our selection of attachments for mini loader, you can "
                      "add attachments, and modify the machine so it always fits your needs."
                      " The mini loader gets modified for you, where we togehter will find "
                      "the right solution for the tasks you need to do.",
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
                      "In Need For Guidance?",
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
                      "With our wide experience with mini loaders we are able to guide you "
                      "about the use of mini loaders in different industries. If you need"
                      " counseling or advice about the use of mini loaders for agriculture,"
                      " you can always send an e-mail or call us. We are always ready with"
                      " good advice and guidance on how you can benefit the most from our"
                      " mini loader. \n\n Contact us for a conversation about mini loader"
                      " for agriculture, and how we can help you with your needs.",
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
                        "See Here How Our Mini Loader With Different Attachments Can Be Used In Tasks For Agriculture.",
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
                              "Grapple rake for mini loader, the perfect tool for agriculture.",
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
                              "Hedgetrimmer For Mini Loader",
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
                              "Our hedgetrimmer can easily handle large areas of hedges.",
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
                      "The Mini Loader Makes Your Tasks In Agriculture Much Easier.",
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
                      "At Croni we know exactly how you can use a mini loader for agriculture,"
                      " and which attachments you should choose. \n\n The mini loader has to"
                      " be built so it can handle hard tasks for many years. Therefore we "
                      "have designed our mini loader, so it is both durable and easy to "
                      "handle. A good mini loader has to be able to lift heavy objects, "
                      "while it has to be compact and come around in narrow paths. The "
                      "machine has to be able to handle different tasks. We make that "
                      "possible with our selection of attachments, that can be attached in "
                      "the front of the mini loader. \n\n The attachments for mini loader"
                      " is built for the most common tasks you have to do in agriculture "
                      "or on a farm. It is possible to switch between attachments, so you "
                      "always have the tool to handle exactly the task you need. The mini "
                      "loader can for example be used for sweeping large areas, lifting "
                      "heavy objects, trimming hedges, mow your lawn and much more. \n\n We"
                      " are competitive on price, and help you put together the perfect "
                      "solution with attachments for your needs. \n\n The mini loader can "
                      "be produced from only 78 cm in width, and is equipped with a strong"
                      " motor from Kubota, which makes it able to lift heavy objects.",
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
                        "Attachments For Mini Loader",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(
                        "With a mini loader from Croni it is important to have the right "
                        "attachments, so it is modified for the tasks it has to do. That "
                        "is why we offer a wide selection of attachments that makes the "
                        "mini loader efficient. Attachments can be attached and detached "
                        "in the front of the mini loader, and is easy to switch. This means"
                        " you can modify the machine when you need to, and save time on "
                        "your tasks.",
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
