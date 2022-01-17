import 'package:flutter/material.dart';

void main(){
  runApp(
     const MaterialApp(
      home: Calc()
    )
  );
}
class Calc extends StatefulWidget {
  const Calc({Key? key}) : super(key: key);

  @override
  _CalcState createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  String valordisplay = "0";
  double valor1 = 0;
  double valor2 = 0;
  bool valor1dig = false;
  int operacao = 0;

  @override
  Widget build(BuildContext context) {
    
   return SafeArea(
     child: Scaffold(
       backgroundColor: Colors.black,
       body: Padding(
         padding: const EdgeInsets.fromLTRB( 15, 5, 15, 5,),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
             Padding(
               padding: const EdgeInsets.only(top: 80.0, right: 15.0),
               child: Text(
                 valordisplay,
                 textAlign: TextAlign.end,
                 style: const TextStyle(
                   color: Colors.white,
                   fontSize: 100,

                 ),
               ),
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 SizedBox(
                   height: 80,
                   width: 80,
                   child: ElevatedButton(
                     style: ButtonStyle(
                       backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                           RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(40),
                           )
                       )
                     ),
                     onPressed: (){
                       setState(() {
                           valordisplay = "0";
                           valor1 = 0;
                           valor2 = 0;
                           valor1dig = false;
                           operacao = 0;
                       });
                     },
                     child: const Text(
                       "AC",
                       style: TextStyle(
                         color: Colors.black,
                         fontSize: 30,
                       ),
                     ),
                   ),
                 ),
                 SizedBox(
                   height: 80,
                   width: 80,
                   child: ElevatedButton(
                     style: ButtonStyle(
                       backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                           RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(40),
                           )
                       )
                     ),
                     onPressed: (){

                     },
                     child: const Text(
                       "±",
                       style: TextStyle(
                         color: Colors.black,
                         fontSize: 30,
                       ),
                     ),
                   ),
                 ),
                 SizedBox(
                   height: 80,
                   width: 80,
                   child: ElevatedButton(
                     style: ButtonStyle(
                         backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                             RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(40),
                             )
                         )
                     ),
                     onPressed: (){

                     },
                     child: const Text(
                       "%",
                       style: TextStyle(
                         color: Colors.black,
                         fontSize: 30,
                       ),
                     ),
                   ),
                 ),
                 SizedBox(
                   height: 80,
                   width: 80,
                   child: ElevatedButton(
                     style: ButtonStyle(
                         backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                             RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(40),
                             )
                         )
                     ),
                     onPressed: (){
                       if(!valor1dig){
                         valor1 = double.parse(valordisplay);
                         valor1dig = true;
                         valordisplay = "0";
                         operacao = 1;
                       }
                     },
                     child: const Text(
                       "÷",
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 30,
                       ),
                     ),
                   ),
                 ),
               ],
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 SizedBox(
                   height: 80,
                   width: 80,
                   child: ElevatedButton(
                     style: ButtonStyle(
                         backgroundColor: MaterialStateProperty.all<Color>(const Color(0XFF2E2E2E)),
                         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                             RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(40),
                             )
                         )
                     ),
                     onPressed: (){
                       setState(() {
                         if(valordisplay == '0'){
                           valordisplay = "";
                         }
                         valordisplay += '7';
                       });
                     },
                     child: const Text(
                       "7",
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 30,
                       ),
                     ),
                   ),
                 ),
                 SizedBox(
                   height: 80,
                   width: 80,
                   child: ElevatedButton(
                     style: ButtonStyle(
                         backgroundColor: MaterialStateProperty.all<Color>(const Color(0XFF2E2E2E)),
                         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                             RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(40),
                             )
                         )
                     ),
                     onPressed: (){
                       setState(() {
                         if(valordisplay == '0'){
                           valordisplay = "";
                         }
                         valordisplay += '8';
                       });
                     },
                     child: const Text(
                       "8",
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 30,
                       ),
                     ),
                   ),
                 ),
                 SizedBox(
                   height: 80,
                   width: 80,
                   child: ElevatedButton(
                     style: ButtonStyle(
                         backgroundColor: MaterialStateProperty.all<Color>(const Color(0XFF2E2E2E)),
                         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                             RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(40),
                             )
                         )
                     ),
                     onPressed: (){
                       setState(() {
                         if(valordisplay == '0'){
                           valordisplay = "";
                         }
                         valordisplay += '9';
                       });
                     },
                     child: const Text(
                       "9",
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 30,
                       ),
                     ),
                   ),
                 ),
                 SizedBox(
                   height: 80,
                   width: 80,
                   child: ElevatedButton(
                     style: ButtonStyle(
                         backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                             RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(40),
                             )
                         )
                     ),
                     onPressed: (){
                       if(!valor1dig){
                         valor1 = double.parse(valordisplay);
                         valor1dig = true;
                         valordisplay = "0";
                         operacao = 2;
                       }
                     },
                     child: const Text(
                       "×",
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 30,
                       ),
                     ),
                   ),
                 ),
               ],
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 SizedBox(
                   height: 80,
                   width: 80,
                   child: ElevatedButton(
                     style: ButtonStyle(
                         backgroundColor: MaterialStateProperty.all<Color>(const Color(0XFF2E2E2E)),
                         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                             RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(40),
                             )
                         )
                     ),
                     onPressed: (){
                       setState(() {
                         if(valordisplay == '0'){
                           valordisplay = "";
                         }
                         valordisplay += '4';
                       });
                     },
                     child: const Text(
                       "4",
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 30,
                       ),
                     ),
                   ),
                 ),
                 SizedBox(
                   height: 80,
                   width: 80,
                   child: ElevatedButton(
                     style: ButtonStyle(
                         backgroundColor: MaterialStateProperty.all<Color>(const Color(0XFF2E2E2E)),
                         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                             RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(40),
                             )
                         )
                     ),
                     onPressed: (){
                       setState(() {
                         if(valordisplay == '0'){
                           valordisplay = "";
                         }
                         valordisplay += '5';
                       });
                     },
                     child: const Text(
                       "5",
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 30,
                       ),
                     ),
                   ),
                 ),
                 SizedBox(
                   height: 80,
                   width: 80,
                   child: ElevatedButton(
                     style: ButtonStyle(
                         backgroundColor: MaterialStateProperty.all<Color>(const Color(0XFF2E2E2E)),
                         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                             RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(40),
                             )
                         )
                     ),
                     onPressed: (){
                       setState(() {
                         if(valordisplay == '0'){
                           valordisplay = "";
                         }
                         valordisplay += '6';
                       });
                     },
                     child: const Text(
                       "6",
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 30,
                       ),
                     ),
                   ),
                 ),
                 SizedBox(
                   height: 80,
                   width: 80,
                   child: ElevatedButton(
                     style: ButtonStyle(
                         backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                             RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(40),
                             )
                         )
                     ),
                     onPressed: (){
                       if(!valor1dig){
                         valor1 = double.parse(valordisplay);
                         valor1dig = true;
                         valordisplay = "0";
                         operacao = 3;
                       }
                     },
                     child: const Text(
                       "–",
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 30,
                       ),
                     ),
                   ),
                 ),
               ],
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 SizedBox(
                   height: 80,
                   width: 80,
                   child: ElevatedButton(
                     style: ButtonStyle(
                         backgroundColor: MaterialStateProperty.all<Color>(const Color(0XFF2E2E2E)),
                         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                             RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(40),
                             )
                         )
                     ),
                     onPressed: (){
                       setState(() {
                         if(valordisplay == '0'){
                           valordisplay = "";
                         }
                         valordisplay += '1';
                       });
                     },
                     child: const Text(
                       "1",
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 30,
                       ),
                     ),
                   ),
                 ),
                 SizedBox(
                   height: 80,
                   width: 80,
                   child: ElevatedButton(
                     style: ButtonStyle(
                         backgroundColor: MaterialStateProperty.all<Color>(const Color(0XFF2E2E2E)),
                         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                             RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(40),
                             )
                         )
                     ),
                     onPressed: (){
                       setState(() {
                         if(valordisplay == '0'){
                           valordisplay = "";
                         }
                         valordisplay += '2';
                       });
                     },
                     child: const Text(
                       "2",
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 30,
                       ),
                     ),
                   ),
                 ),
                 SizedBox(
                   height: 80,
                   width: 80,
                   child: ElevatedButton(
                     style: ButtonStyle(
                         backgroundColor: MaterialStateProperty.all<Color>(const Color(0XFF2E2E2E)),
                         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                             RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(40),
                             )
                         )
                     ),
                     onPressed: (){
                       setState(() {
                         if(valordisplay == '0'){
                           valordisplay = "";
                         }
                         valordisplay += '3';
                       });
                     },
                     child: const Text(
                       "3",
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 30,
                       ),
                     ),
                   ),
                 ),
                 SizedBox(
                   height: 80,
                   width: 80,
                   child: ElevatedButton(
                     style: ButtonStyle(
                         backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                             RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(40),
                             )
                         )
                     ),
                     onPressed: (){
                       if(!valor1dig){
                         valor1 = double.parse(valordisplay);
                         valor1dig = true;
                         valordisplay = "0";
                         operacao = 4;
                       }
                     },
                     child: const Text(
                       "+",
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 30,
                       ),
                     ),
                   ),
                 ),
               ],
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 SizedBox(
                   height: 80,
                   width: 160,
                   child: ElevatedButton(
                     style: ButtonStyle(
                         backgroundColor: MaterialStateProperty.all<Color>(const Color(0XFF2E2E2E)),
                         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                             RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(40),
                             ),
                         ),
                     ),
                     onPressed: (){
                       setState(() {
                         if(valordisplay == '0'){
                           valordisplay = "";
                         }
                         valordisplay += '0';
                       });
                     },
                     child: const SizedBox(
                       width: 100,
                       child: Text(
                         "0",
                         textAlign: TextAlign.start,
                         style: TextStyle(
                           color: Colors.white,
                           fontSize: 30,
                         ),
                       ),
                     ),
                   ),
                 ),
                 SizedBox(
                   height: 80,
                   width: 80,
                   child: ElevatedButton(
                     style: ButtonStyle(
                         backgroundColor: MaterialStateProperty.all<Color>(const Color(0XFF2E2E2E)),
                         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                             RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(40),
                             )
                         )
                     ),
                     onPressed: (){
                       setState(() {
                         if(!valordisplay.contains(".")){
                           valordisplay += ".";
                         }
                       });
                     },
                     child: const Text(
                       ",",
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 30,
                       ),
                     ),
                   ),
                 ),
                 SizedBox(
                   height: 80,
                   width: 80,
                   child: ElevatedButton(
                     style: ButtonStyle(
                         backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                             RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(40),
                             )
                         )
                     ),
                     onPressed: (){
                      if(valor1dig){
                        valor2 = double.parse(valordisplay);
                        double resul = 0;
                        switch(operacao){
                          case 1:
                            resul = valor1 / valor2;
                            break;
                          case 2:
                            resul = valor1 * valor2;
                            break;
                          case 3:
                            resul = valor1 - valor2;
                          break;
                          case 4:
                            resul = valor1 + valor2;
                            break;
                        }
                        setState(() {
                          valordisplay = resul.toString();
                        });

                      }
                     },
                     child: const Text(
                       "=",
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 30,
                       ),
                     ),
                   ),
                 ),
               ],
             ),
           ],
         ),
       )
     ),
   );
  }
}
