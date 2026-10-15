import 'package:flutter/material.dart';
import 'package:widget/components/globalappbarcomponent.dart';
import 'package:widget/components/noification_component.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() =>
      _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {

  final List<Map<String, dynamic>> notifications = [
    {
      "username": "John Doe",
      "message": "liked your post.",
      "time": "10 minutes ago",
      "type": "like",
      "read": false,
    },
    {
      "username": "fiang Smith",
      "message": "commented on your post.",
      "time": "10 minutes ago",
      "type": "comment",
      "read": false,
    },
    {
      "username": "nidel Cruz",
      "message": "sent you a friend request.",
      "time": "20 minutes ago",
      "type": "friend_request",
      "read": true,
    },
    {
      "username": "Sarah labati",
      "message": "shared your post.",
      "time": "2 hour ago",
      "type": "share",
      "read": true,
    },
    {
      "username": "neri arthur",
      "message": "mentioned you in a post.",
      "time": "55 minutes ago",
      "type": "mention",
      "read": true,
    },
    {
      "username": "arthur neddy",
      "message": "liked your story.",
      "time": "4 seconds ago",
      "type": "like",
      "read": false,
    },
    {
      "username": "efren reyes",
      "message": "Shared a post.",
      "time": "4 minutes ago",
      "type": "share",
      "read": false,
    },
    {
      "username": "terry fries",
      "message": "Liked your post.",
      "time": "4 hours ago",
      "type": "like",
      "read": true,
    },
    {
      "username": "michael fresco",
      "message": "mentioned you in a comment.",
      "time": "45 minutes ago",
      "type": "mention",
      "read": true,
    },
    {
      "username": "Peter Parker",
      "message": "mentioned you in a comment.",
      "time": "2 hours ago",
      "type": "mention",
      "read": false,
    },
     {
      "username": "robin Padilla",
      "message": "Followed you.",
      "time": "14 minutes ago",
      "type": "follow",
      "read": true,
    },
     {
      "username": "vico Reid",
      "message": "Followed you.",
      "time": "16 minutes ago",
      "type": "follow",
      "read": true,
    },
  ];

  IconData _iconForType(String? type) {
    switch (type) {
      case "like":
        return Icons.thumb_up_sharp;

      case "comment":
        return Icons.comment;

      case "friend_request":
        return Icons.person_add;

      case "share":
        return Icons.share;

      case "mention":
        return Icons.alternate_email;

      case "follow":
        return Icons.person;

      default:
        return Icons.notifications;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Globalappbarcomponent(),

      body: ListView.builder(
        itemCount: notifications.length,

        itemBuilder: (context, index) {
          final notification = notifications[index];

          return NotificationComponent(
            username: notification["username"],
            message: notification["message"],
            time: notification["time"],
            icon: _iconForType(notification["type"]),
            selected: !(notification["read"] as bool? ?? false),
          );
        },
      ),
    );
  }
}