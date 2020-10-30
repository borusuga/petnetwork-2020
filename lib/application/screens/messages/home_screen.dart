import 'package:flutter/material.dart';
import 'package:petnetwork/application/screens/messages/widgets/recent_chats.dart';

class MessageScreen extends StatefulWidget {
  final Function menuCallback;

  MessageScreen({@required this.menuCallback});

  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
            color: Colors.indigo[300],
            child: Column(children: [
              AppBar(
                leading: IconButton(
                  icon: Icon(Icons.menu),
                  iconSize: 30.0,
                  color: Colors.white,
                  onPressed: widget.menuCallback,
                ),
                title: Text(
                  'Сообщения',
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                elevation: 0.0,
                actions: <Widget>[
                  IconButton(
                    icon: Icon(Icons.search),
                    iconSize: 30.0,
                    color: Colors.white,
                    onPressed: () {},
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5.0),
                      topRight: Radius.circular(5.0),
                    ),
                  ),
                  child: Material(
                    child: Column(
                      children: <Widget>[
                        RecentChats(),
                      ],
                    ),
                  ),
                ),
              )
            ])
          );
  }
}
