import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {

    final colors =  Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20)
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text("Hola mundo", style: TextStyle(color: Colors.white),),
          ),
        ),
        SizedBox(height: 10,),

        // Todo: Imagen
        _ImageBubble(),

        const SizedBox(height: 10,)
      ],
    ) ;
  }
}


class _ImageBubble extends StatelessWidget {
  const _ImageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        "https://yesno.wtf/assets/no/10-d5ddf3f82134e781c1175614c0d2bab2.gif",
        width: size.width * 0.7,
        height: 150,
        fit: BoxFit.cover,
        /* loadingBuilder: (context, child, loadingProgress) {
          if(loadingProgress == null) return child;

          return Container(
            width: size.width * 0.7,
            height: 150,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text("Mi amor esta enviando una imagen..."),
          );
        },*/
      ),
    );
  }
}

