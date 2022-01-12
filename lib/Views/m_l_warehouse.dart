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

class MLWarehouse extends StatefulWidget {
  const MLWarehouse({Key? key}) : super(key: key);

  @override
  State<MLWarehouse> createState() => _MLWarehouseState();
}

class _MLWarehouseState extends State<MLWarehouse> {
  List<List<String>> croniIndustries = [
    ['Pallet fork for mini loader', 'img15', '/attachments/pallet-fork'],
    ['Bucket for mini loader', 'img16', '/attachments/bucket'],
    ['Broom for mini loader', 'img10', '/attachments/broom'],
    ['Grapple bucket for mini loader', 'img13', '/attachments/grapple-bucket'],
  ];

  List<String> images = [
    'img28',
    'img10',
    'img29',
    'img15',
    'img9',
    'img13',
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
    _controller1 = VideoPlayerController.asset('assets/pallet-fork.mp4');
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
                                "Mini loader for warehouse",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "Croni mini loader is the perfect tool for making your work efficient.",
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
                      "Mini loader for warehouse – A flexible, compact and strong mini "
                      "loader, with a wide selection of attachments. \n\n The mini "
                      "loader is a flexible tool, that with its only 78 cm in width, "
                      "can be use in any warehouses. The mini loader can be modified "
                      "with different attachments, which makes the mini loader able to "
                      "fit the job you have to do.",
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
                      "Mini Loader For Warehouse From Croni",
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
                      "About Mini Loader For Warehouse",
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
                      "Our mini loader from Croni is designate to handle the tasks you have"
                      " to do in a warehouse. The mini loaders design makes it able to "
                      "handle heavy lifts, cleaning tasks and in general moving heavy "
                      "objects. With our wide selection of attachments it is possible to"
                      " make the mini loader fit for the tasks that you need it to handle."
                      " \n\n Our mini loader fits, with its width on only 78 cm, in even "
                      "small paths in a warehouse, and can even go through regular doors."
                      " This makes the mini loader fits any kind of warehouse. The mini"
                      " loader can crack on the middle, which makes it easier to come "
                      "around corners and drive around in a warehouse.",
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
                      "Need guidance on how to use the mini loader in a warehouse?",
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
                      "If you need guidance about the use of our mini loader for your "
                      "warehouse, or any other tasks, you can always contact Croni "
                      "for the best counseling. \n\n We can with our great experience "
                      "within mini loaders give you the best advice about how you can "
                      "use a mini loader. If you got questions or are looking for an "
                      "offer, you can always contact us.",
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
                        "See Here How Our Mini Loader Is Being Used:",
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
                              "Pallet Fork For Mini Loader",
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
                              "Pallet fork for mini loader – An unavoidable attachment for warehouses.",
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
                              "Broom for mini loader – Makes you able to sweep large areas quickly.",
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
                      "Mini Loader For Warehouse From Croni – Built For Hard Use And"
                      " Heavy Tasks.",
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
                      "Our mini loader is flexible, strong and easy to handle, so you can"
                      " save time and energy in your warehouse. Pallets can easily be "
                      "moved in no time, you can qucikly sweep your floor and you can "
                      "come around in narrow paths. \n\n With our mini loader you can "
                      "easily handle the daily tasks. It can lift heavy objects without "
                      "damaging the floor. The mini loader is easy to serve, you can "
                      "easily switch between attachments, so you can get your job done "
                      "as fast as possible. \n\n You can get the Croni mini loader with "
                      "only 78 cm in width, and with a strong motor from Kubota. The "
                      "motor is known for its reliability and durability. \n\n We offer"
                      " for all mini loader a wide selection of attachments, so you can "
                      "get the tools you need for your tasks. The machine is small, "
                      "strong and has good comfort. \n\n Call or send us an e-mail for"
                      " an offer on mini loaders.",
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
                        "To get the best potential of your mini loader, it is important"
                        " that you get the right attachments. That is why we offer "
                        "a selection of different tools, so you can modify your mini "
                        "loader so it always fits your needs. You can here see different"
                        " types of attachments for our mini loaders:",
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
