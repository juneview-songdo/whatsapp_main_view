import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '../call_item/view.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class CallView extends StatefulWidget {
  CallView({super.key});

  @override
  State<CallView> createState() => StateChild();
}

class CallViewState extends State<CallView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CallItemView(
              name: "Louji",
              time: "August 20, 7.58 PM",
              cal: true,
              callReceived: true,
              callMissed: true,
              userImage:
                  "https://upload.wikimedia.org/wikipedia/en/thumb/3/3c/Chris_Hemsworth_as_Thor.jpg/220px-Chris_Hemsworth_as_Thor.jpg"),
          CallItemView(
              name: "Racheal",
              time: "August 18, 10.40 AM",
              cal: true,
              callReceived: true,
              callMissed: false,
              userImage:
                  "https://ae01.alicdn.com/kf/HTB19Z8zMpXXXXaFaXXXq6xXFXXXf/Marvel-Avengers-Characters-Captain-America-Thor-Action-Figure-Figma-Models-Movie-Fan-Collection-Adult-Gift-Plastic.jpg"),
          CallItemView(
            name: "Ross",
            time: "August 10, 9.05 PM",
            cal: false,
            callReceived: true,
            callMissed: true,
            userImage:
                "https://images.unsplash.com/photo-1544724107-6d5c4caaff30?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
          ),
          CallItemView(
            name: "Rachel",
            time: "August 8, 1.58 PM",
            cal: true,
            callReceived: false,
            callMissed: false,
            userImage:
                "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
          ),
          CallItemView(
            name: "Joan Louji",
            time: "August 3, 7.34 AM",
            cal: true,
            callReceived: false,
            callMissed: false,
            userImage:
                "https://images.unsplash.com/photo-1528763380143-65b3ac89a3ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
          ),
          CallItemView(
            name: "Joe",
            time: "July 26, 5.38 PM",
            cal: false,
            callReceived: true,
            callMissed: true,
            userImage:
                "https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=80",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF5CC856),
        onPressed: () {},
        child: Icon(
          Icons.add_call,
          color: Colors.white,
        ),
      ),
    );
  }
}

main() async {
  return buildApp(appHome: CallView());
}
