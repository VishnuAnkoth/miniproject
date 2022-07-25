import 'user.dart';

class UserPreferences {
  static const myUser = User(
    imagePath:
    'https://images.unsplash.com/photo-1554151228-14d9def656e4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=333&q=80',
    name: 'Abcdef',
    email: 'abcdef.abs@gmail.com',
    about:
    'add your bio here',
    isDarkMode: false,
  );
}
// import 'package:flutter/material.dart';
// import 'user.dart';
//
// class ChatPageMobile extends StatefulWidget {
//   final Channel channel;
//
//   const ChatPageMobile({
//     @required this.channel,
//   });
//
//   @override
//   _ChatPageMobileState createState() => _ChatPageMobileState();
// }
//
// class _ChatPageMobileState extends State<ChatPageMobile> {
//   @override
//   Widget build(BuildContext context) => StreamChannel(
//     channel: widget.channel,
//     child: Scaffold(
//       appBar: buildAppBar(),
//       body: Column(
//         children: [
//           Expanded(child: MessageListView()),
//           MessageInput(),
//         ],
//       ),
//     ),
//   );
//
//   Widget buildAppBar() {
//     final channelName = widget.channel.extraData['name'];
//
//     return AppBar(
//       backgroundColor: Colors.white,
//       title: Text(channelName),
//       actions: [
//         IconButton(
//           onPressed: () {},
//           icon: Icon(Icons.phone),
//         ),
//         IconButton(
//           onPressed: () {},
//           icon: Icon(Icons.videocam),
//         ),
//         const SizedBox(width: 8),
//       ],
//     );
//   }
// }
