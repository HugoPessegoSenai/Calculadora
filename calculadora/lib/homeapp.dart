import 'package:flutter/material.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({ Key? key }) : super(key: key);

  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {

  String output = "0";

  String _out = "0";
  double num1 = 0.0;
  double num2 = 0.0;
  String operand = "";

  buttonPressed(String btnVal){
    print(btnVal);

    if(btnVal=="C"){
      _out = "0";
      num1 = 0.0;
      num2 = 0.0;
      operand = "";
    }else if(btnVal =="+" || btnVal =="-" || btnVal =="*" || btnVal =="/" ){
      num1 = double.parse(output);
      operand = btnVal;
      _out = "0";
      output = output + btnVal;
    }else if(btnVal == "."){
      if(_out.contains(".")){
        print("Já existe");
        return;
      }else{
        _out = _out + btnVal;
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}