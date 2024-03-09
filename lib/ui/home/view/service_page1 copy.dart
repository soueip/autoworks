/* import 'package:autoworks/all_packages.dart';

class ServicePage extends StatefulWidget {
  final String image;
  final String name;
  final String content;
  final List<ServiceModel> features;
  const ServicePage({
    super.key,
    required this.image,
    required this.name,
    required this.content,
    required this.features,
  });

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  String header = "";

  double height() => header == "Contact Us" ? 0.6.sh : 0.9.sh;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          SizedBox(
            width: 1.sw,
            height: 1.sh,
            child: DecoratedBox(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/services_bg.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // const SizedBox(height: 120),
                    Container(
                      height: 0.6.sh,
                      width: 1.sw,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(widget.image),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            height: 0.6.sh,
                            width: 1.sw,
                            color: Colors.black.withOpacity(0.8),
                          ),
                          Center(
                            child: Text(
                              widget.name,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 50,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Image.asset(
                    //   widget.image,
                    //   height: 0.3.sh,
                    // ),

                    const SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0.15.sw),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.name,
                            style: const TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "\n${widget.content}",
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 100),
                    const Text(
                      "SIGNATURE FEATURES\n",
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.black,
                      ),
                    ),

                    Wrap(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      alignment: WrapAlignment.spaceEvenly,
                      spacing: 20,
                      runSpacing: 20,
                      children: [
                        for (int i = 0; i < widget.features.length; i++)
                          ServiceFeatures(
                            image: widget.features[i].image,
                            title: widget.features[i].title,
                            content: widget.features[i].description,
                          ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Footer(
                      onClick: (p0) {
                        if (constants.isLaptop) {
                          if (p0 != "Home") {
                            setState(() {
                              header = p0;
                            });
                          } else {
                            Navigator.pushAndRemoveUntil(context,
                                PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, secondaryAnimation) {
                                return const HomePage();
                              },
                            ), (route) => false);
                          }
                        }
                      },
                    )
                  ],
                ),
              ),
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

class ServiceFeatures extends StatelessWidget {
  final String image;
  final String title;
  final String content;
  const ServiceFeatures({
    super.key,
    required this.image,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0.3.sw,
      child: Column(
        children: [
          SizedBox(
            height: 0.1.sh,
            width: 0.1.sw,
            child: Image.asset(image),
          ),
          const SizedBox(height: 7),
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text(
            content,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
 */