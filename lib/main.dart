import 'package:binaryveda/core/di_config.dart';
import 'package:binaryveda/core/theme.dart';
import 'package:binaryveda/core/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:binaryveda/presentation/cubit/dashboard_cubit.dart';

import 'presentation/pages/dashboard_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Configure dependencies
  await configureDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;

    TextTheme textTheme = createTextTheme(context, "DM Mono", "Roboto Mono");
    MaterialTheme theme = MaterialTheme(textTheme);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Assignment',
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      themeMode: ThemeMode.light,
      home: BlocProvider(
        create: (_) => GetIt.instance<DashboardCubit>()..loadPhotos(),
        child: DashboardPage(),
      ),
    );
  }
}
