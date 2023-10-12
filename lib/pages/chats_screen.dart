import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_firebase_chat_core/flutter_firebase_chat_core.dart';
import 'package:hackathon/data/admin.dart';
import 'package:hackathon/data/colors.dart';
import 'package:hackathon/pages/chat.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: StreamBuilder<List<types.User>>(
        stream: FirebaseChatCore.instance.users(),
        initialData: const [],
        builder: (context, snapshot) {
          return ListView.builder(
              itemCount: admin2.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Chat(
                                      name: admin2[index]['name'],
                                      lastName: admin2[index]['lastName'],
                                      email: admin2[index]['email'],
                                      uid: admin2[index]['uid'],
                                    )));
                      },
                      child: Container(
                          height: 50,
                          color: mapColor,
                          child: Center(
                              child: Text(
                            '${admin2[index]['lastName']} ${admin2[index]['name']}',
                            style: TextStyle(fontFamily: 'comfortaa'),
                          ))),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                );
              });
        },
      ),
    );
  }
}
