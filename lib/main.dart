import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'providers/incidence_provider.dart';
import 'screens/home_page.dart';
import 'models/incidence.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(IncidenceAdapter());
  await Hive.openBox<Incidence>('incidences');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => IncidenceProvider()),
      ],
      child: MaterialApp(
        title: 'App de Vigilancia',
        theme: ThemeData(
          brightness: Brightness.dark, // Tema oscuro
          primaryColor: Colors.blueGrey,
          colorScheme: ColorScheme.dark(
            primary: Colors.blueGrey,
            secondary: Colors.teal,
          ),
          textTheme: const TextTheme(
            bodyLarge: TextStyle(color: Colors.white),
            bodyMedium: TextStyle(color: Colors.white70),
            titleLarge: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        home: const HomePage(),
      ),
    );
  }
}
