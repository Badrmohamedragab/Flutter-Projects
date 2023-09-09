import 'package:chat_app/Bloc/auth_bloc/auth_bloc.dart';
import 'package:chat_app/cubits/Chat_cubit/chat_cubit.dart';

import 'package:chat_app/cubits/auth_cubit/auth_cubit.dart';
import 'package:chat_app/screens/Login_page.dart';
import 'package:chat_app/screens/Register_page.dart';
import 'package:chat_app/screens/chat_page.dart';
import 'package:chat_app/simple_bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // ignore: deprecated_member_use
  BlocOverrides.runZoned(
    () {
      runApp(const ScholarChat());
    },
    blocObserver: SimpleBlocObserver(),
  );
}

class ScholarChat extends StatelessWidget {
  const ScholarChat({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ChatCubit()),
        BlocProvider(create: (context) => AuthCubit()),
        BlocProvider(create: (context) => AuthBloc()),
      ],
      child: MaterialApp(
        routes: {
          'LoginPage': (context) => LoginPage(),
          'RegisterPage': (context) => RegisterPage(),
          'ChatPage': (context) => ChatPage(),
        },
        initialRoute: 'LoginPage',
        debugShowCheckedModeBanner: false,
        home: LoginPage(),
      ),
    );
  }
}
