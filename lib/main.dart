import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/features/userapp/presentation/bloc/userData/user_data_bloc.dart';
import 'features/userapp/presentation/bloc/user/user_bloc.dart';
import 'features/userapp/presentation/pages/home_page.dart';
import 'injectable_module.dart' as di;
import 'injectable_module.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<UserBloc>(),
        ),
        BlocProvider(
          create: (context) =>
              sl<UserDataBloc>()..add(const UserDataEvent.userList(page: 1)),
        ),
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: MyHomePage()),
    );
  }
}
