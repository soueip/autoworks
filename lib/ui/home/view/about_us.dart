import '../../../all_packages.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({super.key});

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // const SizedBox(height: 100),
              const Text(
                "About Us",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                ),
              ),

              Image.asset(
                height: 0.4.sh,
                // width: 200,
                'assets/images/aw_logo.png',
              ),
              SizedBox(
                width: 0.8.sw,
                height: 0.5.sh,
                child: const Text(
                  "\n\nAuto Works Car Care Center was started in 2022 in Doha-Qatar, out of a passion for high quality car care and detailing. We are certified from the top-class auto detailing manufacturers around the world. We are using some of the most professional and top- class products in the market that we personally tested and used professionally to ensure the best high-quality, long-lasting results along with our well-trained staff to give the best service for your automobile. Our center is well prepared with the best environment for the clients cars along with the 24hr CCTV for safety and security. Our main goal is to achieve the best detailing and protection results for the cars and to make clients feel satisfied.",
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
      ),
    );
  }
}
