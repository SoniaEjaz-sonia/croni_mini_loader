import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CroniLH80 extends StatelessWidget {
  CroniLH80({Key? key}) : super(key: key);

  List<List<String>> croniModels = [
    ['Croni L-80', '/models/croni-l-80'],
    ['Croni LH-110', '/models/croni-lh-110']
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
    ['Grapple bucket for mini loader', 'img13', '/attachments/grapple-bucket'],
    ['Rake for mini loader', 'img12', '/attachments/rake'],
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
            'Croni Model LH-80',
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
                      child: Image.asset('images/img3.jpg')),
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
                            "Croni Model LH-80",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "The Croni Model LH-80 can lift higher without compromising the "
                            "weight of the item to be lifted. The mini loader is thus "
                            "designed to handle tasks within several professional groups.",
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
                      "Croni Model LH-80",
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
                      "Croni LH80 is designed so that i can handle heavy lifting despite of its"
                      " size. The mini loader LH80 can lift objects higher without "
                      "compromising of the weight of the objects. The mini loader is as well"
                      " designed to handle tasks within different industries. This model is"
                      " stable in performance in industries that requires a higher lifting "
                      "function. \n\n You can read more about the use of mini loaders in "
                      "different industries by clicking the buttons below.",
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
                                      'Agile',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "Croni model LH80 can with its only 78 cm in width,"
                                    " come around in almost any area.",
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
                                    "Croni model LH80 is desgined so that you can easily switch"
                                    " between attachments, and get your job done fast.",
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
                                    "Croni LH80 is equipped with a strong motor from Kubota "
                                    "with 26 HP, which makes the mini loader a strong machine.",
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
                                    "Croni LH80 mini loader can lift up to 800 kg, and has a "
                                    "tipping load up to 580 kg.",
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
                        'images/img14.jpg',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text(
                        "About Croni Model LH-80",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(
                        "Our Croni model LH80 is produced in 100% steel. The model is small but"
                        " strong with a width on 78 cm and a 26 HP kubota motor, which makes"
                        " it able to handle all tasks. The model has a lifting capacity up to"
                        " 800 kg, and a tipping load up to 580 kg. \n\n With a Croni model "
                        "LH80 it gets easy to lift heavy objects, maintain outdoor areas and"
                        " clean up areas. It is easy to attach and detach any attachments which"
                        " makes the mini loader flexible to work with, no matter what task you "
                        "need to be done. \n\n Croni LH80 is a machine build to handle tough"
                        " environments and runs whenever it has to.",
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
                        'images/img1.jpg',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text(
                        "Stable Design",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(
                        "Our Croni model LH80 is designed to be stable and strong. The mini loader"
                        " is made of 100% steel, which means the machine can be used in hard"
                        " environment for a long time. Furthermore the machines design is a"
                        " long term solution for your tasks where ever you use it. The mini"
                        " loader requires a minimum of maintanence because of the materials"
                        " it is build with. \n\n Croni model LH80 is a user friendly machine"
                        " and can be used by everyone within different industries, where you"
                        " have tasks with heavy lifting or maintanence of outdoor areas.",
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
                        "Specifications For Croni Model LH-80",
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
                        "Compact And Modified Mini Loader",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(
                        "The mini loader has many specifications which makes it perfect for "
                        "many jobs. The mini loader has a stable design which makes it a "
                        "long term solution. with a design in steel the machine can handle"
                        " heavy tasks.",
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
                      "We can at Croni offer you more models of mini loaders, which you can see"
                      " here below. It is important that you get the right model of mini loader,"
                      " so it can handle the jobs you need to be done. If you have any question"
                      " or want more information on how to get a mini loader, you are welcome to"
                      " contact us.",
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
                        "Do You Need More Information?",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(
                        "You can always contact us for more information. We are always ready to"
                        " support you with our great experience within mini loader and the use"
                        " of it. We can then advice you with a model of mini loader and attachments."
                        " \n\n We want to cooperate with you to find the best solution for your needs."
                        " We can support many industries and modify your mini loader for the job"
                        " you need to do.",
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
