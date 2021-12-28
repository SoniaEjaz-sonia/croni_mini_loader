import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

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
            'About Us',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: ListView(
          children: [
            // Card(
            //   margin:
            //   const EdgeInsets.only(top: 0, left: 4, right: 4, bottom: 0),
            //   child: Padding(
            //     padding: const EdgeInsets.all(10.0),
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: dealersList
            //           .map(
            //             (dealer) => Row(
            //           children: [
            //             Expanded(
            //               flex: 2,
            //               child: Text(
            //                 dealer[0],
            //                 style: const TextStyle(
            //                   fontSize: 14,
            //                   fontWeight: FontWeight.bold,
            //                 ),
            //               ),
            //             ),
            //             Expanded(
            //               child: Text(
            //                 dealer[1],
            //                 style: const TextStyle(
            //                   fontSize: 14,
            //                   fontWeight: FontWeight.bold,
            //                 ),
            //               ),
            //             ),
            //             Expanded(
            //               child: ElevatedButton(
            //                 onPressed: () {},
            //                 style: ElevatedButton.styleFrom(
            //                   primary: const Color(0xFFe98332),
            //                   shape: RoundedRectangleBorder(
            //                     borderRadius: BorderRadius.circular(18.0),
            //                   ),
            //                 ),
            //                 child: const Text('Visit Website'),
            //               ),
            //             ),
            //           ],
            //         ),
            //       )
            //           .toList(),
            //     ),
            //   ),
            // ),
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
                  Container(
                    padding: const EdgeInsets.only(
                      top: 15,
                      left: 10,
                      right: 5,
                    ),
                    child: const Text(
                      "Our Company Values",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
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
                      "Learn More About The Company Behind The Strong Mini Loader",
                      style: TextStyle(
                        fontSize: 22,
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
                      "Croni is a product category from Maach Technic, that has a focus on "
                      "making the best mini loader. Croni started when we could see a "
                      "need for a mini loader, that had to be compact, without compromising"
                      " with either functionality or quality. \n\n The variety of strong"
                      " mini loaders are designed and developed by Maach Technic, where "
                      "we through feedback from our customers has developed a mini loader "
                      "that can match all the needs it has to solve. \n\n Furthermore we"
                      " have modified the strong mini loaders with different attachments,"
                      " so you easy and quickly can switch the functionality of the "
                      "machine. In that way our mini loader will always fit your needs. "
                      "\n\n Maach Technic A/S is a family owned company, that is located"
                      " in Vodskov, Denmark. Maach Technic is a production company with a"
                      " focus on machines for agriculture and farms. The company is owned"
                      " by the Rosbak family, which is leading the daily operation and "
                      "contact with customers. \n\n Maach Technic has earlier focused "
                      "on the mink industry, but has switched the focus to mini loaders."
                      " We have seen a need to develop new machines, which is why we at"
                      " Maach Technic has chosen to focus on mini loaders. Our mini loader"
                      " has to be a long term solution, which is why the machine is "
                      "produced in 100% steel.",
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
                        'images/img48.jpg',
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
                      "A Little Of Our Story",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
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
                      "Our Mission",
                      style: TextStyle(
                        fontSize: 22,
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
                      "Our mission is to bring the best mini loader to the market, which "
                      "fits in many industries. We strive to give our customers the "
                      "best result by using our Croni mini loader. With attachments "
                      "that modifies your mini loader, the machine can handle the tasks "
                      "it has to do. \n\n Because the mini loader is produced in 100% "
                      "steel the machine requires a minimum of maintenance. This also "
                      "makes it possible to use the mini loader in different environments"
                      " where the machine can be exposed to hard use",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
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
                      "Production At Croni",
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
                      "At Croni we value good quality, therefore we make sure that our "
                      "mini loaders, and our attachments are produced in the best "
                      "possible quality. Which we do by collecting components from "
                      "competent partners around the world. The high quality of our "
                      "mini loaders makes the machine a long term solution, so that it"
                      " requires a minimum of maintence. Furthermore it means that the"
                      " mini loader always can perform its maximum when you are working"
                      " with it.",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
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
                        'images/img49.jpg',
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
                      "Contact Us For Further Information About Mini Loaders",
                      style: TextStyle(
                        fontSize: 22,
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
                      "If you are in need for further information about Croni, mini loaders"
                      " of attachments, we are always ready to have a conversation with"
                      " you about your needs. We appreciate a good cooperation, where we "
                      "together will find the best solution that fits you. \n\n We will "
                      "always give you the best counseling within the use of mini loader,"
                      " and which attachments you need for your tasks. We have a great "
                      "experience within many different industries, with great result with"
                      " the use of our mini loaders and attachments. \n\n We are looking "
                      "forward to hear from you.",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
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
