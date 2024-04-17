import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class StatusItemView extends StatefulWidget {
  StatusItemView({
    super.key,
    required this.name,
    required this.time,
    required this.statusImage,
    required this.seen,
  });

  final String name;
  final String time;
  final String statusImage;
  final bool seen;

  @override
  State<StatusItemView> createState() => StateChild();
}

class StatusItemViewState extends State<StatusItemView> with StateMother {
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
          leading: Container(
            decoration: widget.seen
                ? null
                : BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.blue.shade300,
                      Colors.blueAccent.shade200,
                    ]),
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(32),
                  ),
            child: Container(
              padding: EdgeInsets.all(
                2,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(70),
//                        ),
                child: Image.network(
                  widget.statusImage,
                  width: 45,
                  height: 45,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          title: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    widget.name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          subtitle: Container(
            padding: const EdgeInsets.only(top: 4.0),
            child: Text(widget.time),
          ),
        )
      ],
    );
  }
}

main() async {
  return buildApp(
    appHome: StatusItemView(
        name: "Joan Louji",
        time: "Today, 7.22 PM",
        seen: false,
        statusImage:
            "https://www.hindustantimes.com/rf/image_size_444x250/HT/p2/2020/06/05/Pictures/_d1034a7e-a715-11ea-b9e4-8ce809f9739c.jpg"),
  );
}
