import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        if(constraints.maxWidth>1200){
          return PageFooterDesktop();
        }else if(constraints.maxWidth>800 && constraints.maxWidth<1200){
          return PageFooterDesktop();
        }else{
          return PageFooterMobile();
        }
      },
    );
  }
}

class PageFooterDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      width: 1800,
      constraints: BoxConstraints(
          maxWidth: 1800
      ),
      color: Colors.redAccent[900],
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                '® All Rights Reserved',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 22
              ),
            ),
            SizedBox(width: 20,),
            FlatButton(
              onPressed: (){},
              splashColor: Colors.red,
              child: Text(
                  'Desenvolvido por Thays Garcia',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PageFooterMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      width: 1800,
      constraints: BoxConstraints(
          maxWidth: 1800
      ),
      color: Colors.redAccent[900],
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              '® All Rights Reserved',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22
              ),
            ),
            SizedBox(height: 10,),
            Text(
              'Desenvolvido por Thays Garcia',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),
            )
          ],
        ),
      ),
    );
  }
}


