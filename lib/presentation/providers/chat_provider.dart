import 'package:flutter/material.dart';
import 'package:messages_app/config/theme/helpers/get_yes_no_answer.dart';
import 'package:messages_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{

  // Instances
  final ScrollController chatScrollController = ScrollController();
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();

  // States
  List<Message> messages = [
    Message(text: "Hola amor", fromWho: FromWho.me),
    Message(text: "Regresaste del trabajo?", fromWho: FromWho.me),
  ];

  // Send Message
  Future<void> sendMessage(String text) async{
    if(text.isEmpty) return;
    
    if(text.endsWith("?")){
      herReply();
    }
    
    print("Entro a provider");
    print(text);
    // TODO: Implementar metodo
    final newMessage = Message(text: text, fromWho: FromWho.me);
    messages.add(newMessage);

    notifyListeners();
    moveScrollToBottom();
  }

  // Get Response Message
  Future<void> herReply() async{
    final herMessage = await getYesNoAnswer.getAnswer();


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