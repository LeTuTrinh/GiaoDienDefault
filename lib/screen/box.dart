import 'dart:html';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class BoxWidget extends StatefulWidget {
  const BoxWidget({super.key});

  @override
  State<BoxWidget> createState() => _BoxWidgetState();
}

class _BoxWidgetState extends State<BoxWidget> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: AnimatedContainer(
        padding: EdgeInsets.only(
          right: selected ? 10.0 : 50.0,
        ),
        duration: const Duration(seconds: 2),
        child: Container(
            height: 300,
            // padding: EdgeInsets.only(top: 80),
            margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 86, 47, 184),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Stack(
              children: [
                Expanded(
                  child: Container(
                    // padding: EdgeInsets.only(top: 80),
                    margin: EdgeInsets.fromLTRB(40, 60, 0, 0),
                    // color: Colors.black12,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello, Harry Mende',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          'Welcome back, your dashboard is ready!',
                          style: TextStyle(fontSize: 14, color: Colors.white70),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                          child: OutlinedButton(
                            onPressed: () {},
                            child: Text(
                              'Get Started',
                              style: TextStyle(color: Colors.white),
                            ),
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(width: 1, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    right: 0,
                    bottom: 0,
                    child: Image.asset('images/images.png'))
              ],
            )),
      ),
    );
  }
}

class box2 extends StatefulWidget {
  const box2({super.key});

  @override
  State<box2> createState() => _box2State();
}

class _box2State extends State<box2> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 86, 47, 184),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.fromLTRB(40, 0, 0, 0),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Premium Access!',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Text(
                        'We add 20+ new features and update community in your project We add 20+ new features',
                        style: TextStyle(fontSize: 14, color: Colors.white70),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            'Try now for free',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(width: 1, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Image.asset('/images/images.png'),
            )
          ],
        ));
  }
}

class NewU extends StatefulWidget {
  const NewU({super.key});

  @override
  State<NewU> createState() => _NewUState();
}

class _NewUState extends State<NewU> {
  GlobalKey menuKey = GlobalKey();

  showMenus(BuildContext context) async {
    final render = menuKey.currentContext!.findRenderObject() as RenderBox;
    await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(
          render.localToGlobal(Offset.zero).dx + 170,
          render.localToGlobal(Offset.zero).dy + 50,
          double.infinity,
          double.infinity),
      items: [
        PopupMenuItem(
          child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 242, 239, 247),
                border: Border(
                  bottom: BorderSide(
                    color: Color.fromARGB(255, 205, 195, 223),
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Text(
                      "Today",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 179, 178, 182),
                      ),
                    ),
                  ],
                ),
              )),
        ),
        PopupMenuItem(
          child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 242, 239, 247),
                border: Border(
                  bottom: BorderSide(
                    color: Color.fromARGB(255, 205, 195, 223),
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Text(
                      "Yesterday",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 179, 178, 182),
                      ),
                    ),
                  ],
                ),
              )),
        ),
        PopupMenuItem(
          child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 242, 239, 247),
                border: Border(
                  bottom: BorderSide(
                    color: Color.fromARGB(255, 205, 195, 223),
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Text(
                      "Tommorow",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 179, 178, 182),
                      ),
                    ),
                  ],
                ),
              )),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 400,
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Text(
                      'News & Update',
                      style: TextStyle(
                          color: Color.fromARGB(235, 36, 35, 35),
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Expanded(
                    child: Container(
                  alignment: Alignment.centerRight,
                  key: menuKey,
                  // constraints: BoxConstraints(
                  //   minWidth: 50,
                  //   minHeight: 50,
                  // ),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 242, 239, 247),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: MouseRegion(
                      onHover: (event) => showMenus(context),
                      child: Text(
                        '...',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Color.fromARGB(255, 86, 47, 184)),
                      ),
                    ),
                  ),
                ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          '/images/gg.jpg',
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Google Project Apply Reviwe',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text('  Todays News Headlines, Breaking...')
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 242, 239, 247),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Row(
                      children: [
                        Text(
                          '1 day ago',
                          style: TextStyle(
                            color: Color.fromARGB(255, 179, 178, 182),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Image.asset('/images/bl.jpg'),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Business Logo Create',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text('  Check out the latest news from...')
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 242, 239, 247),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Row(
                      children: [
                        Text(
                          '1 day ago',
                          style: TextStyle(
                            color: Color.fromARGB(255, 179, 178, 182),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Image.asset('/images/bp.jpg'),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Business Project Research',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text('  News in English: Get all Breaking...')
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 242, 239, 247),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Row(
                      children: [
                        Text(
                          '3 day ago',
                          style: TextStyle(
                            color: Color.fromARGB(255, 179, 178, 182),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Image.asset('/images/r.jpg'),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Recruitment in it Department',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text('  Technology and Indian Business News...')
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 242, 239, 247),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Row(
                      children: [
                        Text(
                          '2 hours ago',
                          style: TextStyle(
                            color: Color.fromARGB(255, 179, 178, 182),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Image.asset(
                          '/images/bp.jpg',
                          fit: BoxFit.cover,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Business Project Research',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text('  News in English: Get all Breaking...')
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 242, 239, 247),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Row(
                      children: [
                        Text(
                          '3 day ago',
                          style: TextStyle(
                            color: Color.fromARGB(255, 179, 178, 182),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}

class Recent extends StatefulWidget {
  const Recent({super.key});

  @override
  State<Recent> createState() => _RecentState();
}

class _RecentState extends State<Recent> {
  GlobalKey menuKey = GlobalKey();

  showMenus(BuildContext context) async {
    final render = menuKey.currentContext!.findRenderObject() as RenderBox;
    await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(
          render.localToGlobal(Offset.zero).dx + 170,
          render.localToGlobal(Offset.zero).dy + 50,
          double.infinity,
          double.infinity),
      items: [
        PopupMenuItem(
          child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 242, 239, 247),
                border: Border(
                  bottom: BorderSide(
                    color: Color.fromARGB(255, 205, 195, 223),
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Text(
                      "Today",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 179, 178, 182),
                      ),
                    ),
                  ],
                ),
              )),
        ),
        PopupMenuItem(
          child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 242, 239, 247),
                border: Border(
                  bottom: BorderSide(
                    color: Color.fromARGB(255, 205, 195, 223),
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Text(
                      "Yesterday",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 179, 178, 182),
                      ),
                    ),
                  ],
                ),
              )),
        ),
        PopupMenuItem(
          child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 242, 239, 247),
                border: Border(
                  bottom: BorderSide(
                    color: Color.fromARGB(255, 205, 195, 223),
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Text(
                      "Tommorow",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 179, 178, 182),
                      ),
                    ),
                  ],
                ),
              )),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 400,
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Text(
                      'Recent Activity',
                      style: TextStyle(
                          color: Color.fromARGB(235, 36, 35, 35),
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Expanded(
                    child: Container(
                  alignment: Alignment.centerRight,
                  key: menuKey,
                  // constraints: BoxConstraints(
                  //   minWidth: 50,
                  //   minHeight: 50,
                  // ),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 242, 239, 247),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: MouseRegion(
                      onHover: (event) => showMenus(context),
                      child: Text(
                        '...',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Color.fromARGB(255, 86, 47, 184)),
                      ),
                    ),
                  ),
                ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Row(
                      children: [
                        Image.asset('/images/a.png'),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: Text('Alana Brady added new event',
                                    style: TextStyle(
                                      color: Color.fromARGB(235, 36, 35, 35),
                                      fontWeight: FontWeight.bold,
                                    ))),
                            Text('  Sunday Cooking Class',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromARGB(239, 74, 63, 222),
                                ))
                          ],
                        ),
                      ],
                    )),
                    Container(
                      alignment: Alignment.topRight,
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 242, 239, 247),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Row(
                        children: [
                          Text(
                            '2 hours ago',
                            style: TextStyle(
                              color: Color.fromARGB(255, 179, 178, 182),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  child: Expanded(
                      child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('/images/l.png'),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: Text('Lena Burton added new',
                                    style: TextStyle(
                                      color: Color.fromARGB(235, 36, 35, 35),
                                      fontWeight: FontWeight.bold,
                                    ))),
                            Row(
                              children: [
                                Text(
                                  '  Comment On',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black26),
                                ),
                                Text(
                                  ' Vegetarian Food Fest',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromARGB(239, 74, 63, 222),
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(2, 5, 0, 0),
                                  padding: EdgeInsets.fromLTRB(5, 8, 7, 8),
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(182, 240, 236, 236),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '  Again this was our mistake, we are truly sorry for not',
                                        style: TextStyle(color: Colors.black26),
                                      ),
                                      Text(
                                        '  adhering to a strictly non animal product event.',
                                        style: TextStyle(color: Colors.black26),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
                ),
                Container(
                  alignment: Alignment.topRight,
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 242, 239, 247),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Row(
                    children: [
                      Text(
                        '2 hours ago',
                        style: TextStyle(
                          color: Color.fromARGB(255, 179, 178, 182),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Row(
                children: [
                  Container(
                    child: Expanded(
                        child: Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('/images/m.png'),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Text('Max Simmons attached 2',
                                      style: TextStyle(
                                        color: Color.fromARGB(235, 36, 35, 35),
                                        fontWeight: FontWeight.bold,
                                      ))),
                              Row(
                                children: [
                                  Text(
                                    '  Photos To',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.black26),
                                  ),
                                  Text(
                                    ' Food Photography Class',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color.fromARGB(239, 74, 63, 222),
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        margin: EdgeInsets.fromLTRB(2, 5, 0, 0),
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                182, 240, 236, 236),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5))),
                                        child: Image.asset(
                                          '/images/gg.jpg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Container(
                                        height: 50,
                                        margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                182, 240, 236, 236),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5))),
                                        child: Image.asset(
                                          '/images/nacthang.jpg',
                                          fit: BoxFit.cover,
                                          width: 70,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    )),
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 242, 239, 247),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Row(
                      children: [
                        Text(
                          '22 Jun 2020',
                          style: TextStyle(
                            color: Color.fromARGB(255, 179, 178, 182),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}

class Bang extends StatefulWidget {
  const Bang({super.key});

  @override
  State<Bang> createState() => _BangState();
}

class _BangState extends State<Bang> {
  GlobalKey menuKey = GlobalKey();

  showMenus(BuildContext context) async {
    final render = menuKey.currentContext!.findRenderObject() as RenderBox;
    await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(
          render.localToGlobal(Offset.zero).dx + 170,
          render.localToGlobal(Offset.zero).dy + 50,
          double.infinity,
          double.infinity),
      items: [
        PopupMenuItem(
          child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 242, 239, 247),
                border: Border(
                  bottom: BorderSide(
                    color: Color.fromARGB(255, 205, 195, 223),
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Text(
                      "Done",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 179, 178, 182),
                      ),
                    ),
                  ],
                ),
              )),
        ),
        PopupMenuItem(
          child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 242, 239, 247),
                border: Border(
                  bottom: BorderSide(
                    color: Color.fromARGB(255, 205, 195, 223),
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Text(
                      "Pending",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 179, 178, 182),
                      ),
                    ),
                  ],
                ),
              )),
        ),
        PopupMenuItem(
          child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 242, 239, 247),
                border: Border(
                  bottom: BorderSide(
                    color: Color.fromARGB(255, 205, 195, 223),
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Text(
                      "Rejected",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 179, 178, 182),
                      ),
                    ),
                  ],
                ),
              )),
        ),
        PopupMenuItem(
          child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 242, 239, 247),
                border: Border(
                  bottom: BorderSide(
                    color: Color.fromARGB(255, 205, 195, 223),
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Text(
                      "In Progress",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 179, 178, 182),
                      ),
                    ),
                  ],
                ),
              )),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 400,
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Text(
                    'Ongoing Projects',
                    style: TextStyle(
                        color: Color.fromARGB(235, 36, 35, 35),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                alignment: Alignment.centerRight,
                key: menuKey,
                // constraints: BoxConstraints(
                //   minWidth: 50,
                //   minHeight: 50,
                // ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 242, 239, 247),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: MouseRegion(
                    onHover: (event) => showMenus(context),
                    child: Text(
                      '...',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Color.fromARGB(255, 86, 47, 184)),
                    ),
                  ),
                ),
              ))
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Table(
              children: [
                TableRow(children: [
                  Container(
                    height: 40,
                    padding: EdgeInsets.only(top: 10, left: 7),
                    alignment: Alignment.centerLeft,
                    color: Color.fromARGB(255, 242, 239, 247),
                    child: Column(children: [
                      Text('Name',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(235, 36, 35, 35),
                              fontWeight: FontWeight.bold))
                    ]),
                  ),
                  Container(
                    height: 40,
                    padding: EdgeInsets.only(top: 10, left: 7),
                    alignment: Alignment.centerLeft,
                    color: Color.fromARGB(255, 242, 239, 247),
                    child: Column(children: [
                      Text('Date',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(235, 36, 35, 35),
                              fontWeight: FontWeight.bold))
                    ]),
                  ),
                  Container(
                    height: 40,
                    padding: EdgeInsets.only(top: 10, left: 7),
                    alignment: Alignment.centerLeft,
                    color: Color.fromARGB(255, 242, 239, 247),
                    child: Column(children: [
                      Text('Project',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(235, 36, 35, 35),
                              fontWeight: FontWeight.bold))
                    ]),
                  ),
                  Container(
                    height: 40,
                    padding: EdgeInsets.only(top: 10, left: 7, right: 10),
                    alignment: Alignment.centerRight,
                    color: Color.fromARGB(255, 242, 239, 247),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('Status',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(235, 36, 35, 35),
                                fontWeight: FontWeight.bold,
                              ))
                        ]),
                  ),
                ]),
                TableRow(children: [
                  Row(children: [
                    Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 242, 239, 247),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Image.asset('/images/gary.png')),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Gray   ',
                              style: TextStyle(
                                color: Color.fromARGB(235, 36, 35, 35),
                              ),
                            ),
                          ),
                          Text(
                            '   UK Desig Team',
                            style:
                                TextStyle(color: Colors.black26, fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ]),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 20, 0, 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('12 May 2020',
                              style: TextStyle(
                                color: Color.fromARGB(235, 36, 35, 35),
                              )),
                          Text(
                            'In 6 Days',
                            style:
                                TextStyle(color: Colors.black26, fontSize: 12),
                          )
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 20, 0, 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Product Design',
                              style: TextStyle(
                                color: Color.fromARGB(235, 36, 35, 35),
                              )),
                          Text(
                            '7,800',
                            style:
                                TextStyle(color: Colors.black26, fontSize: 12),
                          )
                        ]),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.deepPurple[100],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(3))),
                          child: Column(
                            children: [
                              Text(
                                'Done',
                                style: TextStyle(
                                    color: Colors.deepPurple[400],
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
                TableRow(children: [
                  Row(children: [
                    Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 242, 239, 247),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Image.asset('/images/ralph.png')),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Ralph Waters   ',
                              style: TextStyle(
                                color: Color.fromARGB(235, 36, 35, 35),
                              ),
                            ),
                          ),
                          Text(
                            '   UX Ninjas',
                            style:
                                TextStyle(color: Colors.black26, fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ]),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 12, 0, 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('06 May 2020',
                              style: TextStyle(
                                color: Color.fromARGB(235, 36, 35, 35),
                              )),
                          Text(
                            'Overdue',
                            style:
                                TextStyle(color: Colors.black26, fontSize: 12),
                          )
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Concept Design',
                              style: TextStyle(
                                color: Color.fromARGB(235, 36, 35, 35),
                              )),
                          Text(
                            '670',
                            style:
                                TextStyle(color: Colors.black26, fontSize: 12),
                          )
                        ]),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.amber[100],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(3))),
                          child: Column(
                            children: [
                              Text(
                                'Pending',
                                style: TextStyle(
                                    color: Colors.amber,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
                TableRow(children: [
                  Row(children: [
                    Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 242, 239, 247),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Image.asset('/images/edwin.png')),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Edwin Day',
                              style: TextStyle(
                                color: Color.fromARGB(235, 36, 35, 35),
                              ),
                            ),
                          ),
                          Text(
                            '   SF Dev Team',
                            style:
                                TextStyle(color: Colors.black26, fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ]),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('28 Sep 2020',
                              style: TextStyle(
                                color: Color.fromARGB(235, 36, 35, 35),
                              )),
                          Text(
                            'in 4 Months',
                            style:
                                TextStyle(color: Colors.black26, fontSize: 12),
                          )
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 13),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('UX Consulting',
                              style: TextStyle(
                                color: Color.fromARGB(235, 36, 35, 35),
                              )),
                          Text(
                            '7,889',
                            style:
                                TextStyle(color: Colors.black26, fontSize: 12),
                          )
                        ]),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 16),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.red[100],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(3))),
                          child: Column(
                            children: [
                              Text(
                                'Rejected',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
                TableRow(children: [
                  Row(children: [
                    Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 242, 239, 247),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Image.asset('/images/gary2.png')),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Gary   ',
                              style: TextStyle(
                                color: Color.fromARGB(235, 36, 35, 35),
                              ),
                            ),
                          ),
                          Text(
                            '  UK Desig Team',
                            style:
                                TextStyle(color: Colors.black26, fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ]),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('12 May 2020',
                              style: TextStyle(
                                color: Color.fromARGB(235, 36, 35, 35),
                              )),
                          Text(
                            'In 6 Days',
                            style:
                                TextStyle(color: Colors.black26, fontSize: 12),
                          )
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Product Design',
                              style: TextStyle(
                                color: Color.fromARGB(235, 36, 35, 35),
                              )),
                          Text(
                            'Toyota',
                            style:
                                TextStyle(color: Colors.black26, fontSize: 12),
                          )
                        ]),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.blue[100],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(3))),
                          child: Column(
                            children: [
                              Text(
                                'In Progress',
                                style: TextStyle(
                                    color: Colors.blue[700],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
              ],
            ),
          ),
        ]));
  }
}

class Defaul extends StatelessWidget {
  const Defaul({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
              child: Row(
            children: [
              Text(
                'Default',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(235, 36, 35, 35),
                ),
              ),
            ],
          )),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.home_outlined),
                // iconSize: 24,
                color: Color.fromARGB(255, 86, 47, 184),
              ),
              Text(
                '/  Dashboarch  /',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 86, 47, 184)),
              ),
              Text(
                'Default',
                style: TextStyle(color: Color.fromARGB(255, 86, 47, 184)),
              )
            ],
          ))
        ],
      ),
    );
  }
}

class Report extends StatefulWidget {
  const Report({super.key});

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  GlobalKey menuKey = GlobalKey();

  showMenus(BuildContext context) async {
    final render = menuKey.currentContext!.findRenderObject() as RenderBox;
    await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(
          render.localToGlobal(Offset.zero).dx + 170,
          render.localToGlobal(Offset.zero).dy + 50,
          double.infinity,
          double.infinity),
      items: [
        PopupMenuItem(
          child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 242, 239, 247),
                border: Border(
                  bottom: BorderSide(
                    color: Color.fromARGB(255, 205, 195, 223),
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Text(
                      "Today",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 179, 178, 182),
                      ),
                    ),
                  ],
                ),
              )),
        ),
        PopupMenuItem(
          child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 242, 239, 247),
                border: Border(
                  bottom: BorderSide(
                    color: Color.fromARGB(255, 205, 195, 223),
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Text(
                      "Yesterday",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 179, 178, 182),
                      ),
                    ),
                  ],
                ),
              )),
        ),
        PopupMenuItem(
          child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 242, 239, 247),
                border: Border(
                  bottom: BorderSide(
                    color: Color.fromARGB(255, 205, 195, 223),
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Text(
                      "Tommorow",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 179, 178, 182),
                      ),
                    ),
                  ],
                ),
              )),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Text(
                      'Report',
                      style: TextStyle(
                          color: Color.fromARGB(235, 36, 35, 35),
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Expanded(
                    child: Container(
                  alignment: Alignment.centerRight,
                  key: menuKey,
                  // constraints: BoxConstraints(
                  //   minWidth: 50,
                  //   minHeight: 50,
                  // ),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 242, 239, 247),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: MouseRegion(
                      onHover: (event) => showMenus(context),
                      child: Text(
                        '...',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Color.fromARGB(255, 86, 47, 184)),
                      ),
                    ),
                  ),
                )),
              ],
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color.fromARGB(255, 242, 239, 247),
                  ),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              right: BorderSide(
                                color: Color.fromARGB(255, 242, 239, 247),
                              ),
                            ),
                          ),
                          child: Container(
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'This Week',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 179, 178, 182),
                                            fontSize: 12),
                                      ),
                                    ),
                                    Text('+86.53%',
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(235, 36, 35, 35),
                                            fontWeight: FontWeight.bold)),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      child: LinearPercentIndicator(
                                        barRadius: Radius.circular(5),
                                        width: 200,
                                        lineHeight: 10,
                                        percent: 40 / 100,
                                        animation: false,
                                        progressColor:
                                            Color.fromARGB(255, 86, 47, 184),
                                        backgroundColor:
                                            Color.fromARGB(255, 242, 239, 247),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Container(
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Last Week',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 179, 178, 182),
                                        fontSize: 12),
                                  ),
                                ),
                                Text('-34.50%',
                                    style: TextStyle(
                                        color: Color.fromARGB(235, 36, 35, 35),
                                        fontWeight: FontWeight.bold)),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: LinearPercentIndicator(
                                    barRadius: Radius.circular(5),
                                    width: 200,
                                    lineHeight: 10,
                                    percent: 60 / 100,
                                    animation: false,
                                    progressColor: Colors.amber,
                                    backgroundColor: Colors.amber[100],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Last Week',
                            style: TextStyle(
                                color: Color.fromARGB(255, 179, 178, 182),
                                fontSize: 12),
                          ),
                        ),
                        Text('-34.50%',
                            style: TextStyle(
                                color: Color.fromARGB(235, 36, 35, 35),
                                fontWeight: FontWeight.bold)),
                      ]),
                    ],
                  ),
                ),
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'New Report',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 86, 47, 184),
                          ),
                        ),
                      ),
                    ),
                  ],
                ))
              ],
            ),
          ],
        ));
  }
}
