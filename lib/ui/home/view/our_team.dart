import '../../../all_packages.dart';

class OurTeamPage extends StatefulWidget {
  const OurTeamPage({super.key});

  @override
  State<OurTeamPage> createState() => _OurTeamPageState();
}

class _OurTeamPageState extends State<OurTeamPage> {
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
                "Our Team",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                ),
              ),

              Image.asset(
                height: 0.4.sh,
                // width: 200,
                'assets/images/team.png',
              ),
              SizedBox(
                width: 0.5.sw,
                child: const Text(
                  "\n\nOur team is the foundation of our quality, we have handpicked specialists, installing technicians, detailers, tinters, Polishers, Designers and Helpers to ensure the best quality is given for our cars.",
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
