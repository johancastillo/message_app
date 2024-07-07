import 'package:flutter/material.dart';
import 'package:messages_app/presentation/widgets/chat/her_message_bubble%20copy.dart';
import 'package:messages_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:messages_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage("https://pbs.twimg.com/profile_images/624586699423612928/sWvLOJXY_400x400.jpg"),
          ),
        ),
        title: const Text("Mi amor"),
      ),
      body: _ChatView()
      
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ( index % 2 == 0 ) ? 
                  const HerMessageBubble()
                  :
                  const MyMessageBubble(); 
                },
              )
            ),
            
            const MessageFieldBox()
          ],
        ),
      ),
    );
  }
}