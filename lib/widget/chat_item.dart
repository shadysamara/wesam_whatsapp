import 'package:flutter/material.dart';
import 'package:whatsapp_clone/helper/utils.dart';
import '../models/chat_model.dart';

class ChatItemWidget extends StatelessWidget {
  final List<ChatModel> chatModelList;
  final int index;
  final String query;

  ChatItemWidget({this.chatModelList, this.index, this.query});

  @override
  Widget build(BuildContext context) => Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        child: Column(
          children: <Widget>[
            Divider(
              height: 10.0,
              indent: 70.0,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 35.0,
                  backgroundImage: NetworkImage(chatModelList[index].avatarUrl),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: TextSpan(
                                  text: dummyData[index]
                                      .name
                                      .substring(0, query.length),
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16.0),
                                  children: [
                                    TextSpan(
                                        text: dummyData[index]
                                            .name
                                            .substring(query.length),
                                        style: TextStyle(
                                            color:
                                                Color(Utils.primaryTextColor()),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16.0))
                                  ]),
                            ),
                            Text(dummyData[index].time)
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RichText(
                          text: TextSpan(
                              text: dummyData[index]
                                  .message
                                  .substring(0, query.length),
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16.0),
                              children: [
                                TextSpan(
                                    text: dummyData[index]
                                        .message
                                        .substring(query.length),
                                    style: TextStyle(
                                        color: Color(Utils.primaryTextColor()),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16.0))
                              ]),
                        )
                      ],
                    ),
                  ),
                ),
                Icon(Icons.arrow_forward_ios)
              ],
            )
            // ListTile(
            //   onTap: () => print('${chatModelList[index].name} is clicked'),

            //   title: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: <Widget>[
            //       query != null && query.isNotEmpty
            // ? RichText(
            //     text: TextSpan(
            //         text: chatModelList[index]
            //             .name
            //             .substring(0, query.length),
            //         style: TextStyle(
            //             color: Colors.blue,
            //             fontWeight: FontWeight.w400,
            //             fontSize: 16.0),
            //         children: [
            //           TextSpan(
            //               text: chatModelList[index]
            //                   .name
            //                   .substring(query.length),
            //               style: TextStyle(
            //                   color: Color(Utils.primaryTextColor()),
            //                   fontWeight: FontWeight.w400,
            //                   fontSize: 16.0))
            //         ]),
            //   )
            //           : Text(
            //               chatModelList[index].name,
            //               style: TextStyle(
            //                   color: Color(Utils.primaryTextColor()),
            //                   fontWeight: FontWeight.w500,
            //                   fontSize: 16.0),
            //             ),
            //       Text(
            //         chatModelList[index].time,
            //         style: TextStyle(
            //             color: Color(Utils.secondaryTextColor()),
            //             fontWeight: FontWeight.w400,
            //             fontSize: 14.0),
            //       )
            //     ],
            //   ),
            //   subtitle: Container(
            //     padding: const EdgeInsets.only(top: 5),
            //     child: Text(
            //       chatModelList[index].message,
            //       style: TextStyle(
            //           color: Color(Utils.secondaryTextColor()),
            //           fontWeight: FontWeight.w400,
            //           fontSize: 14.0),
            //     ),
            //   ),
            // )
          ],
        ),
      );
}
