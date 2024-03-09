import 'package:autoworks/all_packages.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  constants = Constants();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        constants.screenHeight = MediaQuery.of(context).size.height;
        constants.screenWidth = MediaQuery.of(context).size.width;
        return MaterialApp(
          title: 'Autoworks',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: AppColors.red),
            textTheme: GoogleFonts.questrialTextTheme(),
            useMaterial3: true,
          ),
          home: const HomePage(),
        );
      },
    );
  }
}
