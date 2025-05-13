
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButtonc extends StatelessWidget{

final String text;
final IconData icon;
final VoidCallback onClick;
final bool IsChangeColor;
final bool IsCorrectAnswer;
final int NumberClick;
 bool RCA;

  AnswerButtonc({
       required this.text,
       required this.icon,
       required this.onClick,
       this.IsChangeColor=false,
       this.IsCorrectAnswer=false,
       this.NumberClick=0,
       this.RCA=false,

       
    });

  Color ChangeColor(){

    if(IsChangeColor)
    {
      if(NumberClick == 0)
      {
        return Colors.deepPurpleAccent;
      }
      else
      {
        return IsCorrectAnswer?const Color.fromARGB(255, 1, 189, 8):const Color.fromARGB(255, 223, 38, 25);
      }

    }
    else
    {
     if(RCA && !IsCorrectAnswer&&(NumberClick != 0))
     {
        
        return const Color.fromARGB(255, 1, 189, 8);
     }
     else{
      return Colors.white;
     }
    } 
  }
  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(
        onTap: onClick,
        child:Container(
          width: double.infinity,
          height: 50,
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(10),

          decoration: BoxDecoration(
            color:ChangeColor(),
            borderRadius: BorderRadius.circular(10),

            boxShadow: [
              BoxShadow(
              color: Colors.black,
              blurRadius: 3,
              offset: Offset(1,5),
              )
            ]
            
          ),

        child:Row(
          children: [
           Icon(icon,size:22,color: Colors.black),
            const SizedBox(width: 2,),
            Text(text,style: GoogleFonts.changa(
             fontSize: 20,
             fontWeight: FontWeight.w500,
             color: const Color.fromARGB(255, 0, 0, 0),
                                       ),)
          ],
        )




        ),



    );
    




  }

}