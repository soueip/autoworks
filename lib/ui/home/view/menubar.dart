import '../../../all_packages.dart';

class MenuBar extends StatelessWidget {
  final void Function(String) onHover;
  final Color? bg;
  const MenuBar({
    super.key,
    required this.onHover,
    this.bg,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: bg ?? Colors.black,
        image: bg == null
            ? const DecorationImage(
                image: AssetImage(
                  'assets/images/bg.jpeg',
                ),
                fit: BoxFit.fitWidth,
              )
            : null,
      ),
      child: Row(
        children: [
          const Spacer(),
          InkWell(
            onTap: () {
              Navigator.pushAndRemoveUntil(context, PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) {
                  return const HomePage();
                },
              ), (route) => false);
            },
            child: Image.asset(
              'assets/images/logo.png',
              height: 60,
            ),
          ),
          SizedBox(
            height: 100,
            width: 0.8.sw,
            // color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (var i = 0; i < constants.header.length; i++)
                  InkWell(
                    onTap: () {
                      if (constants.header[i] == "Home") {
                        Navigator.pushAndRemoveUntil(context, PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) {
                            return const HomePage();
                          },
                        ), (route) => false);
                      }
                    },
                    child: MouseRegion(
                      onEnter: (event) async {
                        onHover.call("");
                        await Future.delayed(const Duration(milliseconds: 10));
                        onHover.call(constants.header[i]);
                      },
                      // onExit: (event) {
                      //   onHover.call('');
                      // },
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          constants.header[i],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                const SizedBox(width: 150),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
