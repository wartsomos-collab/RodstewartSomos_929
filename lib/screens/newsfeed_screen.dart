import 'package:flutter/material.dart';
import 'package:widget/components/globalappbarcomponent.dart';
import 'package:widget/components/newsfeedComponent.dart';

class NewsfeedScreen extends StatefulWidget {
  const NewsfeedScreen({super.key});

  @override
  State<NewsfeedScreen> createState() => _NewsfeedScreenState();
}

class _NewsfeedScreenState extends State<NewsfeedScreen> {

  final List<Map<String, String>> newsfeed = [
    {
      "username": "neneng b",
      "timeposted": "2 hours ago",
      "status": "ma ano ulam",
      "likes": "120k",
      "comments": "25k",
      "shares": "10k",
    },
    {
      "username": "nelon",
      "timeposted": "3 hours ago",
      "status": "bad day",
      "likes": "100",
      "comments": "23",
      "shares": "3",
    },
    {
      "username": "ensoy",
      "timeposted": "1 hours ago",
      "status": "walking",
      "likes": "100",
      "comments": "12",
      "shares": "3",
    },
    {
      "username": "waren",
      "timeposted": "5 hours ago",
      "status": "having a good day.",
      "likes": "23",
      "comments": "1",
      "shares": "1",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Globalappbarcomponent(),

      body: ListView.builder(
        padding: const EdgeInsets.all(10),

        itemCount: newsfeed.length,

        itemBuilder: (context, index) {
          final post = newsfeed[index];

          return Newsfeedcomponent(
            username: post["username"],
            timeposted: post["timeposted"],
            status: post["hi"],
            numberoflikes: post["100"],
            numberofcomments: post["10"],
            numberofshares: post["3"],
          );
        },
      ),
    );
  }
}