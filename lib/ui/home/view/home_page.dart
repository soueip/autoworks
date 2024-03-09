import 'package:autoworks/all_packages.dart';
import 'package:autoworks/ui/home/view/service_page1.dart';
import 'package:fluttericon/linearicons_free_icons.dart';
import 'package:url_launcher/url_launcher.dart';

List<GlobalKey> servicesKeys =
    List.generate(services.length, (index) => GlobalKey());

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String header = "";

  @override
  Widget build(BuildContext context) {
    constants.screenHeight = MediaQuery.of(context).size.height;
    constants.screenWidth = MediaQuery.of(context).size.width;

    double height() => 0.9.sh;

    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
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
      body: Stack(
        children: [
          ContentsPage(
            onClick: (p0) {
              if (constants.isLaptop) {
                if (p0 != "Home") {
                  setState(() {
                    header = p0;
                  });
                } else {
                  Navigator.pushAndRemoveUntil(context, PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) {
                      return const HomePage();
                    },
                  ), (route) => false);
                }
              }
            },
          ),
          if ((constants.isLaptop))
            MouseRegion(
              onExit: (event) {
                setState(() {
                  header = '';
                });
              },
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 400),
                opacity: header.isNotEmpty ? 1 : 0,
                child: AnimatedContainer(
                  height: header.isNotEmpty ? height() : 0,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/bg.jpeg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  curve: Curves.ease,
                  duration: const Duration(milliseconds: 300),
                  child: header == "About Us"
                      ? const AboutUS()
                      : header == "Contact Us"
                          ? const ContactUS()
                          : header == "Our Team"
                              ? const OurTeam()
                              : header == "Services"
                                  ? const Services()
                                  : ConstrainedBox(
                                      constraints: BoxConstraints(
                                        maxHeight: 0.8.sh,
                                        minWidth: 1.sw,
                                      ),
                                      child: header.isNotEmpty
                                          ? Center(
                                              child: Text(
                                                header == "Shop"
                                                    ? "Coming Soon"
                                                    : header,
                                                style: const TextStyle(
                                                  fontSize: 50,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            )
                                          : null,
                                    ),
                ),
              ),
            ),
          if (constants.isLaptop)
            MenuBar(
              bg: header.isNotEmpty ? Colors.transparent : null,
              onHover: (p0) {
                if (p0 != "Home") {
                  setState(() {
                    header = p0;
                  });
                }
              },
            ),
        ],
      ),
    );
  }
}

class ContactUS extends StatelessWidget {
  const ContactUS({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1.sw,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // SizedBox(height: 0.1.sh),
          /* const Text(
            "Contact Us\n",
            style: TextStyle(
              fontSize: 50,
              color: Colors.white,
            ),
          ), */
          Image.asset(
            height: 0.2.sh,
            // width: 200,
            'assets/images/logo.png',
          ),
          const SizedBox(height: 40),
          SizedBox(
            width: 0.6.sw,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
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
                const Row(
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
                InkWell(
                  onTap: () {
                    launchUrl(
                        Uri.parse("https://maps.app.goo.gl/MXKH9kNQ1HRPLiXz9"));
                  },
                  child: const Row(
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
          )
        ],
      ),
    );
  }
}

class AboutUS extends StatelessWidget {
  const AboutUS({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1.sw,
      child: Column(
        children: [
          const SizedBox(height: 100),
          const Text(
            "About Us",
            style: TextStyle(
              fontSize: 50,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 0.1.sh),
          SizedBox(
            width: 0.8.sw,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  height: 0.3.sh,
                  width: 0.28.sw,

                  // width: 200,
                  'assets/images/aw_logo.png',
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  width: 0.02.sw,
                ),
                SizedBox(
                  width: 0.5.sw,
                  // height: 0.35.sh,
                  child: const Text(
                    "\nAuto Works Car Care Center was started in 2022 in Doha-Qatar, out of a passion for high quality car care and detailing. We are certified from the top-class auto detailing manufacturers around the world. We are using some of the most professional and top- class products in the market that we personally tested and used professionally to ensure the best high-quality, long-lasting results along with our well-trained staff to give the best service for your automobile. Our center is well prepared with the best environment for the clients cars along with the 24hr CCTV for safety and security. Our main goal is to achieve the best detailing and protection results for the cars and to make clients feel satisfied.",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OurTeam extends StatelessWidget {
  const OurTeam({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1.sw,
      child: Column(
        children: [
          const SizedBox(height: 100),
          const Text(
            "Our Team",
            style: TextStyle(
              fontSize: 50,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 0.1.sh),
          SizedBox(
            width: 0.5.sw,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  height: 0.2.sh,
                  // width: 200,
                  'assets/images/team.png',
                ),
                Center(
                  child: SizedBox(
                    width: 0.25.sw,
                    height: 0.2.sh,
                    child: const Text(
                      "Our team is the foundation of our quality, we have handpicked specialists, installing technicians, detailers, tinters, Polishers, Designers and Helpers to ensure the best quality is given for our cars.",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Services extends StatelessWidget {
  const Services({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 0.65.sh),
      child: SizedBox(
        width: 1.sw,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0.05.sw),
          child: Column(
            children: [
              const SizedBox(height: 100),
              const Text(
                "Services",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                ),
              ),
              Center(
                child: Wrap(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  alignment: WrapAlignment.spaceEvenly,
                  children: [
                    for (int i = 0; i < servicesModel.length; i++)
                      Builder(
                        builder: (context) {
                          // TextSized textSized = TextSized(
                          //   text: services[i],
                          //   textStyle: const TextStyle(
                          //     fontSize: 25,
                          //     color: Colors.white,
                          //   ),
                          // );
                          return Padding(
                            padding: EdgeInsets.symmetric(vertical: 0.05.sh),
                            child: SizedBox(
                              width: 0.25.sw,
                              child: ListTile(
                                onTap: () {
                                  Navigator.push(context, PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                        secondaryAnimation) {
                                      return ServicePage(
                                        service: servicesModel[i],
                                      );
                                    },
                                  ));
                                },
                                leading: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset(
                                    "assets/images/services/${servicesModel[i].key}.png",
                                    width: 120,
                                    height: 120,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                title: Text(
                                  services[i],
                                  style: const TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextSized extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  const TextSized({Key? key, required this.text, required this.textStyle})
      : super(key: key);

  Size get txtSize => _textSize(text, textStyle);
  @override
  Widget build(BuildContext context) {
    // This kind of use - meaningless. It's just an example.
    return SizedBox(
      // color: Colors.blueGrey,
      width: txtSize.width + 5,
      height: txtSize.height,
      child: Text(
        text,
        style: textStyle,
        softWrap: false,
        overflow: TextOverflow.clip,
        maxLines: 1,
      ),
    );
  }

  // Here it is!
  Size _textSize(String text, TextStyle style) {
    final TextPainter textPainter = TextPainter(
        text: TextSpan(text: text, style: style),
        maxLines: 1,
        textDirection: TextDirection.ltr)
      ..layout(minWidth: 0, maxWidth: double.infinity);
    return textPainter.size;
  }
}
