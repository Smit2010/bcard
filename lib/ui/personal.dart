import 'package:bcard/presentation/custom_icons_icons.dart';
import 'package:flutter/material.dart';

class Personal extends StatefulWidget {
  @override
  PersonalState createState() => PersonalState();
}

class PersonalState extends State<Personal> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(children: <Widget>[
      SizedBox(height: 30),
      ProfilePicture(),
      ProfileInfo(),
      SizedBox(height: 30),
      ProfileStats(),
      //ProfileTags(),
    ]));
  }
}

class ProfilePicture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
      Card(
        color: Colors.grey[100],
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Container(
          height: 120.0,
          width: 120.0,
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new NetworkImage(
                  'https://firebasestorage.googleapis.com/v0/b/bcard-8a11b.appspot.com/o/new.jpg?alt=media&token=6f09631f-c466-42f7-a008-cca024419d80'),
              fit: BoxFit.cover,
            ),
            shape: BoxShape.circle,
          ),
        ),
      ),
    ]);
  }
}

class ProfileInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                  children: <Widget>[
                    Text("Sanket Chaudhari",
                        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
                  ]),
              SizedBox(width: 5,),
              GestureDetector(
                child: Material(
                  child: InkWell(
                    child: SizedBox(
                      child: Image.asset('assets/icons/edit.png', height: 13, width: 13, scale: 1,),
                    ),
                    onTap: () {},
                  ),
                ),
              )]),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                  children: <Widget>[
                    Text("Developer",
                        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
                  ]),
              SizedBox(width: 5,),
              GestureDetector(
                child: Material(
                  child: InkWell(
                    child: SizedBox(
                      child: Image.asset('assets/icons/edit.png', height: 13, width: 13, scale: 1,),
                    ),
                    onTap: () {},
                  ),
                ),
              )
            ])
      ],
    );
  }
}

class ProfileStats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                ClipOval(
                  child: Material(
                    color: Colors.black12, // button color
                    child: InkWell(
                      child: SizedBox(
                          width: 60,
                          height: 60,
                          child: Icon(
                            CustomIcons.group_12,
                            size: 40.0,
                          )),
                      onTap: () {},
                    ),
                  ),
                ),
                Text("Connections",
                    style: TextStyle(fontWeight: FontWeight.bold))
              ],
            ),
            Column(
              children: <Widget>[
                ClipOval(
                  child: Material(
                    color: Colors.black12, // button color
                    child: InkWell(
                      child: SizedBox(
                          width: 60,
                          height: 60,
                        child: Image.asset('assets/icons/focus.png'),
                      ),
                      onTap: () {},
                    ),
                  ),
                ),
                Text(
                    "Focus Mode", style: TextStyle(fontWeight: FontWeight.bold))
              ],
            ),
            Column(
              children: <Widget>[
                ClipOval(
                  child: Material(
                    color: Colors.black12, // button color
                    child: InkWell(
                      child: SizedBox(
                          width: 60,
                          height: 60,
                        child: Image.asset('assets/icons/card.png'),
                      ),
                      onTap: () {},
                    ),
                  ),
                ),
                Text("Card Visitors",
                    style: TextStyle(fontWeight: FontWeight.bold))
              ],
            )
          ],
        ),
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                ClipOval(
                  child: Material(
                    color: Colors.black12, // button color
                    child: InkWell(
                      child: SizedBox(
                          width: 60,
                          height: 60,
                        child: Image.asset('assets/icons/web.png'),
                      ),
                      onTap: () {},
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                ClipOval(
                  child: Material(
                    color: Colors.black12, // button color
                    child: InkWell(
                      child: SizedBox(
                          width: 60,
                          height: 60,
                        child: Image.asset('assets/icons/social.png'),
                      ),
                      onTap: () {},
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                ClipOval(
                  child: Material(
                    color: Colors.black12, // button color
                    child: InkWell(
                      child: SizedBox(
                          width: 60,
                          height: 60,
                        child: Image.asset('assets/icons/email.png'),
                      ),
                      onTap: () {},
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                ClipOval(
                  child: Material(
                    color: Colors.black12, // button color
                    child: InkWell(
                      child: SizedBox(
                          width: 60,
                          height: 60,
                        child: Image.asset('assets/icons/location.png'),
                      ),
                      onTap: () {},
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

/*class ProfileTags extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
      height: 50.0,
        //alignment: Alignment.bottomCenter,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 1.0),
              color: Colors.tealAccent,
              height: 10.0,
              child: Text('$index'),
            );
          },
        )
    ));
  }
}*/