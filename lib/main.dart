import 'package:flutter/material.dart';
import 'package:messages_app/config/theme/app_theme.dart';
import 'package:messages_app/presentation/providers/chat_provider.dart';
import 'package:messages_app/presentation/screens/chat/chat_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ChatProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 2).theme(),
        home: ChatScreen()
      ),
    );
  }
}
