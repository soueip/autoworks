/* import 'package:autoworks/all_packages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    constants.screenHeight = MediaQuery.of(context).size.height;
    constants.screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            backgroundColor: Colors.transparent,
            toolbarHeight: 100,
            pinned: true,
            flexibleSpace: MenuBar(),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const ContentsPage(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MenuBar extends StatelessWidget implements PreferredSizeWidget {
  const MenuBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 60,
              color: Colors.black,
            ),
          ),
          Container(
            height: 100,
            width: 200,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              image: const DecorationImage(
                image: AssetImage('assets/images/logo.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            height: 60,
            width: 0.8.sw,
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (var i = 0; i < constants.header.length; i++)
                  Text(
                    constants.header[i],
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                Container(
                  padding: const EdgeInsets.all(6.0),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.red),
                  child: const Icon(
                    Icons.search_sharp,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size(1.sw, 100);
}
 */