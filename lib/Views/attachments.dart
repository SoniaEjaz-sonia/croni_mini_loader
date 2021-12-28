import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Attachments extends StatelessWidget {
  Attachments({Key? key}) : super(key: key);

  List<List<String>> croniAttachments = [
    ['Grapple bucket for mini loader', 'img13', '/attachments/grapple-bucket'],
    ['Rake for mini loader', 'img12', '/attachments/rake'],
    ['Lawn mower for mini loader', 'img11', '/attachments/lawn-mower'],
    ['Gapple rake for mini loader', 'img17', '/attachments/grapple-rake'],
    ['Edgetrimmer for mini loader', 'img18', '/attachments/edge-trimmer'],
    ['Broom for mini loader', 'img10', '/attachments/broom'],
    ['Bucket for mini loader', 'img16', '/attachments/bucket'],
    ['Hedgetrimmer for mini loader', 'img19', '/attachments/hedge-trimmer'],
    ['Auger for mini loader', 'img20', '/attachments/auger'],
    ['Leaf vaccum for mini loader', 'img21', '/attachments/leaf-vacuum'],
    ['Pallet fork for mini loader', 'img15', '/attachments/pallet-fork'],
    ['Snow plow for mini loader', 'img22', '/attachments/snow-plow'],
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF19c57),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: const Color(0xFFF19c57),
          elevation: 0,
          title: const Text(
            'Attachments For Mini Loader',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 8),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                      child: Image.asset('images/img1.jpg')),
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
                            "Attachments For Mini Loader",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Attachments for mini loader – Get the maximum efficiency from your"
                            " mini loader from Croni, by getting the right attachments.",
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
                        'images/img17.jpg',
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
                      "Attachments To Mini Loaders From Croni",
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
                      "To make you get the most efficient mini loader, it is important that you"
                      " get the right attachments. All our attachments for mini loader is"
                      " designed to make your job easier. The attachments can therefore easily"
                      " get attached and detached on your mini loader, so your tasks can be"
                      " done more easy and fast. \n\n We can at Croni offer different types of"
                      " attachments, which fits your needs within different industries. Our"
                      " flexible attachments for mini loader will make your tasks more "
                      "efficient, so you get more time for other tasks.",
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
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      child: Image.asset(
                        'images/img12.jpg',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text(
                        "Contact Us For Further Information",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(
                        "If you need guidance or further information about our attachments for"
                        " mini loader, you can always contact us. \n\n At Croni we are always"
                        " ready to give you the best guidance, where we through a dialog with"
                        " you finds the attachments that fits exactly your needs. You can call"
                        " us or send a mail to get an offer about attachments for mini loader.",
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
                        "Here You Can See Our Selection Of Attachments For Mini Loader",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(
                        "Here you can see our selection of attachments for mini loader. All"
                        " attachments are easy to attach on your mini loader from Croni. "
                        "The attachments are designed to be solid, and to be used in heavy "
                        "tasks, which makes our attachments for mini loader a long term solution.",
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
                        itemCount: croniAttachments.length,
                        itemBuilder: (_, index) => InkWell(
                          onTap: () => Get.toNamed(croniAttachments[index][2]),
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
                                    'images/${croniAttachments[index][1]}.jpg',
                                    height: 150,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    width: 180,
                                    child: Text(
                                      croniAttachments[index][0],
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
                        "Easy To Switch Between Our Attachments For Mini Loader",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(
                        "You can in the video below see how easy it is to switch attachments on"
                        " our mini loader. It is very easy to attach and detach attachments,"
                        " which means you will save time whenever you have to switch for a"
                        " new task. We are on the video demonstrating how easy it is to use"
                        " our attachments. Even though it is easy to switch between our "
                        "attachments, it is always stable and is performing with no issues at"
                        " all. \n\n If you have any questions or need any information about"
                        " our attachments for mini loader, you can always contact us.",
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
                        "Extra Equipment For Mini Loader",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(
                        "You can put on extra equipment on your mini loader, so it can handle"
                        " different tasks. For example you can modify it with twin wheels, "
                        "which is extra wheels we can put on. This makes the mini loader "
                        "stronger in the bottom, which makes it able to lift heavier objects. "
                        "You can then by yourself put them on or take them off. \n\n You can "
                        "in the video below see how fast it is to equip the mini loader with"
                        " twin wheels.",
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
                  const ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text(
                        "Are You Considering Being A Dealer Of Our Attachments For Mini Loader?",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(
                        "If you consider being a dealer of our attachments for mini loader, you"
                        " can contact us, and we will find a solution together. With a cooperation"
                        " with Croni, we can offer you guidance within the use of mini loaders. We"
                        " have a great experience with mini loader which we will share with you,"
                        " and we are always looking for a good cooperation with our dealers.",
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
