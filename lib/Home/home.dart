import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Home extends StatelessWidget {

  List<Widget> pageChildren(double width){
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Assegurou-lhes Jesus: “Eu Sou o Caminho, a Verdade e a Vida.'
                    ' Ninguém vem ao Pai senão por mim. João 14:6',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30
                ),
              ),
            ),
            MaterialButton(
                onPressed: (){},
              color: Colors.pink,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                    Radius.circular(20.0)
                )
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(MdiIcons.bookCross, size: 50, color: Colors.white,),
                    SizedBox(width: 20,),
                    Text(
                        'Promessas Biblicas',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 60,)
          ],
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        if(constraints.maxWidth > 800){
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:
              pageChildren(constraints.biggest.width/2),
          );
        }else{
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },

    );
  }
}
