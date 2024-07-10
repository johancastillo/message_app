import 'package:flutter/material.dart';
import 'package:messages_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{
  List<Message> messages = [
    Message(text: "Hola amor", fromWho: FromWho.me),
    Message(text: "Regresaste del trabajo?", fromWho: FromWho.me),
  ];


  Future<void> sendMessage(String text) async{
    print("Entro a provider");
    print(text);
    // TODO: Implementar metodo
    final newMessage = Message(text: text, fromWho: FromWho.me);
    messages.add(newMessage);

    notifyListeners();
  }

}