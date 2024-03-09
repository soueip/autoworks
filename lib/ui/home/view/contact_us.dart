import 'package:fluttericon/linearicons_free_icons.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../all_packages.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({super.key});

  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: constants.isLaptop ? null : const MenuDrawer(),
      appBar: constants.isLaptop
          ? null
          : AppBar(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              title: Image.asset(
                'assets/images/logo.png',
                height: 50,
              ),
            ),
      body: SizedBox(
        width: 1.sw,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // SizedBox(height: 0.1.sh),
            /* const Text(
            "Contact Us\n",
            style: TextStyle(
              fontSize: 50,
              color: Colors.white,
            ),
          ), */
            Container(
              decoration: const BoxDecoration(color: Colors.black),
              child: Image.asset(
                height: 0.2.sh,
                // width: 200,
                'assets/images/logo.png',
              ),
            ),
            const SizedBox(height: 40),

            const Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Entypo.phone,
                      color: Colors.white,
                      size: 12,
                    ),
                    SizedBox(
                      width: 12,
                    ),
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
                      Entypo.phone,
                      color: Colors.white,
                      size: 12,
                    ),
                    SizedBox(
                      width: 12,
                    ),
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
                      size: 12,
                    ),
                    SizedBox(
                      width: 12,
                    ),
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
            const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                SizedBox(width: 12),
                Text(
                  'info@autoworksqa.com',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            InkWell(
              onTap: () {
                launchUrl(
                    Uri.parse("https://maps.app.goo.gl/MXKH9kNQ1HRPLiXz9"));
              },
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Octicons.location,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    'Abu Hamour , Doha',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
