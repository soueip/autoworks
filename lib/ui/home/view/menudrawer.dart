import 'package:autoworks/ui/home/view/about_us.dart';
import 'package:autoworks/ui/home/view/contact_us.dart';
import 'package:autoworks/ui/home/view/our_team.dart';
import 'package:autoworks/ui/home/view/services.dart';
import 'package:autoworks/ui/home/view/shop.dart';

import '../../../all_packages.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0.4.sw,
      child: DecoratedBox(
        decoration: const BoxDecoration(color: Colors.black),
        child: Column(
          children: [
            const SizedBox(height: 30),
            Image.asset(
              'assets/images/logo.png',
              height: 60,
            ),
            const SizedBox(height: 30),
            for (var i = 0; i < constants.header.length; i++)
              // if (i == 0)
              ListTile(
                onTap: () {
                  print('ontap----');
                  constants.header[i] == 'About Us'
                      ? Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const AboutUsPage()))
                      : constants.header[i] == 'Services'
                          ? Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const SetvicesPage()))
                          : constants.header[i] == 'Shop'
                              ? Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const ShopPage()))
                              : constants.header[i] == 'Our Team'
                                  ? Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              const OurTeamPage()))
                                  : constants.header[i] == 'Contact Us'
                                      ? Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  const ContactUsPage()))
                                      : constants.header[i] == 'Home'
                                          ? Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder:
                                                      (BuildContext context) =>
                                                          const HomePage()))
                                          : Container();
                },
                title: Text(
                  constants.header[i],
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            // else
            //   Container()
            // ExpansionTile(

            //   title: Text(
            //     constants.header[i],
            //     style: const TextStyle(
            //       color: Colors.white,
            //       fontSize: 16,
            //       fontWeight: FontWeight.w500,
            //     ),
            //   ),
            // ),
            // const SizedBox(width: 150),
          ],
        ),
      ),
    );
  }
}
