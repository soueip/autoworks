class Constants {
  double screenHeight = 0;
  double screenWidth = 0;

  bool get isLaptop => screenWidth > 768;
  bool get isTab => screenWidth > 425 && screenWidth <= 768;
  bool get isMobile => screenWidth <= 425;

  List<String> header = [
    'Home',
    'About Us',
    'Services',
    'Shop',
    'Our Team',
    'Contact Us',
  ];
}

late Constants constants;
