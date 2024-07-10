

import 'package:dio/dio.dart';
import 'package:messages_app/domain/entities/message.dart';

class GetYesNoAnswer{
  final uri = "https://yesno.wtf/api";
  final _dio = Dio();

  Future<Message> getAnswer() async{
    final response = await _dio.get(uri);


    throw UnimplementedError();
  }

}