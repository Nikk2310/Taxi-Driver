import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

import 'providers/map_provider.dart';
import 'providers/user_provider.dart';
import 'screens/income.dart';
import 'screens/trips.dart';
import 'screens/login.dart';
import 'screens/maps.dart';
import 'screens/rides_boardings.dart';
import 'theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const TaxiAppDriver());
}

class TaxiAppDriver extends StatelessWidget {
  const TaxiAppDriver({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: MapProvider()),
        ChangeNotifierProvider.value(value: UserProvider.initialize()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Driver APP',
        initialRoute: BoardingUI.route,
        theme: theme,
        routes: {
          BoardingUI.route: (_) => const BoardingUI(),
          LoginUI.route: (_) => const LoginUI(),
          MapUI.route: (_) => const MapUI(),
          TripsUI.route: (_) => const TripsUI(),
          IncomeUI.route: (_) => const IncomeUI(),
        },
      ),
    );
  }
}
