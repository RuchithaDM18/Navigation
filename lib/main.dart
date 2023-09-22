import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      home: Navigationbar(),
    );
  }
}

class  Navigationbar extends StatefulWidget {



  @override
  State<Navigationbar> createState() => _NavigationbarState();
}

class _NavigationbarState extends State<Navigationbar> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        bottomNavigationBar:NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          destinations: [
            NavigationDestination(
              icon:Icon(Icons.home_outlined),
              label: 'home',
              selectedIcon: Icon(Icons.home),
            ),
            NavigationDestination(
              icon:Icon(Icons.school_outlined),
              label: 'school',
              selectedIcon: Icon(Icons.school),

            ),
            NavigationDestination(
              icon:Icon(Icons.sports_outlined),
              label: 'sports',
              selectedIcon: Icon(Icons.sports),

            ),
          ],
        ),
        // This trailing comma makes auto-formatting nicer for build methods.
        body: <Widget>[

          Container(

            child: Padding(
              padding: EdgeInsets.all(20.0),
              child:Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 24.0, // You can adjust the font size as needed
                          fontWeight: FontWeight.bold, // You can adjust the font weight as needed
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextFormField(
                          validator:(value){
                            if(value==null||value.isEmpty)
                            {
                              return 'please enter the value';
                            }
                            return null;
                          },

                          decoration: InputDecoration(
                            labelText: 'First Name',
                            border:UnderlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextFormField(
                          validator: (value){
                            if(value==null||value.isEmpty){
                              return'please enter the value';
                            }
                            return null;
                          },

                          decoration: InputDecoration(
                            labelText: 'Last Name',
                            border:UnderlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextFormField(
                          validator: (value){
                            if(value==null||value.isEmpty){
                              return 'please enter the value';
                            }
                            return null;
                          },

                          decoration: InputDecoration(
                            labelText: 'Email ID',
                            border:UnderlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextFormField(
                          validator: (value){
                            if(value==null||value.isEmpty){
                              return 'please enter the value';
                            }
                            return null;
                          },

                          obscureText: true, // For password input
                          decoration: InputDecoration(
                            labelText: 'Password',
                            border:UnderlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      ElevatedButton(
                        onPressed: () {
                          if(formKey.currentState!.validate()){
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Processing Data")));

                          }


                        }, child: Text('Sign In'),


                      ),

                    ],
                  )
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Viveka Convent',
                  style: TextStyle(
                    fontSize: 27.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Left side - Picture
                    Container(
                      width: 250.0, // Adjust the width of the picture container
                      height: 250.0, // Adjust the height of the picture container

                      child:Image.asset('images/vivekaconvent.jpg',height:300,width:200), // You can replace this with your image


                    ),
                    // Right side - Paragraph
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dapibus metus vitae neque efficitur ultrices. Suspendisse in laoreet libero.  Sed dapibus metus vitae neque efficitur ultrices. Suspendisse in laoreet libero.',
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dapibus metus vitae neque efficitur ultrices. Suspendisse in laoreet libero.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dapibus metus vitae neque efficitur ultrices. Suspendisse in laoreet libero.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dapibus metus vitae neque efficitur ultrices. Suspendisse in laoreet libero.',
                    textAlign: TextAlign.justify,
                  ),
                )
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Center the content vertically
              children: [
                Text(
                  'SPORTS',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20.0),
                Image.asset(
                  'images/sports.jpg',
                  width: 350.0,
                  height: 250.0,
                ),
                SizedBox(height: 20.0), // Add space between the image and the paragraph
                Text(
                  "Sport pertains to any form of physical activity or game,[1] often competitive and organized, that aims to use, maintain, or improve physical ability and skills while providing enjoyment to participants and, in some cases, entertainment to spectators.[2] Sports can, through casual or organized participation, improve participants' physical health. Hundreds of sports exist, from those between single contestants, through to those with hundreds of simultaneous participants, either in teams or competing as individuals. In certain sports such as racing, many contestants may compete,",
                  textAlign: TextAlign.center, // Center the paragraph horizontally
                ),
              ],
            ),
          )

        ][currentPageIndex]
    );
  }
}
