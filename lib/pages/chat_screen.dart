import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widget/chat_item.dart';
import '../models/chat_model.dart';

class ChatScreen extends StatefulWidget {
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context, index) => ChatItemWidget(
          chatModelList: dummyData,
          index: index,
          query: '',
        ),
      ),
    );
  }
}
