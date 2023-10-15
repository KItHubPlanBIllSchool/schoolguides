// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GreetingScreen extends StatefulWidget {
  const GreetingScreen({super.key});

  @override
  State<GreetingScreen> createState() => _GreetingScreenState();
}

class _GreetingScreenState extends State<GreetingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(right: 20.0, left: 20),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 630,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: SvgPicture.asset(
                'lib/assets/images/Illustration.svg',
                height: 180,
              )),
              SizedBox(
                height: 60,
              ),
              Row(
                
                children: [
                  SvgPicture.asset(
                    'lib/assets/images/logobig.svg', height: 70,),
                  
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Все что тебе нужно в\nодном месте',
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'onest',
                      fontWeight: FontWeight.w800)),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Теперь учеба стала еще легче. Вся информация о твоей школе в одном приложении!',
                style: TextStyle(
                    color: const Color.fromRGBO(164, 172, 183, 1),
                    fontSize: 12),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromRGBO(64, 123, 255, 1)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(70),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: SizedBox(
                      height: 55, child: Center(child: Text('Войти')))),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(70),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                  child: SizedBox(
                      height: 55,
                      child: Center(
                          child: Text(
                        'Зарегистрироваться',
                        style: TextStyle(color: Colors.black),
                      ))))
            ],
          ),
        ),
      ),
    ));
  }
}
