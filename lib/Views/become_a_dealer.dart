import 'package:flutter/material.dart';

class BecomeADealer extends StatelessWidget {
  const BecomeADealer({Key? key}) : super(key: key);

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
            'Become a Dealer',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: ListView(
          children: [
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
                        'images/img7.jpg',
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
                      "Do you want to become a part of our network of dealers?",
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
                      "There are many advantages of becoming a part of our international "
                      "network of dealers worldwide. Such advantages are the following.",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      'Access to a selection of strong mini loaders',
                      'Becoming apart of a professional sales organization with many years'
                          ' of experience with many customer groups.',
                      'Competitive prices on our mini loaders and attachments.',
                      'Becoming a part of a strong international brand.'
                    ]
                        .map(
                          (e) => ListTile(
                            title: Row(
                              children: [
                                const CircleAvatar(
                                  radius: 4.0,
                                  backgroundColor: Colors.black,
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Text(
                                    e,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                        .toList(),
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
                  Container(
                    padding: const EdgeInsets.only(
                      top: 15,
                      left: 10,
                      right: 5,
                    ),
                    child: const Text(
                      "We help you with making the start a success, by giving you counseling"
                      " and guidance about which models and attachments you should have "
                      "in stock. \n\n Are you interested, then contact us by e-mail or "
                      "by phone. After that our sales department will take care of the "
                      "dialog, and give you informations and offers.",
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
                      "We look forward to cooperate with you.",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
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
                        "At Croni We Can Offer You A Complete Solution Within Mini Loaders",
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
                              "Mini Loaders From Croni",
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
                              "We can offer several models, that is modified with different"
                              " specifications. The mini loader has to be selected from"
                              " the needs of the tasks, and it is important that you get"
                              " the right model for the tasks you have to do. \n\n We "
                              "help with guidance about mini loaders so you can find the"
                              " one you need for your job. In that way you will get the "
                              "best experience by selling Croni mini loaders.",
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
                              width: double.infinity,
                              child: Image.asset(
                                'images/img13.jpg',
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
                              "Attachments For Mini Loader",
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
                              "Together with our mini loader, you can attach different tools"
                              " in the front of the machine. The attachments is selected"
                              " from the tasks it needs to handle, and is easy to switch "
                              "during the day. This makes you save time on your work, so"
                              " you can do more tasks. \n\n Furthermore our attachments "
                              "makes a nice result, when you for example have to mow your"
                              " lawn, trim hedges, sweep large areas or lift heavy objects."
                              " We offer with the mini loader a wide selection of "
                              "attachments that can be attached on the mini loader.",
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
          ],
        ),
      ),
    );
  }
}
