import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '../status_item/view.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class StatusView extends StatefulWidget {
  StatusView({super.key});

  @override
  State<StatusView> createState() => StateChild();
}

class StatusViewState extends State<StatusView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  ListTile(
                    leading: Stack(children: [
                      CircleAvatar(
                        radius: 25.0,
                        backgroundColor: Colors.grey[200],
                        backgroundImage: NetworkImage(
                          "https://img1.looper.com/img/gallery/audi-may-have-spoiled-who-saves-tony-stark-in-avengers-4/intro-1547480934.jpg",
                        ),
                      ),
                      Positioned(
                        bottom: 0.0,
                        right: 0.0,
                        child: Container(
                          height: 20.0,
                          width: 20.0,
                          decoration: BoxDecoration(
                            color: Color(0xFF50b525),
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 2.0,
                              color: Colors.white,
                            ),
                          ),
                          child: Icon(
                            Icons.add,
                            size: 13,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ]),
                    title: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "My Status",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    subtitle: Container(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Text("Tap to add status update"),
                    ),
                  )
                ],
              ),
              Container(
                color: Colors.grey[300],
                height: 27,
                width: MediaQuery.of(context).size.width,
                child: Container(
                    padding: EdgeInsets.only(left: 20, top: 5),
                    child: Text(
                      'View updates',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.grey[600]),
                    )),
              ),
              ListView(
                shrinkWrap: true,
                children: [
                  StatusItemView(
                    name: "Joan Louji",
                    time: "Today, 7.22 PM",
                    seen: false,
                    statusImage:
                        "https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=80",
                  ),
                  StatusItemView(
                      name: "Komesh",
                      time: "Today, 6.47 PM",
                      seen: false,
                      statusImage:
                          "https://i.insider.com/5dcecef7e94e86049649291a?width=1136&format=jpeg"),
                  StatusItemView(
                      name: "Dalkush",
                      time: "Today, 6.00 PM",
                      seen: true,
                      statusImage:
                          "https://i.insider.com/57bf2e72b6fa0217008b4611?width=1100&format=jpeg&auto=webp"),
                  StatusItemView(
                    name: "Joan",
                    time: "Today, 5.05 PM",
                    seen: false,
                    statusImage:
                        "https://wikibio.in/wp-content/uploads/2019/11/Prabhu-Deva.jpg",
                  ),
                  StatusItemView(
                    name: "Racheal",
                    time: "Today, 4.31 PM",
                    seen: false,
                    statusImage:
                        "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=80",
                  ),
                  StatusItemView(
                      name: "Rose",
                      time: "Today, 4.31 PM",
                      seen: true,
                      statusImage:
                          "https://upload.wikimedia.org/wikipedia/en/thumb/3/3c/Chris_Hemsworth_as_Thor.jpg/220px-Chris_Hemsworth_as_Thor.jpg"),
                  StatusItemView(
                    name: "Jack",
                    time: "Today, 3.42 PM",
                    seen: false,
                    statusImage:
                        "https://images.unsplash.com/photo-1544725176-7c40e5a71c5e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2247&q=80",
                  ),
                  StatusItemView(
                      name: "Londry",
                      time: "Today, 2.18 PM",
                      seen: true,
                      statusImage:
                          "https://ae01.alicdn.com/kf/HTB19Z8zMpXXXXaFaXXXq6xXFXXXf/Marvel-Avengers-Characters-Captain-America-Thor-Action-Figure-Figma-Models-Movie-Fan-Collection-Adult-Gift-Plastic.jpg"),
                  StatusItemView(
                    name: "Jononu",
                    time: "Today, 7.56 AM",
                    seen: true,
                    statusImage:
                        "https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=80",
                  ),
                  StatusItemView(
                      name: "Sunthosh",
                      time: "Yesterday, 10.47 PM",
                      seen: false,
                      statusImage:
                          "https://img1.looper.com/img/gallery/the-two-avengers-infinity-war-characters-who-are-still-expected-to-meet/intro-1529504199.jpg"),
                  StatusItemView(
                    name: "Solva",
                    time: "Yesterday, 9.53 PM",
                    seen: true,
                    statusImage:
                        "https://images.unsplash.com/photo-1528763380143-65b3ac89a3ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                  ),
                  StatusItemView(
                      name: "Jerold",
                      time: "Yesterday, 9.47 PM",
                      seen: false,
                      statusImage:
                          "https://images.theconversation.com/files/120476/original/image-20160428-30950-6acgv9.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1200&h=900.0&fit=crop"),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton:
            Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: () {},
            heroTag: null,
            child: SvgPicture.asset(
              'assets/view/whatsapp_main_view/pencil.svg',
              colorFilter: ColorFilter.mode(
                Color(0xFF285C55),
                BlendMode.srcIn,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            backgroundColor: Color(0xFF5CC856),
            heroTag: null,
            onPressed: () {},
            child: SvgPicture.asset(
              'assets/view/whatsapp_main_view/camera.svg',
              colorFilter: ColorFilter.mode(
                Color(0xFF285C55),
                BlendMode.srcIn,
              ),
            ),
          )
        ]));
  }
}

main() async {
  return buildApp(appHome: StatusView());
}
