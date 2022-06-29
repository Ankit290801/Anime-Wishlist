import 'package:flutter/material.dart';

class AddAnime extends StatefulWidget {
  const AddAnime({super.key});

  @override
  State<AddAnime> createState() => _AddAnimeState();
}

class _AddAnimeState extends State<AddAnime> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: Text(
            "Add Your Anime",
          ),
        ),
        body: Container(
          color: Colors.grey[100],
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 40),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Name of the anime
                Text(
                  "Name : ",
                  style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 16,
                    letterSpacing: 1.1,
                  ),
                ),
                SizedBox(height: 15,),
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade400,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade700,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 14),
                    hintText: "Anime name",
                  ),
                ),

                SizedBox(height: 25,),
                //Genre of the anime from API
                Text(
                  "Genre : ",
                  style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 16,
                    letterSpacing: 1.1,
                  ),
                ),
                SizedBox(height: 15,),
                TextFormField(
                  enabled: false,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade400,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 14),
                    hintText: "1020",
                    hintStyle: TextStyle(
                      color: Colors.grey[900],
                    ),
                  ),
                ),

                SizedBox(height: 25,),
                //Number of episodes in anime from API
                Text(
                  "Number of Episodes : ",
                  style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 16,
                    letterSpacing: 1.1,
                  ),
                ),
                SizedBox(height: 15,),
                TextFormField(
                  enabled: false,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade400,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 14),
                    hintText: "1020",
                    hintStyle: TextStyle(
                      color: Colors.grey[900],
                    ),
                  ),
                ),
              
                SizedBox(height: 25,),
                //Status of the anime if received from API
                Text(
                  "Status : ",
                  style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 16,
                    letterSpacing: 1.1,
                  ),
                ),
                SizedBox(height: 15,),
                TextFormField(
                  enabled: false,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade400,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 14),
                    hintText: "Ongoing",
                    hintStyle: TextStyle(
                      color: Colors.grey[900],
                    ),
                  ),
                ),
              
                Spacer(),
                //Submit button
                Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    onPressed: (){
                      Navigator.pop(context);
                    }, 
                    child: Text(
                      "Add Anime",
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}