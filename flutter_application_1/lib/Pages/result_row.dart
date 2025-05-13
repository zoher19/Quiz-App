import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class clsResultRow extends StatelessWidget {
  final IconData icon;
  final String FirstText;
  final String LastText;
 

  clsResultRow({required this.icon,required this.FirstText,required this.LastText});

  Widget build(BuildContext context) {
   
   return Padding(padding: EdgeInsets.all(10),
   child: Row(children: [
     Icon(icon,size: 26,color:Colors.deepPurpleAccent),
     const SizedBox(width: 2,),
     Text(FirstText,style:GoogleFonts.cairo(fontSize: 20,fontWeight: FontWeight.bold)),
     const SizedBox(width: 1,),
     Text(" : ",style:GoogleFonts.cairo(fontSize: 20,fontWeight: FontWeight.bold)),
      const SizedBox(width: 1,),
     Text(LastText,style:GoogleFonts.cairo(fontSize: 20,fontWeight: FontWeight.bold)),
   ],),
   );
  }
}