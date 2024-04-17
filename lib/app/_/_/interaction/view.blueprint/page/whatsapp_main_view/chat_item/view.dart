import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class ChatItemView extends StatefulWidget {
  ChatItemView({
    super.key,
    required this.name,
    required this.message,
    required this.time,
    required this.userImage,
    required this.noUnseenMsg,
    required this.lastMessageType,
    required this.seen,
    required this.received,
  });

  final String name;
  final String message;
  final String time;
  final String userImage;
  final int noUnseenMsg;
  final String lastMessageType;
  final bool seen;
  final bool received;

  @override
  State<ChatItemView> createState() => StateChild();
}

class ChatItemViewState extends State<ChatItemView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 70),
          child: Divider(
            height: 10.0,
          ).padding(right: 10),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 25.0,
              backgroundColor: Colors.grey[200],
              backgroundImage: NetworkImage(widget.userImage),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: _text(widget.lastMessageType, widget.message,
                          widget.received, widget.seen),
                    ),
                  ],
                ).expanded(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      widget.time,
                      style: TextStyle(color: Colors.grey, fontSize: 12.0),
                    ),
                    Gap(3),
                    widget.noUnseenMsg != 0
                        ? Container(
                            height: 25.0,
                            width: 25.0,
                            decoration: BoxDecoration(
                              color: Color(0xFF61CF71),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white,
                                width: 1.0,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                widget.noUnseenMsg.toString(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          )
                        : SizedBox.shrink(),
                  ],
                ),
              ],
            ).padding(left: 8).expanded(),
          ],
        ).padding(horizontal: 15,top: 10,bottom: 5),
      ],
    );
  }

  _text(String messageType, String message, bool rec, bool seen) {
    if (messageType == "message") {
      return Row(
        children: [
          Row(
            children: [
              SvgPicture.asset(
                  rec
                      ? "assets/view/whatsapp_main_view/check-all.svg"
                      : "assets/view/whatsapp_main_view/check.svg",
                  width: 15,
                  colorFilter: ColorFilter.mode(
                      seen ? Colors.blue : Colors.grey.shade600,
                      BlendMode.srcIn)),
            ],
          ),
          Gap(7),
          Text(
            message,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.grey, fontSize: 15.0),
          ).expanded(),
        ],
      );
    } else if (messageType == "voice") {
      return Row(
        children: [
          Icon(
            Icons.keyboard_voice,
            size: 20,
            color: Color(0XFF5DB8F6),
          ),
          SizedBox(
            width: 7,
          ),
          Text(message),
        ],
      );
    } else if (messageType == "file") {
      return Row(
        children: [
          Icon(
            Icons.insert_drive_file,
            size: 17,
            color: Colors.grey[700],
          ),
          SizedBox(
            width: 7,
          ),
          Text(message),
        ],
      );
    } else {
      return Text(
        message,
        style: TextStyle(color: Colors.grey, fontSize: 15.0),
      );
    }
  }
}

main() async {
  return buildApp(
      appHome: ChatItemView(
          name: "Joan Louji",
          message: "Hey dude, What's up",
          time: "1.34 PM",
          noUnseenMsg: 0,
          received: true,
          seen: true,
          lastMessageType: "message",
          userImage:
              "https://i.pinimg.com/originals/99/b1/2b/99b12b4652764ce926cd908ec1947842.jpg"));
}
