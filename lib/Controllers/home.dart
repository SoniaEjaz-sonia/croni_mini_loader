import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  List<List<String>> croniModels = [
    ['Croni L-80', '/models/croni-l-80'],
    ['Croni LH-80', '/models/croni-lh-80'],
    ['Croni LH-110', '/models/croni-lh-110'],
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

  List<List<dynamic>> drawerItems = [
    [
      'Mini Loader',
      Icons.directions_bus,
      '/home',
      [[]],
    ],
    [
      'Our Models',
      Icons.model_training,
      '/models',
      [
        ['Croni L-80', '/models/croni-l-80'],
        ['Croni LH-80', '/models/croni-lh-80'],
        ['Croni LH-110', '/models/croni-lh-110'],
      ],
    ],
    [
      'Attachments',
      Icons.attach_file_outlined,
      '/attachments',
      [
        ['Auger for mini loader', '/attachments/auger'],
        ['Broom for mini loader', '/attachments/broom'],
        ['Bucket for mini loader', '/attachments/bucket'],
        ['Edgetrimmer for mini loader', '/attachments/edge-trimmer'],
        ['Grapple bucket for mini loader', '/attachments/grapple-bucket'],
        ['Grapple rake for mini loader', '/attachments/grapple-rake'],
        ['Hay bale grapple for mini loader', '/attachments/hay-bale-grapple'],
        ['Hedgetrimmer for mini loader', '/attachments/hedge-trimmer'],
        ['Lawn mower for mini loader', '/attachments/lawn-mower'],
        ['Leveller for mini loader', '/attachments/leveller'],
        [
          'Light material bucket for mini loader',
          '/attachments/light-material-bucket'
        ],
        ['Leaf vaccum for mini loader', '/attachments/leaf-vacuum'],
        ['Pallet fork for mini loader', '/attachments/pallet-fork'],
        ['Rake for mini loader', '/attachments/rake'],
        ['Snow plow for mini loader', '/attachments/snow-plow'],
      ],
    ],
    [
      'Industries',
      Icons.collections_bookmark,
      '/industries',
      [
        ['Mini loader for agriculture', '/industries/m-l-agriculture'],
        ['Mini loader for church', '/industries/m-l-church'],
        [
          'Mini loader for housing association',
          '/industries/m-l-housing-association'
        ],
        ['Mini loader for stud', '/industries/m-l-stud'],
        ['Mini loader for warehouse', '/industries/m-l-warehouse'],
      ],
    ],
    [
      'Our Dealers',
      Icons.face,
      '/dealers',
      [
        ['Become a dealer', '/dealers/become-a-dealer']
      ],
    ],
    [
      'Contact Us',
      Icons.account_box,
      '/contact',
      [[]]
    ],
    [
      'About Us',
      Icons.stars,
      '/about',
      [
        [],
        // ['News and events', '/about/news-and-events'],
      ],
    ],
  ];

  Widget _createHeader() {
    return DrawerHeader(
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Image.asset('images/logo.png'),
      ),
    );
  }

  Widget _createDrawerItem(List<dynamic> drawerItem,
      {IconData? icon, String? text, GestureTapCallback? onTap}) {
    if (drawerItem[3][0].isNotEmpty) {
      return Container(
        margin: const EdgeInsets.only(left: 1.0),
        child: ExpansionTile(
          collapsedIconColor: Colors.black,
          expandedAlignment: Alignment.topRight,
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          leading: Icon(drawerItem[1]),
          title: GestureDetector(
            child: Text(drawerItem[0]),
            onTap: () => Get.toNamed(drawerItem[2]),
          ),
          children: drawerItem[3].map<Widget>(
            (item) {
              return Container(
                margin: const EdgeInsets.only(left: 55),
                child: Card(
                  elevation: 1,
                  child: ListTile(
                    title: Text(item[0]),
                    onTap: () => Get.offAndToNamed(item[1]),
                  ),
                ),
              );
            },
          ).toList(),
        ),
      );
    }

    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(text!),
          )
        ],
      ),
      onTap: onTap,
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF19c57),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          toolbarHeight: 120,
          backgroundColor: Colors.white,
          elevation: 0,
          flexibleSpace: ClipPath(
            clipper: WaveClipperTwo(),
            child: Container(
              color: const Color(0xFFF19c57),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset(
                    'images/logo.png',
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
            ),
          ),
        ),
        endDrawer: Drawer(
          child: Column(
            children: [
              _createHeader(),
              const Divider(),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: drawerItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    return _createDrawerItem(
                      drawerItems[index],
                      icon: drawerItems[index][1],
                      text: drawerItems[index][0],
                      onTap: () => index == 0
                          ? Get.offAllNamed('/home')
                          : Get.toNamed(drawerItems[index][2]),
                    );
                  },
                ),
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () =>
                          _launchURL("https://www.facebook.com/cronieu"),
                      icon: Image.asset('images/fb.png')),
                  IconButton(
                      onPressed: () => _launchURL(
                          "https://www.linkedin.com/company/71562210"),
                      icon: Image.asset('images/linkedin.png')),
                  IconButton(
                      onPressed: () => _launchURL(
                          "https://www.youtube.com/channel/UCa-GZ4RvvX0_pcp1E20z5Gg"),
                      icon: Image.asset('images/yt.png')),
                  IconButton(
                      onPressed: () => _launchURL(
                          "https://www.instagram.com/cronieu/?hl=da"),
                      icon: Image.asset('images/insta.png')),
                ],
              ),
              const Divider(),
            ],
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
                        children: [
                          const Text(
                            "Mini loader",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            "Strong And Flexible Machine That Helps You With All Your Tasks.",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            "Read all about Croni mini loaders. We can offer three"
                            " different models of mini loaders, L-80, LH-80 and LH-10. "
                            "Below you can read all about our mini loaders, and why it "
                            "is perfectly suitable for your specific work tasks!",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                          Row(
                            children: [
                              ElevatedButton(
                                onPressed: () => Get.toNamed('/models'),
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(0xFFe98332),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                ),
                                child: const Text('Our Models'),
                              ),
                              const SizedBox(width: 20),
                              ElevatedButton(
                                onPressed: () => Get.toNamed('/attachments'),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: const BorderSide(color: Colors.white),
                                  ),
                                ),
                                child: const Text('Attachments'),
                              ),
                            ],
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
                        'images/img2.jpg',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  ExpansionTile(
                    title: const Text(
                      "The Mini Loader From Croni Has A Compact And Solid Design",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Card(
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(13.0),
                                child: Column(
                                  children: const [
                                    Text(
                                      'Compact',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "The Croni mini loader is with its size only 78-95 cm in width,"
                                      " the size gives the mini loader an advantage as it can make "
                                      "it through even normal sized doors. The mini loader, "
                                      "can be used almost everywhere because of its compact size.",
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
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(13.0),
                                child: Column(
                                  children: const [
                                    Text(
                                      'Strong',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "Even though that the all the models of mini loaders from Croni"
                                      " are designed to be compact, the machine is as strong as "
                                      "bigger machines. This is made possible with the perfect"
                                      " balance of the weight of the mini loader, and with the "
                                      "strong motor from Kubota.!",
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
                      Row(
                        children: [
                          Expanded(
                            child: Card(
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(13.0),
                                child: Column(
                                  children: const [
                                    Text(
                                      'Easy to handle',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "The Croni mini loader is designed so it is easy to handle. "
                                      "The mini loader and the many attachments that we offer, "
                                      "are easy to use for everyone.",
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
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(13.0),
                                child: Column(
                                  children: const [
                                    Text(
                                      'Wide attachment range',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "The mini loader can be attached with several attachments from "
                                      "Croni such as a pallet fork, so that you can do every task"
                                      " that is needed with the mini loader from Croni.",
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
                    ],
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
                  const ExpansionTile(
                    title: Text(
                      "Why A Mini Loader From Croni?",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    children: [
                      ListTile(
                        subtitle: Text(
                          "A mini loader from Croni is developed to be functional "
                          "in small areas. With its width on 78-95 cm, "
                          "it can come around anywhere.",
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ),
                      ListTile(
                        subtitle: Text(
                          "While the mini loader from Croni has a compact size, "
                          "it is designed to perform just as well as bigger machines."
                          " This means that the functionality of the mini loader does not compromise."
                          " It can, despite of its size, easily lift heavy objects during your tasks.",
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ),
                      ListTile(
                        subtitle: Text(
                          "Our mini loader is produced in 100% steel, which means the machine"
                          " is solid and only requires a minimum of maintenance. "
                          "Furthermore the mini loader is designed to be a reliable tool"
                          " and easy to operate.",
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
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
                    title: Text(
                      "Overview Of Mini Loader Models From Croni:",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Here you can se the different models we can offer you from Croni."
                      " The machines are designed to be compact and strong. "
                      "The mini loader can with its 78 cm get through common doors, "
                      "and crack in the middle, which makes it easy to come around even"
                      " sharp corners. The machine is equipped with a motor from Kubota,"
                      " which makes it a strong machine, despite its size.",
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
                  const ListTile(
                    title: Text(
                      "Customize Your Mini Loader",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
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
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                          ),
                          child: Image.asset('images/img5.jpg'),
                        ),
                        const ListTile(
                          title: Text(
                            "Attachments From Croni",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Padding(
                            padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                            child: Text(
                              "At Croni we have a wide range of attachments, that can be used"
                              " to customize your mini loader so it fits exactly the tasks"
                              " you need to be done. Our many years of experience within"
                              " different industries such as farming, has made us able to"
                              " design a variety of attachments that can be perfectly "
                              "fitted onto the Croni mini loaders. \n \n We can offer"
                              " attachments that fits within many industries. "
                              "The attachments is attached in the front of the mini "
                              "loader, and is easy attach and detach. This makes it "
                              "easy to operate, which will make you save time and "
                              "energy, so you can do more tasks during your day. \n \n "
                              "The attachments is designed and built to be solid and stable,"
                              " so it can handle heavy tasks and tasks on hard surfaces."
                              " This means that our attachments does not require much"
                              " maintenance, which is why it is a stable solution for "
                              "your tasks.",
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () => Get.toNamed('/attachments'),
                            style: ElevatedButton.styleFrom(
                              primary: const Color(0xFFe98332),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                            ),
                            child: const Text('Attachments'),
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
                          child: Image.asset('images/img6.jpg'),
                        ),
                        const ListTile(
                          title: Text(
                            "Contact Us",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Padding(
                            padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                            child: Text(
                              "If you have any further questions about our models of"
                              " mini loaders. Then please do contact us, we"
                              " are always ready at Croni to give you the best"
                              " guidance and advice in your industry and how you "
                              "can benefit from the mini loaders, that Croni "
                              "offers. \n \n Our great experience with mini loaders"
                              " within many industries, makes us able to give "
                              "you the best guidance about choice of mini loader "
                              "and attachments. Furthermore we provide service on "
                              "all Croni mini loaders to secure the quality of the"
                              " products. \n \n Contact us and let us have a conversation"
                              " about your needs, and we will together find the "
                              "solution that fits your needs.",
                              style: TextStyle(fontSize: 14),
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
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                          ),
                          child: Image.asset('images/img6.jpg'),
                        ),
                        const ListTile(
                          title: Text(
                            "Dealers Of Croni Mini Loaders",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Padding(
                            padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                            child: Text(
                              "We have different dealers of our mini loader, where you"
                              " can see the products and get guidance about the use"
                              " of it. We have togehter with our dealers, a great"
                              " cooperation, so we can secure the quality of our"
                              " products. \n \n Are you considering being a dealer of"
                              " Croni mini loaders? Then we would like to hear from"
                              " you. We are always looking for good dealers around"
                              " the world, and appreciate a good cooperation."
                              " Contact us by mail or phone, and let us dicuss how"
                              " we can cooperate together.",
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () =>
                                Get.toNamed('/dealers/become-a-dealer'),
                            style: ElevatedButton.styleFrom(
                              primary: const Color(0xFFe98332),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                            ),
                            child: const Text('Become a dealer'),
                          ),
                        ),
                      ],
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
