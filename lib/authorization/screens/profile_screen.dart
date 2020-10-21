import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 120),
            decoration: BoxDecoration(
              color: Colors.indigo[200],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
              boxShadow: [
                BoxShadow(
                    offset: Offset(-4.0, 4.0),
                    color: Colors.indigo[500],
                    blurRadius: 15.0),
              ],
            ),
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, left: 160),
                  child: _whiteWithShadow('Имя', 20),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50, left: 160),
                  child: _whiteWithShadow('Возраст', 20),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50, left: 260),
                  child: _whiteWithShadow('Animals', 20),
                ),
                Container(
                  //контейнер для информации о питомце
                  margin: EdgeInsets.only(top: 120),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment(-0.8, 1),
                        child: _whiteWithShadow('Мои питомцы', 35),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 160,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0.0, 3.0),
                              color: Colors.indigo[500],
                              blurRadius: 4.0,
                            ),
                          ],
                        ),
                        child: Stack(
                          children: [
                            Align(
                              //кнопка редактирования
                              alignment: Alignment(0.8, 0.8),
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                child: FlatButton(
                                  padding: EdgeInsets.all(1),
                                  child: Icon(
                                    Icons.edit,
                                    color: Color(0xff7d7abc),
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    side: BorderSide(
                                        color: Colors.black12, width: 1.5),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                            //информация о питомце
                            Align(
                              alignment: Alignment(-0.85, 0.45),
                              child: _styleText('Имя питомца', 20, 3),
                            ),
                            Align(
                              alignment: Alignment(-0.85, 0.8),
                              child: _styleText('Назвиние животного', 15, 3),
                            ),
                            Align(
                              alignment: Alignment(0.2, 0.45),
                              child: _styleText('Возраст', 15, 3),
                            ),
                            Align(
                              alignment: Alignment(0.0, -0.8),
                              child: Row(
                                //фотографии питомца
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  _picOfPet('assets/Unknown.jpeg'),
                                  SizedBox(width: 10),
                                  _picOfPet('assets/Unknown2.jpeg'),
                                  SizedBox(width: 10),
                                  _picOfPet('assets/Unknown3.jpeg'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        //кнопка добавления питомца
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0.0, 3.0),
                                color: Colors.indigo[500],
                                blurRadius: 4.0),
                          ],
                        ),
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                          color: Color(0xff569292),
                          padding: EdgeInsets.only(left: 130, right: 130),
                          child: Text('Add a pet',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal)),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 85, left: 25),
            //ава
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(55),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0.0, 4.0),
                  color: Colors.indigo[500],
                  blurRadius: 5.0,
                ),
              ],
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/frollo.png'),
              radius: 55,
            ),
          ),
          Align(
            // кнопка меню
            alignment: Alignment(-0.95, -0.9),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              child: FlatButton(
                padding: EdgeInsets.all(1),
                child: Icon(
                  Icons.menu,
                  color: Colors.black54,
                  size: 30,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _picOfPet(String path) {
  //функция для фотографий животного
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(path),
        fit: BoxFit.cover,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
    height: 90,
    width: 110,
  );
}

Widget _styleText(String s, double siz, int a) {
  // функция для черного текста без тени
  return Text(
    s,
    style: TextStyle(
      color: Colors.black54,
      fontWeight: FontWeight.values[a],
      fontSize: siz,
    ),
  );
}

Widget _whiteWithShadow(String s, double size) {
  //функция для белого текста с тенью
  return Text(
    s,
    style: TextStyle(
      shadows: [
        Shadow(
          color: Colors.indigo[500],
          offset: Offset(-3.0, 3.0),
          blurRadius: 4.0,
        ),
      ],
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: size,
    ),
  );
}
//flutter build apk --build-name=1.0.1 --build-number=2
