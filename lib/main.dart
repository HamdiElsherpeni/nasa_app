import 'package:flutter/material.dart';
import 'package:nasa_app/core/app/nasa_space_app.dart';
import 'package:nasa_app/core/di/set_up_get_it.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setUpGetIt();
  runApp(const NasaSpace());
}
