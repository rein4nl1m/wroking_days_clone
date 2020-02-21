import 'package:flutter/material.dart';

enum SingingDate { ini, fim }

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  SingingDate singDate = SingingDate.ini;
  int diasUteis = 0;
  int diasCorridos = 0;
  int semana = 0;
  int meses = 0;
  int anos = 0;
  int horasDia = 0;
  int totalHoras = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 1,
        title: RichText(
          text: TextSpan(
            text: 'Working',
            style: TextStyle(color: Colors.black, fontSize: 25),
            children: <TextSpan>[
              TextSpan(
                text: 'Days',
                style: TextStyle(color: Colors.blue),
              ),
              TextSpan(
                text: ' - (Clone)',
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.info,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 8,
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      color: Colors.grey[300],
                      height: 150,
                      child: Stack(
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text("dia-da-semana"),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(
                                      Icons.remove,
                                      color: Colors.grey,
                                    ),
                                    onPressed: () {
                                      print("-1");
                                    },
                                  ),
                                  Text("Dia"),
                                  IconButton(
                                    icon: Icon(
                                      Icons.add,
                                      color: Colors.grey,
                                    ),
                                    onPressed: () {
                                      print("+1");
                                    },
                                  ),
                                ],
                              ),
                              Text("mês ano"),
                            ],
                          ),
                          Positioned(
                            bottom: 0,
                            child: Container(
                              width:
                                  (MediaQuery.of(context).size.width / 2) - 8,
                              height: 30,
                              color: Colors.grey[200],
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  const Text("Data de Inicio"),
                                  Radio(
                                    value: SingingDate.ini,
                                    groupValue: singDate,
                                    onChanged: (SingingDate value) {
                                      setState(() {
                                        singDate = value;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Container(
                      color: Colors.grey[300],
                      height: 150,
                      child: Stack(
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text("dia-da-semana"),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(
                                      Icons.remove,
                                      color: Colors.grey,
                                    ),
                                    onPressed: () {
                                      print("-1");
                                    },
                                  ),
                                  Text("Dia"),
                                  IconButton(
                                    icon: Icon(
                                      Icons.add,
                                      color: Colors.grey,
                                    ),
                                    onPressed: () {
                                      print("+1");
                                    },
                                  ),
                                ],
                              ),
                              Text("mês ano"),
                            ],
                          ),
                          Positioned(
                            bottom: 0,
                            child: Container(
                              width:
                                  (MediaQuery.of(context).size.width / 2) - 8,
                              height: 30,
                              color: Colors.grey[200],
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  const Text("Data de Fim"),
                                  Radio(
                                    value: SingingDate.fim,
                                    groupValue: singDate,
                                    onChanged: (SingingDate value) {
                                      setState(() {
                                        singDate = value;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            myListTyle(context, 'dias úteis', diasUteis),
            myListTyle(context, 'dias corridos', diasCorridos),
            myListTyle(context, 'semana', semana),
            myListTyle(context, 'meses', meses),
            myListTyle(context, 'anos', anos),
            myListTyle(context, 'horas diárias', horasDia),
            myListTyle(context, 'total de horas', totalHoras),
          ],
        ),
      ),
    );
  }
}

Widget myListTyle(BuildContext context, String title, int cont) {
  return Padding(
    padding: EdgeInsets.symmetric(
      vertical: 4,
      horizontal: 8,
    ),
    child: Container(
      alignment: Alignment.center,
      color: Colors.grey[300],
      height: 55,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.remove),
            onPressed: () {},
          ),
          SizedBox(width: 5),
          Expanded(
            flex: 2,
            child: Row(
              children: <Widget>[
                Text(
                  '${cont.toString().padLeft(2, "0")}',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * .02),
                Text(
                  '${title.toUpperCase()}',
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          )
        ],
      ),
    ),
  );
}
