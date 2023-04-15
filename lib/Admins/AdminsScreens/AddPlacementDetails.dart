import 'package:flutter/material.dart';
import 'package:uiet_kuk/Utils/Constants.dart';

class AddPlacementDetails extends StatefulWidget {
   const AddPlacementDetails({Key? key}) : super(key: key);

  @override
  State<AddPlacementDetails> createState() => _AddPlacementDetailsState();
}

class _AddPlacementDetailsState extends State<AddPlacementDetails> {
  @override
  final namecontroller=TextEditingController();
  final rollNocontroller=TextEditingController();
  final companycontroller=TextEditingController();
  final packageController=TextEditingController();
  String? selected_course;
  String? selected_branch;
  String? selected_session;


  Widget build(BuildContext context) {
    Size screenSize=MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child:Column(
            children: [
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/tony.png'),
                          radius: 70,
                        ),
                        radius: 80,
                        backgroundColor: Colors.white,
                      ),
                      Positioned(
                        bottom: 7,
                        left: 105,
                        child: CircleAvatar(
                          backgroundColor: Colors.indigo,
                          radius: 22,
                        ),
                      ),
                      Positioned(
                          bottom: 4,
                          left: 103,
                          child: IconButton(onPressed: (){},
                              icon: Icon(Icons.camera_alt_outlined,color: Colors.white,
                                size: 28,))),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20,),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.85,
                child: TextFormField(
                  controller: namecontroller,
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.indigo)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.indigo)
                    ),
                    label: Text(
                      "Name",
                      style:
                      TextStyle(fontSize: 16, fontFamily: 'GoogleFont', color: Colors.indigo),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                width: screenSize.width * 0.85,
                child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.indigo,
                            width: 0,
                          )),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 0,
                            color: Colors.indigo,
                          )),
                    ),
                    hint: Text("Select Session",style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'GoogleFont',
                        color: Colors.indigo),),
                    value: selected_session,
                    items: sessions.map((e) {
                      return DropdownMenuItem(
                        child: Text(e),
                        value: e,
                      );
                    }).toList(),
                    onChanged: (val) {
                      setState(() {
                        selected_session = val;
                      });
                    }),

              ),
              SizedBox(height: 20,),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.85,
                child: TextFormField(
                  controller: companycontroller,
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.indigo)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.indigo)
                    ),
                    label: Text(
                      "Company",
                      style:
                      TextStyle(fontSize: 16, fontFamily: 'GoogleFont', color: Colors.indigo),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.85,
                child: TextFormField(
                  controller: packageController,
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.indigo)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.indigo)
                    ),
                    label: Text(
                      "Package",
                      style:
                      TextStyle(fontSize: 16, fontFamily: 'GoogleFont', color: Colors.indigo),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                width: screenSize.width * 0.85,
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.indigo,
                          width: 0,
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0,
                          color: Colors.indigo,
                        )),
                  ),
                  hint: Text("Select Your Course",style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'GoogleFont',
                      color: Colors.indigo),),
                  value: selected_course,
                  items: courses.map((e) {
                    return DropdownMenuItem(
                      child: Text(e),
                      value: e,
                    );
                  }).toList(),
                  onChanged: (val) {
                    selected_branch = null;
                    setState(() {
                      selected_course = val;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: screenSize.width * 0.85,
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.indigo,
                          width: 0,
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0,
                          color: Colors.indigo,
                        )),
                  ),
                  hint: Text("Select Your Branch",style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'GoogleFont',
                      color: Colors.indigo),),
                  value: selected_branch,
                  items: courseTobranch[selected_course]?.map((e) {
                    return DropdownMenuItem<String>(
                      child: Text(e),
                      value: e,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selected_branch = value;
                    });
                  },
                ),
              ),
              SizedBox(height: 35,),
              Container(
                width: 180,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),
                  onPressed: (){},
                  child: Text("Submit",style: TextStyle(fontSize: 20),),
                ),
              ),
              SizedBox(height: 40,)

            ],
          ),
        ),
      ),
    );
  }
}