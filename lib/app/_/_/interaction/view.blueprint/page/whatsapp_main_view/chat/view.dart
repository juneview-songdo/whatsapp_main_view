import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '../chat_item/view.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class ChatView extends StatefulWidget {
  ChatView({super.key});

  @override
  State<ChatView> createState() => StateChild();
}

class ChatViewState extends State<ChatView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(bottom: 100),
        children: [
          ChatItemView(
            name: "Joan Louji",
            message: "Hey dude, What's up",
            time: "1.34 PM",
            noUnseenMsg: 0,
            received: true,
            seen: true,
            lastMessageType: "message",
            userImage:
                "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=80",
          ),
          ChatItemView(
            name: "Tony",
            message: "5.02",
            time: "10.00 AM",
            noUnseenMsg: 0,
            received: false,
            seen: false,
            lastMessageType: "voice",
            userImage:
                "https://images.unsplash.com/photo-1544725176-7c40e5a71c5e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2247&q=80",
          ),
          ChatItemView(
              name: "Stark",
              message: "Wassup !",
              time: "5:00",
              noUnseenMsg: 1,
              received: true,
              seen: false,
              lastMessageType: "message",
              userImage:
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/Mark_Ruffalo_in_2017_by_Gage_Skidmore.jpg/220px-Mark_Ruffalo_in_2017_by_Gage_Skidmore.jpg"),
          ChatItemView(
            name: "Rachel",
            message: "Love you",
            time: "8:39 AM",
            noUnseenMsg: 0,
            received: true,
            seen: true,
            lastMessageType: "message",
            userImage:
                "https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=80",
          ),
          ChatItemView(
              name: "Captain",
              message: "1.02",
              time: "8: 00 AM",
              noUnseenMsg: 4,
              received: true,
              seen: false,
              lastMessageType: "voice",
              userImage:
                  "https://ae01.alicdn.com/kf/HTB19Z8zMpXXXXaFaXXXq6xXFXXXf/Marvel-Avengers-Characters-Captain-America-Thor-Action-Figure-Figma-Models-Movie-Fan-Collection-Adult-Gift-Plastic.jpg"),
          ChatItemView(
            name: "Joe",
            message: "Flutter Demo",
            time: "6 AM",
            noUnseenMsg: 0,
            received: false,
            seen: false,
            lastMessageType: "file",
            userImage:
                "https://images.unsplash.com/photo-1528763380143-65b3ac89a3ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
          ),
          ChatItemView(
            name: "Richie",
            message: "Hey Joan, How do you do?",
            time: "4 AM",
            noUnseenMsg: 0,
            received: true,
            seen: false,
            lastMessageType: "message",
            userImage:
                "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
          ),
          ChatItemView(
            name: "Vikadan",
            message: "I want to learn flutter. Can I get help from you?",
            time: "yesterday",
            noUnseenMsg: 0,
            received: true,
            seen: false,
            lastMessageType: "message",
            userImage:
                "https://images.unsplash.com/photo-1544724107-6d5c4caaff30?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
          ),
          ChatItemView(
              name: "Vijay",
              message: "I am your bug fan",
              time: "yesterday",
              noUnseenMsg: 0,
              received: true,
              seen: true,
              lastMessageType: "message",
              userImage:
                  "https://img1.looper.com/img/gallery/the-two-avengers-infinity-war-characters-who-are-still-expected-to-meet/intro-1529504199.jpg"),
          ChatItemView(
              name: "Louji",
              message: "4.00",
              time: "yesterday",
              noUnseenMsg: 0,
              received: false,
              seen: false,
              lastMessageType: "voice",
              userImage:
                  "https://hips.hearstapps.com/digitalspyuk.cdnds.net/18/09/1519729389-thor-ragnarok-reviews-big.jpg?crop=1.00xw:0.923xh;0,0&resize=640:*"),
          ChatItemView(
              name: "Joan",
              message: "politics",
              time: "yesterday",
              noUnseenMsg: 0,
              received: true,
              seen: false,
              lastMessageType: "file",
              userImage:
                  "https://upload.wikimedia.org/wikipedia/en/thumb/3/3c/Chris_Hemsworth_as_Thor.jpg/220px-Chris_Hemsworth_as_Thor.jpg"),
          ChatItemView(
              name: "Isac",
              message: "May god bless you.",
              time: "22/8/2020",
              noUnseenMsg: 0,
              received: true,
              seen: true,
              lastMessageType: "message",
              userImage:
                  "https://upload.wikimedia.org/wikipedia/en/thumb/3/3c/Chris_Hemsworth_as_Thor.jpg/220px-Chris_Hemsworth_as_Thor.jpg"),
          ChatItemView(
              name: "Ibrahim",
              message: "Who are you",
              time: "22/8/2020",
              noUnseenMsg: 3,
              received: true,
              seen: true,
              lastMessageType: "message",
              userImage:
                  "https://i.insider.com/5dcecef7e94e86049649291a?width=1136&format=jpeg"),
          ChatItemView(
              name: "Edwin",
              message: "Let's play a match now",
              time: "22/8/2020",
              noUnseenMsg: 0,
              received: true,
              seen: false,
              lastMessageType: "message",
              userImage:
                  "https://images.theconversation.com/files/120476/original/image-20160428-30950-6acgv9.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1200&h=900.0&fit=crop"),
          ChatItemView(
              name: "Rachel",
              message: "lot's of showers",
              time: "22/8/2020",
              noUnseenMsg: 0,
              received: false,
              seen: false,
              lastMessageType: "message",
              userImage:
                  "https://i.insider.com/57bf2e72b6fa0217008b4611?width=1100&format=jpeg&auto=webp"),
          ChatItemView(
              name: "Rani",
              message: "hey there",
              time: "22/8/2020",
              noUnseenMsg: 32,
              received: true,
              seen: false,
              lastMessageType: "message",
              userImage:
                  "https://img1.looper.com/img/gallery/the-avenger-who-could-have-singlehandedly-defeated-thanos/intro-1564425786.jpg"),
          ChatItemView(
              name: "Prabu",
              message: "What about your job.",
              time: "22/8/2020",
              noUnseenMsg: 0,
              received: true,
              seen: false,
              lastMessageType: "message",
              userImage:
                  "https://static2.srcdn.com/wordpress/wp-content/uploads/2019/08/Tony-Stark-and-Bruce-Banner-in-The-Avengers-1.jpg?q=50&fit=crop&w=960&h=500"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF5CC856),
        onPressed: () {},
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
    );
  }
}

main() async {
  return buildApp(appHome: ChatView());
}
