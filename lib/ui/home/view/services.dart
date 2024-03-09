import '../../../all_packages.dart';
import 'service_page1.dart';

class SetvicesPage extends StatefulWidget {
  const SetvicesPage({super.key});

  @override
  State<SetvicesPage> createState() => _SetvicesPageState();
}

class _SetvicesPageState extends State<SetvicesPage> {
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
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0.05.sw),
          child: SingleChildScrollView(
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
                                width: 0.4.sw,
                                child: ListTile(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      PageRouteBuilder(
                                        pageBuilder: (context, animation,
                                            secondaryAnimation) {
                                          return ServicePage(
                                            service: servicesModel[i],
                                          );
                                        },
                                      ),
                                    );
                                  },
                                  leading: ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.asset(
                                      "assets/images/services/${servicesModel[i].key}.png",
                                      width: 30,
                                      height: 30,
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
      ),
    );
  }
}
