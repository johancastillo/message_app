import 'package:flutter/material.dart';
import 'package:messages_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{

  final ScrollController chatScrollController = ScrollController();

  List<Message> messages = [
    Message(text: "Hola amor", fromWho: FromWho.me),
    Message(text: "Regresaste del trabajo?", fromWho: FromWho.me),
  ];


  Future<void> sendMessage(String text) async{
    if(text.isEmpty) return;
    
    print("Entro a provider");
    print(text);
    // TODO: Implementar metodo
    final newMessage = Message(text: text, fromWho: FromWho.me);
    messages.add(newMessage);

    notifyListeners();
    moveScrollToBottom();
  }

  void moveScrollToBottom() async{

    await Future.delayed(const Duration(milliseconds: 100));

    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent, 
      duration: const Duration(milliseconds: 300), 
      curve: Curves.easeOut
    );
  }

}