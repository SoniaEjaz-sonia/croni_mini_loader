import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CroniL80 extends StatelessWidget {
  CroniL80({Key? key}) : super(key: key);

  List<List<String>> croniModels = [
    ['Croni LH-80', '/models/croni-lh-80'],
    ['Croni LH-110', '/models/croni-lh-110']
  ];

  List<List<String>> croniModelsSpecifications = [
    [
      'Width 78 cm',
      'Top speed 12 km/h',
      'Foot and hand gas',
      'Lifting height 275 cm',
      'Lifting capacity 800 kg',
      'Tipping load 580 kg',
      'Length 226 cm',
      'Height 197 cm',
      'Weight 940 kg',
      'Hydraulic flow 45 ltr/min',
      'Hydraulic flow 210 Bar',
      'Wheel size 5,75-12',
    ],
    [
      'Width 95 cm',
      'Top speed 12 km/h',
      'Foot and hand gas',
      'Lifting height 275 cm',
      'Lifting capacity 1100 kg',
      'Tipping load 720 kg',
      'Length 239 cm',
      'Height 197 cm',
      'Weight 1160 kg',
      'Hydraulic flow 45 ltr/min',
      'Hydraulic flow 210 Bar',
      'Wheel size 23-8,5-12',
    ],
  ];

  List<List<String>> croniAttachments = [
    ['Broom for mini loader', 'img10', '/attachments/broom'],
    ['Lawn mower for mini loader', 'img11', '/attachments/lawn-mower'],
    ['Rake for mini loader', 'img12', '/attachments/rake'],
    ['Grapple bucket for mini loader', 'img13', '/attachments/grapple-bucket'],
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
            'Croni Model L-80',
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
                            "Croni Model L-80",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "The Croni L-80, is with its size and strong 26 HP Kubota engine,"
                            " perfect for the many tasks it can be exposed to. The mini loader"
                            " is an incredibly strong machine, and the L-80 is therefore well "
                            "suited for several professional groups.",
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
                      "Croni Model L-80",
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
                      "The mini loader is with is size and the strong motor perfect "
                      "for the many tasks it needs to be able to do. The mini loader "
                      "fits in many industries. You can read more about how to use it "
                      "within different industries by clicking the buttons below.",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Wrap(
                    children: [
                      ['Agriculture', '/industries/m-l-agriculture', false],
                      ['Church', '/industries/m-l-church', false],
                      ['Warehouse', '/industries/m-l-warehouse', false],
                      [
                        'Housing Association',
                        '/industries/m-l-housing-association',
                        false
                      ],
                      ['Stud', '/industries/m-l-stud', false],
                      ['PDF', '', true],
                    ]
                        .map<Widget>(
                          (e) => Padding(
                            padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                            child: ElevatedButton(
                              onPressed: e[2] == true
                                  ? null
                                  : () => Get.toNamed(e[1].toString()),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: const BorderSide(color: Colors.black),
                                ),
                              ),
                              child: Text(
                                e[0].toString(),
                                style: const TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Card(
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              side: const BorderSide(
                                  color: Colors.green, width: 1),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: Column(
                                children: const [
                                  ListTile(
                                    contentPadding: EdgeInsets.all(0),
                                    leading: Icon(Icons.circle_outlined),
                                    title: Text(
                                      'Flexible',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "With its only 78 cm in width, Croni L80 can fit almost anywhere.",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Card(
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              side: const BorderSide(
                                  color: Colors.green, width: 1),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: Column(
                                children: const [
                                  ListTile(
                                    contentPadding: EdgeInsets.all(0),
                                    leading: Icon(Icons.circle_outlined),
                                    title: Text(
                                      'Practical Design',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "Croni L80 is designed, so that you can easily attach and"
                                    " detach attachments, and then work more efficient.",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Card(
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              side: const BorderSide(
                                  color: Colors.green, width: 1),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: Column(
                                children: const [
                                  ListTile(
                                    contentPadding: EdgeInsets.all(0),
                                    leading: Icon(Icons.circle_outlined),
                                    title: Text(
                                      'Stable Operation',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "With a strong motor from Kubota with 26 HP, it secures the"
                                    " operation of Croni L80, so it is always functional.",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Card(
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              side: const BorderSide(
                                  color: Colors.green, width: 1),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: Column(
                                children: const [
                                  ListTile(
                                    contentPadding: EdgeInsets.all(0),
                                    leading: Icon(Icons.circle_outlined),
                                    title: Text(
                                      'Strong Machine',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "The compact mini loader Croni L80, can lift up to 800 kg,"
                                    " and has a tipping load at 580 kg.",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
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
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      child: Image.asset(
                        'images/img9.jpg',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text(
                        "About Croni Model L-80",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(
                        "The mini loader is produced in 100% steel, which makes the machine very"
                        " stable and solid. The mini loader is small but strong, with a width"
                        " on 78 cm. The Croni Model L80 has a 26 HP kubota motor. The lifting "
                        "capacity is up to 800 kg, and with a tipping load on 580 kg. \n\n With "
                        "a Croni L80, you get the job done quick and efficient. It is easy to "
                        "attach and detach attachments on the machine, and the mini loader is "
                        "easy to operate. \n\n Croni L80 is a machine build to work under "
                        "difficult condition and to run when it has to.",
                        style: TextStyle(fontSize: 13),
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
                        'images/img9.jpg',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text(
                        "User Friendly Design",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(
                        "The thoughts behind Croni mini loaders, is that the machine has "
                        "to be small and flexible, while it still can lift heavy objects. "
                        "The mini loader has to be able to get used by anyone who needs "
                        "to do tasks with the machine. It is then designed to be easy to "
                        "handle with a user friendly operating system. \n\n Furthermore "
                        "the attachments is easy to attach and detach in the front "
                        "of the mini loader, which makes it easy to switch between "
                        "attachments during the day, so you always can modify the machine "
                        "to your tasks.",
                        style: TextStyle(fontSize: 13),
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
                        'images/img5.jpg',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text(
                        "Specifications For Croni Model L-80",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Croni Model L-80',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFF19c57),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              'Width 78 cm',
                              'Top speed 12 km/h',
                              'Foot and hand gas',
                              'Lifting height 235 cm',
                              'Lifting capacity 800 kg',
                              'Tipping load 580 kg',
                              'Length 226 cm',
                              'Height 197 cm',
                              'Weight 940 kg',
                              'Hydraulic flow 45 ltr/min',
                              'Hydraulic flow 210 Bar',
                              'Wheel size 5,75-12',
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
                  const ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text(
                        "Croni Model L-80 Strong And Agile Mini Loader",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(
                        "The mini loader has many advantages, which makes the total performance"
                        " unique. The mini loader is compact and strong, which makes it "
                        "possible to work in small places, without compromising with the "
                        "functionality. With Croni model L80 you can go through regular "
                        "doors because of the width of the machine.",
                        style: TextStyle(fontSize: 13),
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
                    title: Text(
                      "More Mini Loader Models From Croni:",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "We can at Croni offer you more models of mini loaders. You can see our"
                      " other models here. It is important that you get the mini loader "
                      "with the specifications that you need to do your tasks. If you have"
                      " questions or need guidance about the choice of model, you can always"
                      " contact us for more information.",
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: SizedBox(
                      height: 600,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: croniModels.length,
                        itemBuilder: (_, index) => Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(30.0),
                                  topRight: Radius.circular(30.0),
                                ),
                                child: Image.asset(
                                  'images/img4.jpg',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Text(
                                croniModels[index][0],
                                style: const TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFF19c57),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Column(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: croniModelsSpecifications[index]
                                        .map(
                                          (item) => Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Icon(
                                                Icons.check,
                                                color: Color(0xFFF19c57),
                                              ),
                                              const SizedBox(width: 10),
                                              Text(
                                                item,
                                                style: const TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                        .toList(),
                                  ),
                                  ElevatedButton(
                                    onPressed: () =>
                                        Get.toNamed(croniModels[index][1]),
                                    style: ElevatedButton.styleFrom(
                                      primary: const Color(0xFFe98332),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                      ),
                                    ),
                                    child: Row(
                                      children: const [
                                        Text('Read More'),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.arrow_forward,
                                            size: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
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
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Attachments For Croni Model L-80",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFF19c57),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Text(
                      "To get the maximum benefits of your mini loader, you can modify it with"
                      " attachments, so it fits the tasks you have to do. You can here see"
                      " examples of attachments that you can use with Croni model L80. ",
                      style: TextStyle(
                        fontSize: 13,
                        fontStyle: FontStyle.italic,
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
                        itemBuilder: (_, index) => Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: InkWell(
                            onTap: () =>
                                Get.toNamed(croniAttachments[index][2]),
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
                        'images/img3.jpg',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text(
                        "Du You Have Questions About Mini Loaders?",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(
                        "You can always contact us for further information about mini loader "
                        "or attachments. We would like to cooperate with you, to find the"
                        " solution you need with your mini loader. We are always ready for "
                        "a dialog about how we can help you. \n\n Furthermore we are providing"
                        " service with spareparts so you always can have the best machine.",
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  ),
                  Row(
                    children: [
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
                          child: Row(
                            children: const [
                              Text('Contact Us'),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.arrow_forward,
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
