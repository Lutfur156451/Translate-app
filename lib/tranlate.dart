import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class translateScreen extends StatefulWidget {
  @override
  State<translateScreen> createState() => _translateScreenState();
}

class _translateScreenState extends State<translateScreen> {
  TextEditingController _textController = TextEditingController();

  GoogleTranslator translator = GoogleTranslator();

  String text = ('I am fine');

  void translate() {
    translator.translate(_textController.text, to: "bn").then((output) {
      setState(() {
        text = output.toString();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,

      ),

      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [




                Container(
                  width: 600,
                  height: 200,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SelectableText(




                      text,style: TextStyle(color: Colors.white,fontSize: 23),),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.green
                  ),
                ),
                SizedBox(height: 20,),


                Material(
                  child: TextField(

                    controller: _textController,
                    keyboardType: TextInputType.multiline,
                    maxLines: null,



                    decoration: InputDecoration(hintText: 'Type here',
                    suffixIcon: IconButton(onPressed: (){
                      _textController.clear();

                    },icon: Icon(Icons.clear,color: Colors.red,),),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.green),
                        ),





                    focusColor: Colors.green,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1,color: Colors.green),

                        borderRadius: BorderRadius.circular(8)

                      ),
                      fillColor: Colors.green.shade50,
                      contentPadding: EdgeInsets.only(bottom: 60,top: 10,left: 10,right: 20)


                    ),

                    autofocus: true,


                  ),
                ),

               SizedBox(height: 40,),










               InkWell(
                 onTap: (){
                   translate();
                 },
                 child: Container(
                   width: MediaQuery.of(context).size.width,
                   height: 50,

                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(8),
                     color: Colors.green,
                   ),
                   child: Center(child: Text('Translate',style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w500),)),


                 ),
               )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
