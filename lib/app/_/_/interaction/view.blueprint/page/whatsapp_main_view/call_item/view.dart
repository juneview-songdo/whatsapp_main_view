import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class CallItemView extends StatefulWidget {
  CallItemView(
      {super.key,
      required this.name,
      required this.time,
      required this.userImage,
      required this.cal,
      required this.callReceived,
      required this.callMissed});

  final String name;
  final String time;
  final String userImage;
  final bool cal;
  final bool callReceived;
  final bool callMissed;

  @override
  State<CallItemView> createState() => StateChild();
}

class CallItemViewState extends State<CallItemView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 70),
          child: Divider(
            height: 10.0,
          ),
        ),
        ListTile(
          leading: Stack(children: [
            CircleAvatar(
              radius: 25.0,
              backgroundColor: Colors.grey[200],
              backgroundImage: NetworkImage(widget.userImage),
            ),
            SizedBox.shrink()
          ]),
          title: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    widget.name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Column(
                    children: [
                      widget.cal
                          ? Icon(
                              Icons.call,
                              color: Color(0xFF285C55),
                            )
                          : Icon(
                              Icons.videocam,
                              color: Color(0xFF285C55),
                            )
                    ],
                  )
                ],
              ),
            ],
          ),
          subtitle: Container(
            padding: const EdgeInsets.only(top: 4.0),
            child: Row(
              children: [
                Container(
                  child: Icon(
                    widget.callReceived ? Icons.call_received : Icons.call_made,
                    size: 17,
                    color: widget.callMissed ? Colors.red : Colors.green[500],
                  ),
                ),
                Container(
                  child: Text(widget.time),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

main() async {
  return buildApp(
    appHome: CallItemView(
        name: "Louji",
        time: "August 20, 7.58 PM",
        cal: true,
        callReceived: true,
        callMissed: true,
        userImage:
            "https://upload.wikimedia.org/wikipedia/en/thumb/3/3c/Chris_Hemsworth_as_Thor.jpg/220px-Chris_Hemsworth_as_Thor.jpg"),
  );
}
