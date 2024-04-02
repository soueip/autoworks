import 'package:flutter/material.dart';
import 'package:fluttericon/linearicons_free_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Contact Us'),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(color: Colors.black),
              child: Image.asset(
                'assets/images/logo.png',
                height: 100,
              ),
            ),
            const SizedBox(height: 40),
            const Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.white,
                      size: 20,
                    ),
                    SizedBox(width: 12),
                    Text(
                      '+974 3335 2772',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.white,
                      size: 20,
                    ),
                    SizedBox(width: 12),
                    Text(
                      '+974 3352 7555',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      LineariconsFree.phone,
                      color: Colors.white,
                      size: 20,
                    ),
                    SizedBox(width: 12),
                    Text(
                      '+974 4486 7214',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                const Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 12,
                ),
                InkWell(
                  onTap: () async {
                    final Uri _emailLaunchUri = Uri(
                      scheme: 'mailto',
                      path: 'info@autoworksqa.com',
                    );
                    final String _emailLaunchUriString =
                        _emailLaunchUri.toString();
                    if (await canLaunch(_emailLaunchUriString)) {
                      await launch(_emailLaunchUriString);
                    } else {
                      throw 'Could not launch $_emailLaunchUriString';
                    }
                  },
                  child: const Text(
                    'info@autoworksqa.com',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            InkWell(
              onTap: () async {
                const url = 'https://maps.app.goo.gl/MXKH9kNQ1HRPLiXz9';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: const Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.white,
                    size: 20,
                  ),
                  SizedBox(width: 12),
                  Text(
                    'Abu Hamour , Doha',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Column(
              children: [
                InkWell(
                  onTap: () async {
                    const url = 'https://www.instagram.com/autoworks.qa/';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: const Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.instagram,
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(width: 12),
                      Text(
                        'autoworks.qa',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                InkWell(
                  onTap: () async {
                    const url =
                        'https://www.snapchat.com/add/autoworks.qa?share_id=vI2tlqj%2FQ3u9tU3KA8X+yQ&locale=en_QA&sid=514431d3b04244a8970534f430ba74ee'; // Replace 'SNAPCHAT_URL_HERE' with your Snapchat URL
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: const Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.snapchat,
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(width: 12),
                      Text(
                        'Autoworks.qa',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
