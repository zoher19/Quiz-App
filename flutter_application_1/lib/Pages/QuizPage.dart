
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/clsQuestion.dart';
import 'package:flutter_application_1/Pages/Anser_ButtonC.dart';
import 'package:flutter_application_1/Pages/result_row.dart';
import 'package:flutter_application_1/QuestionsBank.dart';
import 'package:google_fonts/google_fonts.dart';


class clsQuizPage extends StatefulWidget{

  clsQuizPage({super.key});

  @override
  State<clsQuizPage> createState() => _clsQuizPageState();

}




class _clsQuizPageState extends State<clsQuizPage> {
  List<ClsQuestions> Questions=questionsBank;
  bool isChangeColor=false;
  int counter=0;
  int? SelectedIndex;
  int NumberAnswer=0;
  double ProgressCounter=0;
  int CorrectAnswer=0;
  double Average=0;
  int ChosedAnswer=0;
  int CorrectanswerCounter=0;
  int NumberClick=0;
  bool IsCorrectAnswerV=false;
  String BText="Next";

  bool IsCorrectAnswer(int CorrectAnswer){
    return ChosedAnswer == CorrectAnswer;
  }
  

 

 
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home:Scaffold(
          appBar: AppBar(title: Text("Questions",style:GoogleFonts.cairo(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 255, 255, 255),
          ),),
          backgroundColor: Color(0xFF5D3FD3),
          actions: [Padding(padding:EdgeInsets.all(9),child:Icon(Icons.menu,size:39,color: const Color.fromARGB(255, 255, 255, 255),))],
          ),
        body:
        Padding(padding: EdgeInsets.only(top:50),
        child:
        Column(crossAxisAlignment: CrossAxisAlignment.start,

          children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: 
            Text(Questions[counter].Question,style:GoogleFonts.cairo(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            )),
          ),

           Padding(
             padding: const EdgeInsets.only(left:20,top:20),
             child: Text("Qustions ( ${counter+1} / ${Questions.length} )",style:GoogleFonts.cairo(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: const Color.fromARGB(255, 73, 22, 22),
                       )),
           ),
          
          LinearProgressIndicator(
            valueColor:AlwaysStoppedAnimation<Color>(const Color.fromARGB(255, 68, 4, 142)),
            value:ProgressCounter,
            minHeight: 6,
          ),

          const SizedBox(height: 20,),
          Column(
            children:List.generate(
                  Questions[counter].Answers.length,
                  (index) {
                    var answer = Questions[counter].Answers[index];
                    return AnswerButtonc(
                      text: answer.Title,
                      icon: Icons.add,
                      onClick: () {
                        setState(() {
                          SelectedIndex= index;
                          ChosedAnswer=index+1;
                          CorrectAnswer=Questions[counter].CorrectAnswer;
                        });
                      },
                      
                      IsChangeColor: SelectedIndex == index,
                      IsCorrectAnswer: IsCorrectAnswerV,
                      RCA:CorrectAnswer == index+1,
                      NumberClick: this.NumberClick,
                      
                    );
                  },
                ),
              
          ),

           clsResultRow(icon: Icons.format_list_numbered, FirstText: "Questions", LastText:"${Questions.length}"),
           clsResultRow(icon: Icons.check_circle, FirstText: "Correct Answer", LastText:"$CorrectanswerCounter"),
           clsResultRow(icon: Icons.bar_chart, FirstText: "Average", LastText:"${Average.toInt().toString() + ' % '}"),
         
          const Spacer(),

          Padding(
            padding: const EdgeInsets.all(4),
            child: SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                onPressed: (){setState(() {
                  NextClick();
                
                });},
              style:ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF5D3FD3),
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                )
            
              )
              , child:Text(BText,style:GoogleFonts.cairo(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              color: Colors.white,
              )),
              
              ),
            ),
          ),

          

        ],)

        
        ),
        ),
    );


  }

  void NextClick(){
       if(SelectedIndex == null)
                  return;
                 
                   NumberClick++;


                   if(NumberClick > 1)
                   {  
                   setState(() {
                        BText="Next";
                        
                      });
                      
                  if(IsCorrectAnswerV)
                   {
                          CorrectanswerCounter++;
                          Average=(CorrectanswerCounter / Questions.length) * 100;
                   }

                  if(counter != Questions.length-1)
                  {
                      counter++;
                     ProgressCounter=(counter+1) / (Questions.length+1);
                  }

                  else if(counter == Questions.length-1){
                  {
                   CorrectanswerCounter=0;
                   Average=0;
                  counter=0;
                  ProgressCounter=0;
                  }

                  }
                  SelectedIndex=null;
                  NumberClick=0;
                  }
                  else
                  {
                      setState(() {
                        IsCorrectAnswerV=IsCorrectAnswer(CorrectAnswer);
                        BText="Go To Next Question";
                       
                      });
                    
                  }
  }
}