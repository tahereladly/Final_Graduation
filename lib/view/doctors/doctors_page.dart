import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import '../../logic/doctors/doctors_provider.dart';

class DoctorsPage extends StatelessWidget {
  const DoctorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (context) => DoctorsProvider()..getDoctors(),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: SvgPicture.asset("assets/icons/arrow_right_ic.svg"),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 10,
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 18,
                    horizontal: 20,
                  ),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xffDAEAFD),
                        Color(0xffF1F4FF),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.12, 2],
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset("assets/icons/doctors_ic.svg"),
                      const SizedBox(width: 60),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Looking for doctor?",
                              style: TextStyle(
                                color: Color(0xff596992),
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Check the list of the best nearest doctors",
                              style: TextStyle(
                                color: Color(0xff8E95A7),
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Image.asset(
                        'assets/images/doctor_11.jpg',
                        fit: BoxFit.cover,
                        errorBuilder:
                            (context, error, stackTrace) =>
                            Container(
                              width: 100,
                              height: 100,
                              clipBehavior:
                              Clip.antiAliasWithSaveLayer,
                              decoration: const BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(15)),
                              ),
                              child: const Icon(
                                Icons.warning_rounded,
                                color: Colors.black,
                                size: 30,
                              ),
                            ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Dr.Eslam Abo Yazid',
                            style: TextStyle(
                              color: Color(0xff596992),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              SvgPicture.asset(
                                  'assets/icons/phone_ic.svg'),
                              const SizedBox(width: 3),
                              const Text(
                                '+20 1228524178',
                                style: TextStyle(
                                  color: Color(0xff8E95A7),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              SvgPicture.asset(
                                  'assets/icons/location_ic.svg'),
                              const SizedBox(width: 3),
                              const Text(
                                'Mansoura taqsim elmoalmen',
                                style: TextStyle(
                                  color: Color(0xff8E95A7),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Image.asset(
                        'assets/images/mohamed.png',
                        fit: BoxFit.cover,
                        errorBuilder:
                            (context, error, stackTrace) =>
                            Container(
                              width: 100,
                              height: 100,
                              clipBehavior:
                              Clip.antiAliasWithSaveLayer,
                              decoration: const BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(15)),
                              ),
                              child: const Icon(
                                Icons.warning_rounded,
                                color: Colors.black,
                                size: 30,
                              ),
                            ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Dr.Gamal Azb',
                            style: TextStyle(
                              color: Color(0xff596992),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              SvgPicture.asset(
                                  'assets/icons/phone_ic.svg'),
                              const SizedBox(width: 3),
                              const Text(
                                '+20 1022577896',
                                style: TextStyle(
                                  color: Color(0xff8E95A7),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              SvgPicture.asset(
                                  'assets/icons/location_ic.svg'),
                              const SizedBox(width: 3),
                              const Text(
                                'Mansoura port said street',
                                style: TextStyle(
                                  color: Color(0xff8E95A7),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Image.asset(
                        'assets/images/taher.png',
                        fit: BoxFit.cover,
                        errorBuilder:
                            (context, error, stackTrace) =>
                            Container(
                              width: 100,
                              height: 100,
                              clipBehavior:
                              Clip.antiAliasWithSaveLayer,
                              decoration: const BoxDecoration(

                                color: Colors.grey,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(15)),
                              ),
                              child: const Icon(
                                Icons.warning_rounded,
                                color: Colors.black,
                                size: 30,
                              ),
                            ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Dr.Taher Eladly',
                            style: TextStyle(
                              color: Color(0xff596992),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              SvgPicture.asset(
                                  'assets/icons/phone_ic.svg'),
                              const SizedBox(width: 3),
                              const Text(
                                '+20 1017170675',
                                style: TextStyle(
                                  color: Color(0xff8E95A7),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              SvgPicture.asset(
                                  'assets/icons/location_ic.svg'),
                              const SizedBox(width: 3),
                              const Text(
                                'Mansoura elabasy street',
                                style: TextStyle(
                                  color: Color(0xff8E95A7),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: const BoxDecoration(

                        color: Colors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),

                        ),
                      ),
                      child: Image.asset(
                        'assets/images/keshk1.jpg',
                        fit: BoxFit.cover,
                        errorBuilder:
                            (context, error, stackTrace) =>
                            Container(

                              width: 100,
                              height: 100,
                              clipBehavior:
                              Clip.antiAliasWithSaveLayer,
                              decoration: const BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(15)),
                              ),
                              child: const Icon(
                                Icons.warning_rounded,
                                color: Colors.black,
                                size: 30,
                              ),
                            ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Dr.Mohamed Keshk',
                            style: TextStyle(
                              color: Color(0xff596992),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              SvgPicture.asset(
                                  'assets/icons/phone_ic.svg'),
                              const SizedBox(width: 3),
                              const Text(
                                '+20 1099670724',
                                style: TextStyle(
                                  color: Color(0xff8E95A7),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              SvgPicture.asset(
                                  'assets/icons/location_ic.svg'),
                              const SizedBox(width: 3),
                              const Text(
                                'Mansoura torial',
                                style: TextStyle(
                                  color: Color(0xff8E95A7),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Image.asset(
                        'assets/images/hamdi.jpg',
                        fit: BoxFit.cover,
                        errorBuilder:
                            (context, error, stackTrace) =>
                            Container(
                              width: 100,
                              height: 100,
                              clipBehavior:
                              Clip.antiAliasWithSaveLayer,
                              decoration: const BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(15)),
                              ),
                              child: const Icon(
                                Icons.warning_rounded,
                                color: Colors.black,
                                size: 30,
                              ),
                            ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Dr.Hamdy yousri',
                            style: TextStyle(
                              color: Color(0xff596992),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              SvgPicture.asset(
                                  'assets/icons/phone_ic.svg'),
                              const SizedBox(width: 3),
                              const Text(
                                '+20 1015665163',
                                style: TextStyle(
                                  color: Color(0xff8E95A7),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              SvgPicture.asset(
                                  'assets/icons/location_ic.svg'),
                              const SizedBox(width: 3),
                              const Text(
                                'Mansoura Elotobis street',
                                style: TextStyle(
                                  color: Color(0xff8E95A7),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),





              ],
            ),
          ),
        ),
      ),
    );
  }
}
