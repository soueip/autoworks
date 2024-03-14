import 'dart:ui';
import 'package:autoworks/ui/home/widget/star.dart';
import 'package:fluttericon/linearicons_free_icons.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import 'package:url_launcher/url_launcher.dart';
import '../../../all_packages.dart';

class SeriviceModel {
  final String title;
  final String description;
  final int imagesCount;
  final String key;
  final List<ServiceFeatureModel> features;

  SeriviceModel({
    required this.title,
    required this.description,
    required this.imagesCount,
    required this.key,
    required this.features,
  });
}

class ServiceFeatureModel {
  final String title;
  final String description;

  ServiceFeatureModel({
    required this.title,
    required this.description,
  });
}

List<String> services = [
  'Paint Protection Flim (PPF)',
  'Peelable Paint',
  'Window Flims',
  'Nano Ceramic Coating',
  'Vinyl Wrapping',
  'PDR Smart Repairs',
  'Alloy Wheel Repairs',
  'Leather Care',
  'Detailing',
];

List<SeriviceModel> servicesModel = [
  SeriviceModel(
    title: 'Paint Protection Flim (PPF)',
    description:
        "A paint protection film is to keep the top coat of your car looking brand new for a longer time. It can also protect your vehicle from acid rain, the extreme heat of the sun and other chemicals",
    imagesCount: 1,
    key: "ppf",
    features: [
      ServiceFeatureModel(
        title: 'Scratch and Stone Chip Resistance',
        description:
            "PPF is designed to absorb and disperse the impact energy of small stones, road debris, and other abrasive materials, preventing them from damaging the vehicle's paint.",
      ),
      ServiceFeatureModel(
        title: 'Self-Healing Properties',
        description:
            "The minor scratches and swirl marks can disappear over time with the application of heat, such as sunlight or daily use.",
      ),
      ServiceFeatureModel(
        title: 'Non Yellowing',
        description:
            "Paint Protection Film aids in preserving your vehicle’s coloring and prevents discoloration from the sun’s harmful UV rays.",
      ),
      ServiceFeatureModel(
        title: 'Enhances the Paint',
        description:
            "Protection Film for your car emphasizes a sleek and polished appearance with its high-gloss durability and shiny end-result look.",
      ),
      ServiceFeatureModel(
        title: 'Long-Term Protection',
        description:
            "Helps to maintain the resale value of the vehicle by preserving its original paint in good condition.",
      ),
      ServiceFeatureModel(
        title: 'Easily Removable',
        description:
            "There aren’t side effects if you get paint protection film (PPF). It’s easy to remove the film whenever you’re ready, without damage to the vehicle.",
      ),
    ],
  ),
  SeriviceModel(
    title: 'Peelable Paint',
    description:
        "It helps you remove the new paint like a vinyl wrap without giving it the look of one. As natural and superb as it looks, you can have a new car with every shade you can imagine. We add our professional touch to finish each peelable painting process with perfectionism within each surface.",
    imagesCount: 1,
    key: 'pp',
    features: [
      ServiceFeatureModel(
        title: 'Color Options',
        description:
            "A wide range of colors, providing vehicle owners with the flexibility to change the appearance of their cars without committing to a permanent color change.",
      ),
      ServiceFeatureModel(
        title: 'Customization',
        description:
            "Creative customization, including the ability to create patterns, stripes, or other designs on the vehicle's surface.",
      ),
      ServiceFeatureModel(
        title: 'Protection',
        description:
            "Offers a certain level of protection to the original paint against minor scratches, chips, and other surface damage. It acts as a temporary barrier.",
      ),
      ServiceFeatureModel(
        title: 'Temporary Modification',
        description:
            "A good choice for individuals who like to change the appearance of their vehicles periodically.",
      ),
      ServiceFeatureModel(
        title: 'Removability',
        description:
            "One of the main features is its peelable nature. It allows users to easily remove the coating without damaging the original paint underneath.",
      ),
    ],
  ),
  SeriviceModel(
    title: 'Window Flims',
    description:
        "Darkening your vehicle's windows is the process of applying laminate films to each required window. It makes them less absorbing to UV rays and heat and presents the riders with their privacy on the road. We perform this service by applying adhesive solar sheets without the need to remove the windows in the process.",
    imagesCount: 1,
    key: 'wf',
    features: [
      ServiceFeatureModel(
        title: 'UV Protection',
        description:
            "Blocks a significant amount of harmful ultraviolet (UV) rays, helping to protect both the vehicle's interior and its occupants from sun damage.",
      ),
      ServiceFeatureModel(
        title: 'Heat Rejection',
        description:
            "Reduces the amount of heat entering the vehicle, making it more comfortable for passengers and reducing the need for excessive air conditioning",
      ),
      ServiceFeatureModel(
        title: 'Interior Protection',
        description:
            "Protect the vehicle's interior, including the dashboard, seats, and other surfaces, from fading and deterioration caused by prolonged exposure to sunlight.",
      ),
      ServiceFeatureModel(
        title: 'Non-Metallic Options',
        description:
            "Non-metallic window tint films are available, which won't interfere with electronic devices like GPS, cell phones, or radio signals.",
      ),
      ServiceFeatureModel(
        title: 'Privacy',
        description:
            "Tinted windows provide a level of privacy by reducing the visibility into the vehicle from the outside.",
      ),
    ],
  ),
  SeriviceModel(
    title: 'Nano Ceramic Coating',
    description:
        "Nano ceramic coating is a liquid polymer applied to the exterior surfaces of a vehicle. The hard 10h top and softer 7h base layer offer improved swirl resistance over regular 9h paint protection coatings. It chemically bonds with the factory paint, creating a protective layer which gives a high gloss and hydrophobic nature",
    imagesCount: 1,
    key: 'nc',
    features: [
      ServiceFeatureModel(
        title: 'Highly Hydrophobic',
        description:
            "Causing water to bead up and roll off the vehicle. This feature makes it easier to clean the car and helps prevent water spots.",
      ),
      ServiceFeatureModel(
        title: 'Dirt and Contaminant Repellent',
        description:
            "The hydrophobic nature of ceramic coatings also makes it more difficult for dirt, bird droppings, bugs, and other contaminants to adhere to the vehicle's surface",
      ),
      ServiceFeatureModel(
        title: 'Scratch Resistance',
        description:
            "While not completely scratch-proof, nano ceramic coatings can add a level of scratch resistance to the vehicle's paint, helping to protect against minor scratches and swirl marks.",
      ),
      ServiceFeatureModel(
        title: 'Smooth Surface & UV Protection',
        description:
            "The coating creates a smooth and slick surface, reducing drag and making it more difficult for contaminants to stick to the paint.",
      ),
      ServiceFeatureModel(
        title: 'Easy Maintenance',
        description:
            "Ceramic coatings make the vehicle easier to clean, as dirt and contaminants have a reduced ability to bond to the surface.",
      ),
      ServiceFeatureModel(
        title: 'Long-Lasting',
        description:
            "Properly applied nano ceramic coatings can last for an extended period",
      ),
    ],
  ),
  SeriviceModel(
    title: 'Vinyl Wrapping',
    description:
        "Involves applying a thin, adhesive vinyl film to the exterior of a vehicle. This method allows for a change in the vehicle's appearance without affecting the original paint.",
    imagesCount: 1,
    key: 'vw',
    features: [
      ServiceFeatureModel(
        title: 'Color varieties',
        description:
            "It come in a wide range of colors and finishes, including matte, gloss, satin, metallic, and textured options. This provides car owners with extensive customization choices.",
      ),
      ServiceFeatureModel(
        title: 'Custom Graphics and Designs',
        description:
            "Vinyl wraps can be used to create custom graphics, logos, or intricate designs on the vehicle's surface. This is especially popular among businesses and individuals looking to personalize their cars.",
      ),
      ServiceFeatureModel(
        title: 'Quick Installation',
        description:
            "Compared to traditional paint jobs, vinyl wrapping is a quicker process. Depending on the complexity of the wrap, installation can often be completed in a shorter timeframe.",
      ),
      ServiceFeatureModel(
        title: 'Temporary Modification',
        description:
            "A good choice for individuals who like to change the appearance of their vehicles periodically.",
      ),
      ServiceFeatureModel(
        title: 'Surface Versatility',
        description:
            "Vinyl wraps can be applied to various surfaces, including metal, plastic, and glass. This allows for comprehensive customization of the vehicle's exterior.",
      ),
    ],
  ),
  SeriviceModel(
    title: 'PDR Smart Repairs',
    description:
        "A method used to remove minor dents and dings from the body of a vehicle without the need for traditional bodywork and painting. It is most effective for smaller dents without significant damage to the paint or underlying metal.",
    imagesCount: 1,
    key: 'pdr',
    features: [
      ServiceFeatureModel(
        title: 'Preservation of Original Paint',
        description:
            "Preserves the original factory paint finish of the vehicle. This is achieved by manipulating the metal from the inside, eliminating the need for repainting.",
      ),
      ServiceFeatureModel(
        title: 'No Color Matching Issues',
        description:
            "Since PDR retains the original paint, there are no color matching issues that can sometimes arise with repainting. This ensures a seamless and uniform appearance.",
      ),
      ServiceFeatureModel(
        title: 'Time Efficiency',
        description:
            "PDR is generally a faster process compared to traditional dent repair methods. Small dents and dings can often be repaired in a matter of hours, saving both time and inconvenience for the vehicle owner.",
      ),
      ServiceFeatureModel(
        title: 'Environmentally Friendly',
        description:
            "It reduces the use of materials and chemicals typically associated with traditional dent repair methods.",
      ),
    ],
  ),
  SeriviceModel(
    title: 'Alloy Wheel Repairs',
    description:
        "The process of fixing and restoring alloy wheels that have been damaged or suffered from various issues. Alloy wheels are popular in modern vehicles due to their lightweight, stylish, and performance-enhancing properties. However, they are susceptible to damage from factors such as potholes, curbs, road debris, and accidents.",
    imagesCount: 1,
    key: 'al',
    features: [
      ServiceFeatureModel(
        title: 'Appearance',
        description:
            "Alloy wheels are available in different colors and styles. If you are concerned about your car's looks, you should get your alloy wheel repaired to maintain its appearance. Your wheels get exposed to many external elements that slowly damage the color and shine of wheels. Therefore, getting your wheels refurbished can be an excellent way to make your car look new, especially if you plan to sell it. Old and worn - out cars naturally fetch a lower price than refurbished models.",
      ),
      ServiceFeatureModel(
        title: 'Performance',
        description:
            "Alloy wheels are well known for their performance compared to steel wheels. But taking off-road routes, your alloy wheels will suffer damages that might severely reduce their performance. Therefore, it is necessary to go for alloy wheel repair to maintain the standard of performance.",
      ),
      ServiceFeatureModel(
        title: 'Security',
        description:
            "Your wheels may form dents due to driving on rough terrain, which may lead to imbalanced wheels. This type of damage may increase the chances of causing injuries and accidents. Refurbishing your alloy wheels can be a great way to improve the safety of your car.",
      ),
    ],
  ),
  SeriviceModel(
    title: 'Leather Care',
    description:
        "Leather care for cars is a proactive and essential practice that not only enhances the appearance of the interior but also contributes to the comfort and long-term durability of the leather upholstery.",
    imagesCount: 1,
    key: 'lc',
    features: [
      ServiceFeatureModel(
        title: 'Preservation of Appearance',
        description:
            "Regular cleaning and conditioning help preserve the original appearance of the leather upholstery. This includes maintaining the color, sheen, and texture of the leather.",
      ),
      ServiceFeatureModel(
        title: 'Prevention of Cracking and Drying',
        description:
            "Leather is prone to drying out and cracking over time, especially when exposed to sunlight and fluctuating temperatures. Conditioning helps keep the leather moisturized, preventing it from becoming brittle.",
      ),
      ServiceFeatureModel(
        title: 'Stain and Spill Prevention',
        description:
            "Conditioning products can create a protective barrier on the leather, making it more resistant to stains and spills. This is particularly important for light-colored leather that may be more susceptible to visible stains.",
      ),
      ServiceFeatureModel(
        title: 'Prevention of Fading',
        description:
            "UV rays from the sun can cause leather to fade over time. Applying products with UV protection helps shield the leather from sunlight, preserving its color and preventing premature fading.",
      ),
    ],
  ),
  SeriviceModel(
    title: 'Detailing',
    description:
        "A comprehensive and meticulous process of cleaning, restoring, and protecting a vehicle, both inside and out, to achieve a like- new appearance. Professional detailers use specialized tools, equipment, and products to address various aspects of a car's aesthetics and functionality. Car detailing typically includes both interior and exterior treatments.",
    imagesCount: 1,
    key: 'dt',
    features: [
      ServiceFeatureModel(
        title: 'Enhanced Appearance',
        description:
            "Restores and enhances the vehicle's appearance, making it look like new. This includes a deep shine on the exterior paint and a clean, refreshed interior.",
      ),
      ServiceFeatureModel(
        title: 'Paint Correction',
        description:
            "Detailing involves paint correction processes such as polishing and waxing, which eliminate swirl marks, fine scratches, and imperfections on the paint surface.",
      ),
      ServiceFeatureModel(
        title: 'Odor Elimination',
        description:
            "It includes thorough cleaning and odor elimination measures, providing a fresh and pleasant interior environment.",
      ),
      ServiceFeatureModel(
        title: 'Engine Bay Cleaning',
        description:
            "Engine bay detailing not only enhances the engine's appearance but also helps identify and address potential issues by keeping the engine compartment clean.",
      ),
    ],
  ),
];

class ContentsPage extends StatefulWidget {
  final void Function(String) onClick;

  const ContentsPage({super.key, required this.onClick});

  @override
  State<ContentsPage> createState() => _ContentsPageState();
}

class _ContentsPageState extends State<ContentsPage> {
  String? selectedService;
  @override
  Widget build(BuildContext context) {
    Set<String> selectedServices = {};
    constants.screenHeight = MediaQuery.of(context).size.height;
    constants.screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 0.8.sh,
                    width: 1.sw,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/home_car.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    /*      child: Padding(
                      padding: EdgeInsets.only(left: 0.05.sw),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Protection Film With',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          const Text(
                            'Nano Ceramic Coating.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: AppColors.red,
                            ),
                            child: const Text(
                              'Explore More >',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                          // const Spacer(),
                        ],
                      ),
                    ),
                */
                  ),
                  Container(
                    height: constants.isLaptop ? 0.72.sh : 1.8.sh,
                    width: 1.sw,
                    decoration: const BoxDecoration(
                      // color: AppColors.red,
                      image: DecorationImage(
                        image: AssetImage('assets/images/steering.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          height: constants.isLaptop ? 0.72.sh : 2.sh,
                          width: 1.sw,
                          color: AppColors.red.withOpacity(0.8),
                        ),
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(height: 0.15.sh),
                              // const Text(
                              //   'Our Services',
                              //   style: TextStyle(
                              //     color: Colors.white,
                              //     fontSize: 20,
                              //   ),
                              // ),
                              // const Text(
                              //   'Great Car Services',
                              //   style: TextStyle(
                              //     color: Colors.white,
                              //     fontSize: 40,
                              //   ),
                              // ),
                              const SizedBox(height: 20),
                              Center(
                                child: Wrap(
                                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  alignment: WrapAlignment.spaceEvenly,
                                  runAlignment: WrapAlignment.spaceEvenly,
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  spacing: 0.1.sw,
                                  runSpacing: 0.1.sw,

                                  children: [
                                    for (var i = 0; i < 3; i++)
                                      Container(
                                        alignment: Alignment.center,
                                        height: 0.45.sh,
                                        width: constants.isLaptop
                                            ? 0.25.sw
                                            : 0.9.sw,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(17.0),
                                            color: Colors.white),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const SizedBox(height: 12),
                                              Text(
                                                i == 0
                                                    ? 'What is Auto Works?'
                                                    : i == 1
                                                        ? 'Our Services'
                                                        : 'Why AutoWorks?',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline3,
                                              ),
                                              const SizedBox(height: 12),
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 0.03.sw,
                                                ),
                                                child: Text(
                                                    i == 0
                                                        ? "Auto Works Car Care Center is your trusted source for top-notch car care services. We specialize in paint protection film (PPF) installations and detailing to keep your vehicle looking its best. With a passion for perfection and a commitment to customer satisfaction, we're your go-to destination for automotive excellence."
                                                        : i == 1
                                                            ? "AutoWorks Car Care Center offers a comprehensive range of services to maintain and enhance your vehicle. From PPF installations to professional detailing, we provide expert solutions to protect and rejuvenate your car's appearance. Choose AutoWorks for quality car care."
                                                            : "Choose AutoWorks Car Care Center for a team that's passionate about cars, dedicated to detail, and committed to excellence. We use cutting-edge technology and top-tier products to ensure exceptional results. When you want the best in car care, Auto Works is the place to go.",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyText1),
                                              ),
                                              const SizedBox(
                                                height: 12,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 20),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              if (constants.isLaptop)
                Transform.translate(
                  offset: Offset(0, 0.7.sh),
                  child: Center(
                    child: Wrap(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      alignment: WrapAlignment.center,
                      runAlignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Container(
                          height: 0.20.sh,
                          width: constants.isLaptop ? 0.20.sw : 0.20.sw,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1.0),
                            color: Colors.white.withOpacity(0.9),
                          ),
                          child: Center(
                            child: ListTile(
                              leading: Image.asset('assets/images/timer.png'),
                              title: const Text(
                                'We are Open Sat To Thur',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              subtitle: const Text(
                                '9:30 AM - 01:30 PM / 3:30 PM - 09:30 PM',
                                style: TextStyle(
                                    color: AppColors.red,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 0.20.sh,
                          width: 0.20.sw,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1.0),
                            color: AppColors.red.withOpacity(0.8),
                          ),
                          child: Center(
                            child: ListTile(
                              leading: Image.asset('assets/images/person.png'),
                              title: const Text(
                                'Have A Question? Call Us',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                              subtitle: const Text(
                                '+974 3335 2772\n+974 3352 7555\n+974 4486 7214',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 0.20.sh,
                          width: 0.20.sw,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1.0),
                            color: Colors.black.withOpacity(0.8),
                          ),
                          child: Center(
                            child: ListTile(
                              onTap: () {
                                launchUrl(Uri.parse(
                                    "https://maps.app.goo.gl/MXKH9kNQ1HRPLiXz9"));
                              },
                              leading:
                                  Image.asset('assets/images/location.png'),
                              title: const Text(
                                'Location',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              subtitle: const Text(
                                'Abu Hamour , Doha',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
            ],
          ),
          Container(
            height: constants.isLaptop ? 0.5.sh : 1.3.sh,
            width: 1.sw,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: const Color(0xff333333),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceAround, // Align children vertically centered
                children: [
                  const ContactHeader(),
                  SizedBox(
                    width: constants.isLaptop ? 0.16.sw : 0.8.sw,
                    child: TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Name',
                        hintStyle: const TextStyle(
                          color: Colors.black,
                        ),
                        labelStyle: const TextStyle(
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: constants.isLaptop ? 0.16.sw : 0.8.sw,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: InternationalPhoneNumberInput(
                        selectorConfig: const SelectorConfig(
                          selectorType: PhoneInputSelectorType.DROPDOWN,
                          showFlags: false,
                          setSelectorButtonAsPrefixIcon: true,
                        ),
                        hintText: "WhatsApp No",
                        initialValue: PhoneNumber(isoCode: "QA"),
                        onInputChanged: (PhoneNumber value) {},
                        inputDecoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "WhatsApp No",
                          hintStyle: TextStyle(color: Colors.grey),
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 10.0),
                        ),
                        textStyle: const TextStyle(color: Colors.black),
                        autoValidateMode: AutovalidateMode.onUserInteraction,
                        formatInput: false,
                        keyboardType: const TextInputType.numberWithOptions(
                          signed: true,
                          decimal: true,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // round corners
                      ),
                      padding: const EdgeInsets.all(25),
                      textStyle: const TextStyle(
                        color: AppColors.red,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    child: const Text('Select Service'),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Select Service'),
                            content: StatefulBuilder(
                              builder:
                                  (BuildContext context, StateSetter setState) {
                                return SizedBox(
                                  width: constants.isLaptop ? 0.16.sw : 0.8.sw,
                                  height: 0.265.sw,
                                  child: ListView(
                                    children: services.map((service) {
                                      return CheckboxListTile(
                                        title: Text(service),
                                        value:
                                            selectedServices.contains(service),
                                        onChanged: (bool? value) {
                                          setState(() {
                                            if (value == true) {
                                              selectedServices.add(service);
                                            } else {
                                              selectedServices.remove(service);
                                            }
                                          });
                                        },
                                      );
                                    }).toList(),
                                  ),
                                );
                              },
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 12, horizontal: 24),
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(22),
                                  ),
                                  child: const Text(
                                    'OK',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          );
                        },
                      );
                    },
                  ),
                  SizedBox(
                    height: 50,
                    child: Center(
                      child: InkWell(
                        onTap: () {},
                        child: SizedBox(
                          width: constants.isLaptop ? 0.08.sw : 0.8.sw,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(15),
                              child: Center(
                                child: Text(
                                  "Submit",
                                  style: TextStyle(
                                    color: AppColors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          /*     Container(
            height: 0.70.sh,
            width: 1.sw,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0), color: Colors.black),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'About Company',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  'WHAT TYPE OF VEHICLE DO YOU DRIVE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                for (var i = 0; i < 4; i++)
                  Row(
                    children: [
                      Container(
                        height: 10,
                        width: 0.20.sw,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0.0),
                          color: AppColors.red,
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 0.20.sw,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22.0),
                          color: AppColors.red,
                        ),
                        child: Center(
                          child: Text(
                            text[i],
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        height: 40,
                        width: 0.20.sw,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22.0),
                          color: AppColors.red,
                        ),
                        child: Center(
                          child: Text(
                            text1[i],
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ),
                      Container(
                        height: 10,
                        width: 0.20.sw,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0.0),
                          color: AppColors.red,
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
       */
          Container(
            height: 0.50.sh,
            width: 1.sw,
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Our Works',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  'OUR FEAUTERED GALLERY',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      for (var index = 0; index < 4; index++)
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/images/${index + 1}.png',
                            height: 0.4.sw,
                            fit: BoxFit.cover,
                            width: 0.2.sw,
                          ),
                        ),
                    ],
                  ),
                ),
                const SizedBox(height: 20)
              ],
            ),
          ),
          /*  Container(
            height: 0.75.sh,
            width: 1.sw,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.white),
            child: Column(
              children: [
                const SizedBox(
                  height: 60,
                ),
                const Text(
                  'Client Testonomials',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontStyle: FontStyle.italic),
                ),
                const Text(
                  '100% APPROVED BY CUSTOMERS',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 26,
                      fontStyle: FontStyle.italic),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    for (var i = 0; i < 3; i++)
                      Container(
                        height: 0.50.sh,
                        width: 0.20.sw,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17.0),
                            color: Colors.red),
                        child: const Column(
                          children: [
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              '//',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              'Lorem Ipsum Is Simply Dummy\nText Of The Printing And\nTypesetting Industry.Lorem\nIpsm Has Been The Industry\'s\nStandard Dummy Text Ever Since\nThe 1500s When an Unknown\nPrinter Took A Gallery Of Type And\nScrambled It To Make A Type\nSpecimen Book',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://t3.ftcdn.net/jpg/05/35/47/38/360_F_535473874_OWCa2ohzXXNZgqnlzF9QETsnbrSO9pFS.jpg'),
                            ),
                            Text(
                              'SATHISH',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                  ],
                )
              ],
            ),
          ),*/
          Container(
            height: 0.6.sh,
            width: 1.sw,
            decoration: const BoxDecoration(color: Colors.black),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    'Part & Accesories',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  const Text(
                    'CHECK OUT OUR PRODUCTS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Stack(
                    children: [
                      SizedBox(
                        height: 0.35.sh,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            for (var index = 0; index < 4; index++)
                              Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20.0),
                                    child: Container(
                                      height: 0.20.sh,
                                      width: 0.2.sw,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images/products$index.png',
                                          ),
                                          fit: BoxFit.cover,
                                          // scale: 1,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    '\n\$122.99',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                          ],
                        ),
                      ),
                      ClipRRect(
                        child: SizedBox(
                          height: 0.35.sh,
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                            child: Container(
                              color: Colors.black.withOpacity(0.7),
                              child: const Center(
                                child: Text(
                                  "Coming Soon",
                                  style: TextStyle(
                                    fontSize: 50,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 30),
                    child: Image.asset(
                      'assets/images/divider.png',
                      height: 5,
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (constants.isLaptop)
            Container(
              height: 0.12.sh,
              width: 0.60.sw,
              margin: EdgeInsets.symmetric(horizontal: 0.1.sw),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: AppColors.red,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'SUBSCRIBE FOR OUR\nLATEST OFFERS',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: SizedBox(
                      height: 50,
                      width: 0.23.sw,
                      child: const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          hintText: 'Enter Your Email Address..',
                          hintStyle: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  MaterialButton(
                    padding: const EdgeInsets.all(13.0),
                    color: Colors.black,
                    onPressed: () {},
                    child: const Text(
                      'Subcribe Now',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          Footer(
            onClick: (p0) {
              widget.onClick.call(p0);
            },
          ),
        ],
      ),
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({
    super.key,
    required this.onClick,
  });

  final void Function(String) onClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: constants.isLaptop ? 0.50.sh : 0.6.sh,
      width: 1.sw,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        color: Colors.black,
      ),
      child: Wrap(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: WrapCrossAlignment.start,
        runAlignment: WrapAlignment.center,
        alignment: WrapAlignment.spaceEvenly,
        runSpacing: 30,
        children: [
          SizedBox(
            width: constants.isLaptop ? 0.2.sw : 0.8.sw,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: constants.isLaptop
                  ? CrossAxisAlignment.start
                  : CrossAxisAlignment.center,
              children: [
                const Text(
                  'Let us connect',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 10),
                if (constants.isLaptop)
                  Image.asset(
                    'assets/images/divider.png',
                    height: 5,
                    width: 0.09.sw,
                  ),
                const SizedBox(height: 10),
                SizedBox(
                  width: constants.isLaptop ? 0.2.sw : 0.8.sw,
                  child: const Text(
                    'Explore the extraordinary! Join our vibrant online community for daily inspiration, engaging conversations, and exclusive updates. Connect with like-minded individuals who share your passion. Elevate your online experience with us! ',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: constants.isLaptop
                      ? MainAxisAlignment.start
                      : MainAxisAlignment.center,
                  children: const [
                    Icon(
                      FontAwesome5.instagram,
                      color: Colors.white,
                    ),
                    SizedBox(width: 12),
                    // Icon(
                    //   FontAwesome5.youtube,
                    //   color: Colors.white,
                    // ),
                    // SizedBox(
                    //   width: 12,
                    // ),
                    Icon(
                      FontAwesome5.snapchat,
                      color: Colors.white,
                    ),
                    SizedBox(width: 12),
                    Icon(
                      FontAwesome5.facebook,
                      color: Colors.white,
                    ),
                    SizedBox(width: 12),
                    Icon(
                      FontAwesome5.linkedin,
                      color: Colors.white,
                    ),
                    // Icon(
                    //   FontAwesome5.twitter,
                    //   color: Colors.white,
                    // ),
                  ],
                )
              ],
            ),
          ),
          if (constants.isLaptop)
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Company Links',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 10),
                if (constants.isLaptop)
                  Image.asset(
                    'assets/images/divider.png',
                    height: 5,
                    width: 0.08.sw,
                  ),
                const SizedBox(height: 10),
                for (var i = 0; i < constants.header.length; i++)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: InkWell(
                      onTap: () {
                        onClick.call(constants.header[i]);
                      },
                      child: Text(
                        constants.header[i],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          SizedBox(
            width: constants.isLaptop ? 0.15.sw : 0.6.sw,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Contact Info',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 10),
                if (constants.isLaptop)
                  Image.asset(
                    'assets/images/divider.png',
                    height: 5,
                    width: 0.06.sw,
                  ),
                const SizedBox(height: 10),
                // SizedBox(height: constants.isLaptop ? 20 : 30),
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
                            fontSize: 16,
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
                            fontSize: 16,
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
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                const Row(
                  children: [
                    Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      'info@autoworksqa.com',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
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
                          fontSize: 16,
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
