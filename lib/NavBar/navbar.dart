import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints){
          if(constraints.maxWidth>1200){
            return DesktopNavBar();
          }else if(constraints.maxWidth>800 && constraints.maxWidth<1200){
            return MediumNavbar();
          }else{
            return MobileNavBar();
          }
        },
    );
  }
}

class DesktopNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  'web/images/iconChurch-removebg.png',
                  width: 100,
                ),
                SizedBox(width: 10,),
                Text(
                  'Igreja Vida Nova',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                    'Home',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
                ),
                SizedBox(width: 20,),
                FlatButton(
                  onPressed: (){
                  },
                  child: Text(
                    'Quem Somos',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Text(
                  'Pastores',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),
                ),
                SizedBox(width: 20,),
                Text(
                  'Palavras',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),
                ),
                SizedBox(width: 30,),
                Text(
                  'Reuniões',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),
                ),
                SizedBox(width: 20,),
                Text(
                  'Missões',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget> [
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                      'web/images/iconChurch-removebg.png',
                    width: 50,
                  ),
                  SizedBox(width: 10,),
                  Text(
                    'Igreja Vida Nova',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            )
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Home',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(width: 15,),
                Text(
                  'Quem Somos',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12
                  ),
                ),
                SizedBox(width: 15,),
                Text(
                  'Pastores',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(width: 15,),
                Text(
                  'Palavras',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(width: 30,),
                Text(
                  'Reuniões',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(width: 15,),
                Text(
                  'Missões',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MediumNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget> [
          Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'web/images/iconChurch-removebg.png',
                      width: 70,
                    ),
                    SizedBox(width: 10,),
                    Text(
                      'Igreja Vida Nova',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              )
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Home',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(width: 30,),
                Text(
                  'Quem Somos',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                  ),
                ),
                SizedBox(width: 30,),
                Text(
                  'Pastores',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(width: 30,),
                Text(
                  'Palavras',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(width: 30,),
                Text(
                  'Reuniões',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(width: 30,),
                Text(
                  'Missões',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}



