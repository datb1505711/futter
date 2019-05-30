import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

//State is information of the application that can change over time or when some actions are taken.
class _State extends State<MyApp>{

  bool _value1 = false;
  bool _value2 = false;
  bool _value3 = false;
  bool _value4 = false;
  bool _value5 = false;
  bool _value6 = false;
  bool _value7 = false;
  int SelectedRadio;
  int valueR1 = 1, valueR2 = 0;
  
  void setSelectedChanged(int value) { if(value == 0) {setState(() => valueR1 = 1);} else{setState(() => valueR1 = 0);}}

  
  //we omitted the brackets '{}' and are using fat arrow '=>' instead, this is dart syntax
  void _value1Changed(bool value) => setState(() => _value1 = value);
  void _value2Changed(bool value) => setState(() => _value2 = value);
  void _value3Changed(bool value) => setState(() => _value3 = value);
  void _value4Changed(bool value) => setState(() => _value4 = value);
  void _value5Changed(bool value) => setState(() => _value5 = value);
  void _value6Changed(bool value) => setState(() => _value6 = value);
  void _value7Changed(bool value) => setState(() => _value7 = value);


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name here'),
      ),
      body: new Column(
            children:<Widget>[
              new Container(
                padding: EdgeInsets.only(top: 5.0),
                color: Colors.blue[200],
                height: 40.0,
                width: 700.0,
                child: Text("CheckBoxListTile", style: TextStyle(fontSize: 20.0),),),
              new Container(
                height: 200.0,
                child: ListView(
                children: <Widget>[
                  new CheckboxListTile(
                  value: _value1,
                  onChanged: _value1Changed,
                  title: new Text('Hello Monday'),
                  controlAffinity: ListTileControlAffinity.leading,
                  subtitle: new Text('Listview'),
                  secondary: new Icon(Icons.replay),
                  activeColor: Colors.blue,
                  ),
                  new CheckboxListTile(
                  value: _value2,
                  onChanged: _value2Changed,
                  title: new Text('Hello Tuesday'),
                  controlAffinity: ListTileControlAffinity.leading,
                  subtitle: new Text('Listview'),
                  secondary: new Icon(Icons.replay),
                  activeColor: Colors.blue,
                  ),
                  new CheckboxListTile(
                  value: _value3,
                  onChanged: _value3Changed,
                  title: new Text('Hello Wednesday'),
                  controlAffinity: ListTileControlAffinity.leading,
                  subtitle: new Text('Listview'),
                  secondary: new Icon(Icons.replay),
                  activeColor: Colors.blue,
                  ),
                  new CheckboxListTile(
                  value: _value4,
                  onChanged: _value4Changed,
                  title: new Text('Hello Thursday'),
                  controlAffinity: ListTileControlAffinity.leading,
                  subtitle: new Text('Listview'),
                  secondary: new Icon(Icons.replay),
                  activeColor: Colors.blue,
                  ),
                  new CheckboxListTile(
                  value: _value5,
                  onChanged: _value5Changed,
                  title: new Text('Hello Friday'),
                  controlAffinity: ListTileControlAffinity.leading,
                  subtitle: new Text('Listview'),
                  secondary: new Icon(Icons.replay),
                  activeColor: Colors.blue,
                  ),
                  new CheckboxListTile(
                  value: _value6,
                  onChanged: _value6Changed,
                  title: new Text('Hello Saturday'),
                  controlAffinity: ListTileControlAffinity.leading,
                  subtitle: new Text('Listview'),
                  secondary: new Icon(Icons.replay),
                  activeColor: Colors.blue,
                  ),
                  new CheckboxListTile(
                  value: _value7,
                  onChanged: _value7Changed,
                  title: new Text('Hello Sunday'),
                  controlAffinity: ListTileControlAffinity.leading,
                  subtitle: new Text('Listview'),
                  secondary: new Icon(Icons.replay),
                  activeColor: Colors.blue,
                  ),
                ],
              )
              ),
              new Container(
                padding: EdgeInsets.only(top: 5.0),
                color: Colors.blue[200],
                height: 40.0,
                width: 700.0,
                child: new Text(
                'Basic RadionButton \, are you male or female',
                style: TextStyle(fontSize: 20.0, backgroundColor: Colors.blue[200]),
              )),
              new ButtonBar(
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  Radio(
                    value: this.valueR1,
                    groupValue: 1,
                    activeColor: Colors.green,
                    onChanged: (val){
                      print("Radio $val");
                      setSelectedChanged(val);
                    }),
                  Radio(
                  value: 1,
                  groupValue: 2,
                  activeColor: Colors.green,
                  onChanged: (val){
                    print("Radio $val");
                    setSelectedChanged(valueR2);
                  })
                ],
                
              ),
            ]
            ,),

        floatingActionButton: FloatingActionButton(
          child: new Icon(Icons.add_a_photo),
        ),
    );
}
}
class LoadImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('./images/totodile.jpg');
    Image  image = Image(image: assetImage,width: 150.0, height: 150.0,);
    return Container(child: image,);
  }


}