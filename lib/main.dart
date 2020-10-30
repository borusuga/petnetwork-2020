import 'package:flutter/material.dart';
import 'package:petnetwork/application/screens/menuRun.dart';
import 'package:petnetwork/authorization/screens/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'dart:io';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if(Platform.isAndroid){
    // Android
    await Firebase.initializeApp(
      name: 'Init',
      options: const FirebaseOptions(
          appId: '1:489459189461:android:98649e5e5fcd553740845c',
          apiKey: 'AIzaSyCIZSSFQigIYcn804fiXIQyhfhfdSKERS8',
          messagingSenderId: 'my_messagingSenderId',
          projectId: 'petnetwork-2020'
      )
    );
  } else if(Platform.isIOS){
    // IOS
    await Firebase.initializeApp(
      name: 'Init',
      options: const FirebaseOptions(
          appId: '1:489459189461:ios:26b6075e941f7c9140845c',
          apiKey: 'AIzaSyBzUmiYlXlwTIrFG6ZjZoGfGvweVdYwO1M',
          messagingSenderId: 'my_messagingSenderId',
          projectId: 'petnetwork-2020'
      )
    );
  }
  runApp(PetNetApp());
} 

class PetNetApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Pet Network',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(80, 80, 130, 1),
        textTheme: TextTheme(title: TextStyle(color: Colors.white))
      ),
      //home: AuthorizationPage()
      //home: LoginScreen(),
      //home: HomePage(),
      home: MenuFrame(),
      //home: Profile(),
    );
  }
}