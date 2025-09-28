import 'package:flutter/material.dart';
import 'package:isalmi/ui_utiles.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Image.asset(
            getImage('radio_image.png'),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          appTranslate(context).quranRadio,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
        Expanded(
          child: Directionality(
            textDirection: TextDirection.ltr,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Directionality(
                  textDirection: TextDirection.ltr,
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.skip_previous,size: 30,),
                  ),
                ),
                IconButton(
                  onPressed: (){},

                  icon: Icon(Icons.play_arrow_rounded,size: 30),
                ),
                Directionality(
                  textDirection: TextDirection.ltr,
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.skip_next,size: 30),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
