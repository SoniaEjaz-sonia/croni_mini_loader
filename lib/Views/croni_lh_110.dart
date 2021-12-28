import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CroniLH110 extends StatelessWidget {
  CroniLH110({Key? key}) : super(key: key);

  List<List<String>> croniModels = [
    ['Croni L-80', '/models/croni-l-80'],
    ['Croni LH-80', '/models/croni-lh-80']
  ];
  List<List<String>> croniModelsSpecifications = [
    [
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
    ],
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
  ];

  List<List<String>> croniAttachments = [
    ['Grapple bucket for mini loader', 'img13', '/attachments/grapple-bucket'],
    ['Palletfork for mini loader', 'img15', '/attachments/pallet-fork'],
    ['Bucket for mini loader', 'img16', '/attachments/bucket'],
    ['Grapple rake for mini loader', 'img17', '/attachments/grapple-rake'],
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
            'Croni Model LH-110',
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
                      child: Image.asset('images/img8.jpg')),
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
                            "Croni Model LH-110",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Croni LH-110 is adapted so that it weighs more and has more "
                            "powerful wheels. This helps to make the machine stronger "
                            "so that it can lift more. With its 95 cm in width, the machine"
                            " can get around in areas where the space is narrow. The machine"
                            " is suitable for several different professional groups, where"
                            " the machine must be able to lift heavy objects.",
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
                      "Croni Model LH-110",
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
                      "Croni LH110 is modified so it weights more and has larger wheels. This"
                      " makes the machine stronger, so it can lift more and lift higher. "
                      "The machine can with its 95 cm in width come around in almost any area,"
                      " even in narrow places. The machine fits many industries, where it "
                      "needs to lift heavy objects. \n\n You can click on the buttons below"
                      " to read more about some of the industries where we have experience "
                      "within.",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Wrap(
                    children: [
                      [
                        'Housing Association',
                        '/industries/m-l-housing-association'
                      ],
                      ['Church', '/industries/m-l-church'],
                      ['Warehouse', '/industries/m-l-warehouse'],
                      ['Agriculture', '/industries/m-l-agriculture'],
                      ['Stud', '/industries/m-l-stud'],
                    ]
                        .map<Widget>(
                          (e) => Padding(
                            padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                            child: ElevatedButton(
                              onPressed: () => Get.toNamed(e[1]),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: const BorderSide(color: Colors.black),
                                ),
                              ),
                              child: Text(
                                e[0],
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
                                      'Easy To Handle',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "Croni LH110 can with its 95 cm in width come around in "
                                    "almost any place.",
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
                                    "Croni LH110 is designed so that swtiching between attachments is"
                                    " made easy and efficient.",
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
                                    "Croni LH110 is like our other machines equipped with a strong"
                                    " Kubtoa motor with 26 HP, which secures a stable operation."
                                    " At the same time it is equipped with an extra lifting"
                                    " capacity, so it has a lifting height up to 275 cm.",
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
                                    "LH100 Croni mini loader can lift up to 1100 kg, and has a"
                                    " tipping load up to 720 kg.",
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
                        'images/img8.jpg',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text(
                        "Croni Model LH-110",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(
                        "Croni model LH110 is produced with 100% steel, so the machine is stable"
                        " and can handle heavy jobs. The machine is small but strong, and with"
                        " a width at only 95 cm, and equipped with a Kubota motor with 26 HP."
                        " Croni LH110 has a lifting capacity up to 1100 kg, and a tipping load"
                        " up to 720 kg. This makes the mini loader perfect for heavy lifting"
                        " jobs. \n\n It is easy to easy to switch between attachments, and the"
                        " machine itself is easy operate. Croni LH110 is a machine built for"
                        " heavy use and runs whenever it has to.",
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
                        'images/img6.jpg',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text(
                        "Strong Designed Mini Loader",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(
                        "Croni model LH110 is made for heavy tasks. The machine is designed so it"
                        " has more weight, which makes it possible for the mini loader to lift"
                        " heavy objects. The machine is produced in steel, which makes the "
                        "machine stable when used. \n\n Croni LH110 fits for many industries,"
                        " especially in jobs with heavy lifting tasks. The mini loader can be"
                        " modified with many attachments, which can be used for lifting up to"
                        " 1100 kg. The mini loader is designed so it can handle all the tasks"
                        " you need.",
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
                        "Specifications For Croni Model LH-110",
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
                          'Croni Model LH-80',
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
                        "Strong And Flexible Mini Loader",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(
                        "Croni model LH110 is designed for heavy lifting. The specifications of "
                        "the machine is customized so it fits big and heavy tasks, which the "
                        "machine needs to be able to. With the size of the model, it can come "
                        "around even in small areas, and still do the tasks it needs to.",
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
                      "More Mini Loader Models From Croni:  ",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "We have more mini loaders to offer at Croni, which have different "
                      "specifications that fits different tasks. If you have questions or "
                      "need advice about choice of mini loader, you can always contact us"
                      " for more information about what kind of mini loader you need.",
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
                      "Attachments For Mini Loader",
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
                      "It is imporant that you get the right attachments for your mini loader,"
                      " so it fits the job you need to do. We can at Croni offer you a wide"
                      " selection of attachments, so you can customize your mini loader for"
                      " the tasks you need to do.",
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
                        "Need To Know More?",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(
                        "If you are interested in a mini loader from Croni and needs guidance "
                        "about what model you need to choose, and with what attachments, "
                        "you can always contact us. \n\n We would like to have a dialog about"
                        " your needs, so we can find the best solution for you together. We "
                        "will find the right model and attachments for you. \n\n Furthermore"
                        " we provide spareparts for you, so you always have the best mini "
                        "loader.",
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
