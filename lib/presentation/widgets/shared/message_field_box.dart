import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    
    final textController = TextEditingController();
    final colors = Theme.of(context).colorScheme;
    final FocusNode focusNode = FocusNode();

    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40)
    );

    final inputDecoration = InputDecoration(
        hintText: 'End your message with a "??"',
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          onPressed: (){
            final textValue = textController.value.text;
            print("Valor de la caja de texto $textValue");
            textController.clear();
          }, 
          icon: const Icon(Icons.send_outlined)
        )
      );

    return TextFormField(keyboardType: TextInputType.emailAddress,
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print("Submit $value");
        textController.clear();
        focusNode.requestFocus();
        
      },
      onChanged: (value) {
        print(value);
      },
    );
  }
}