/* import 'package:autoworks/all_packages.dart';

class ServicePage extends StatefulWidget {
  final String image;
  final String name;
  final String content;
  const ServicePage(
      {super.key,
      required this.image,
      required this.name,
      required this.content});

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  String header = "";

  double height() => header == "Contact Us" ? 0.6.sh : 0.7.sh;
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
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 120),
                Text(
                  widget.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                Image.asset(
                  widget.image,
                  height: 0.3.sh,
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0.15.sw),
                  child: Text(
                    "\n\n${widget.content}",
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
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
                  decoration: const BoxDecoration(color: Colors.black),
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
 */