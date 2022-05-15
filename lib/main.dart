import 'package:country_code_picker/country_localizations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:haircut_booking_app/book.dart';
import 'package:haircut_booking_app/home.dart';
import 'package:haircut_booking_app/index.dart';
import 'package:haircut_booking_app/login.dart';
import 'package:haircut_booking_app/otp.dart';
import 'package:haircut_booking_app/payment.dart';
import 'package:haircut_booking_app/queue.dart';
import 'package:haircut_booking_app/registration.dart';
import 'package:haircut_booking_app/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      localizationsDelegates: const [
        CountryLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      getPages: [
        GetPage(name: '/splash', page: () => const SplashScreenPage()),
        GetPage(
          name: '/login',
          page: () => const LogIn(),
        ),
        GetPage(
          name: '/registration',
          page: () => const RegistrationPage(),
          transition: Transition.rightToLeft,
        ),
        GetPage(name: '/home', page: () => HomePage()),
        GetPage(name: '/book', page: () => BookPage()),
        GetPage(name: '/payment', page: () => PaymentPage()),
        GetPage(name: '/queue', page: () => const QueuePage()),
        GetPage(name: '/index', page: () => const IndexPage()),
        GetPage(name: '/otp', page: () => OtpPage()),
      ],
    );
  }
}
