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

class MLHousingAssociation extends StatefulWidget {
  const MLHousingAssociation({Key? key}) : super(key: key);

  @override
  State<MLHousingAssociation> createState() => _MLHousingAssociationState();
}

class _MLHousingAssociationState extends State<MLHousingAssociation> {
  List<List<String>> croniIndustries = [
    ['Pallet fork for mini loader', 'img15', '/attachments/pallet-fork'],
    ['Hedgetrimmer for mini loader', 'img19', '/attachments/hedge-trimmer'],
    ['Rake for mini loader', 'img12', '/attachments/rake'],
    ['Broom for mini loader', 'img10', '/attachments/broom'],
  ];

  List<String> images = [
    'img12',
    'img10',
    'img2',
    'img21',
    'img11',
    'img18',
    'img20',
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
                                "Mini loader for housing association",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "The Perfect Mini Loader To Help You With Heavy Tasks And"
                                " Maintenance In Your Housing Association.",
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
                      "Mini loader for housing association – With the job at a housing"
                      " association you have to handle differents tasks to keep the "
                      "area around the houses or apartments nice and safe. Tasks as "
                      "clearing snow, trimming hedges and maintenance of outdoor areas"
                      " and much more, is easy tasks for our mini loader to handle.",
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
                      "The Perfect Mini Loader To Help You With Heavy Tasks And"
                      " Maintenance In Your Housing Association.",
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
                      "About Mini Loader For Housing Association",
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
                      "With the many heavy tasks in a housing association, it is important "
                      "that the machines that you use are efficient and that they are "
                      "functional. We provide everything from guidance to spare parts "
                      "so you always have the best mini loader, that can handle your job."
                      " \n\n We have many years of technical and practical experience with"
                      " mini loaders for housing association, and we are always ready to "
                      "give you advice about the use of it. \n\n The areas in housing "
                      "associations can be very different, and can have different needs. "
                      "That is why we will give you an offer that fits your needs for the "
                      "job you have to do.",
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
                      "Want to hear more about how you can benefit of our mini loader?",
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
                      "We are always ready for a dialog with our customers. You can always"
                      " contact us for a dialog about how we at Croni can help you with "
                      "our mini loaders. We will always give you guidance and advice in "
                      "the choice and use of mini loaders, and which attachments you should"
                      " use. \n\n Our great experience with mini loaders and attachments"
                      " makes us able to give you the best counseling about the machine."
                      " Contact us for further information.",
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
                        "See Here How Our Mini Loader From Croni Can Make Your Tasks Easier.",
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
                              width: double.infinity,
                              child: Image.asset(
                                'images/img4.jpg',
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
                              "Rake For Mini Loader",
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
                              "Rake for mini loader – Perfect for large areas.",
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
                              "Hedgetrimmer for mini loader – Get your hedges trimmed in no time.",
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
                      "Croni Mini Loader Is Built For Hard Use Everyday – With The Wide"
                      " Selection Of Attachments It Helps Your Tasks At The Housing"
                      " Association.",
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
                      "Our mini loader is developed to handle your tasks every day at a "
                      "housing association. The mini loader is solid designet which makes"
                      " it perfect to handle heavy lifts, hard surfaces and much more."
                      " \n\n The mini loader can with its only 78 cm in width come around"
                      " in narrow spaces, and handle the areas that occurs at housing "
                      "associations. \n\n We have a big experience with mini loaders and"
                      " that is why we know exactly what kind of attachments you need for"
                      " your job. Contact us for an offer, so we can figure out what you"
                      " need together.",
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
                        "With a mini loader from Croni it is important to have the right"
                        " attachments, so you can benfit the most from your mini loader."
                        " That is why we offer a wide selection of attachments, that you "
                        "can attach in the front of the mini loader. We will together "
                        "with you find the solution with mini loader and attachments, "
                        "that fits your needs.",
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
