import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

import 'core/stripe_consts.dart';
import 'gateway/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey = StripeConsts.publishKey;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const SplashView(),
    );
  }
}
