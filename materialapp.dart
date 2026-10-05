
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        fontFamily:'poppins',
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            color: Colors.black,
          ),
        ),

      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;


//scaffold massage
void _showmsg(BuildContext context){
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text("This is a snackbar"),
      // duration: Duration(seconds: 2),
      // backgroundColor: Colors.deepPurpleAccent,
      // action: SnackBarAction(
      //   label: "Undo",
      //   onPressed: (){
      //     ScaffoldMessenger.of(context).showSnackBar(
      //       SnackBar(
      //         content: Text("Undo action performed"),
      //         duration: Duration(seconds: 2),
      //         backgroundColor: Colors.deepPurpleAccent,
      //       ),
      //     );
      //   },
      // ),
    ),
  );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main page practice'),
        shape:RoundedRectangleBorder(
          borderRadius:BorderRadius.vertical(
            bottom:Radius.circular(30),
          )
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        elevation:200,
        centerTitle:true,
        actions:[
          IconButton(onPressed:(){
            _showmsg(context);
            
          }, icon:Icon(Icons.search_rounded)),
        ]
      ),

      //Drawer
      drawer:Drawer(
        

child:ListView(
  children: [
    UserAccountsDrawerHeader(
      accountName:Text("Tasnia"),
      accountEmail:Text("tasnia335@gmail.com"),
      currentAccountPicture:CircleAvatar(
        backgroundImage:NetworkImage("https://i.etsystatic.com/18417089/c/800/800/0/0/il/32707d/3733099268/il_600x600.3733099268_i07f.jpg"),
      ),
    ),

    ListTile(
      leading:Icon(Icons.add),
      title:Text("Add"),
      onTap:(){},
    ),

     ListTile(
      leading:Icon(Icons.email),
      title:Text("Email"),
      onTap:(){
        Navigator.pop(context);
      },
    ),


     ListTile(
      leading:Icon(Icons.link),
      title:Text("LinkedIn"),
    ),

     ListTile(
      leading:Icon(Icons.phone),
      title:Text("Phone"),
    ),
     ListTile(
      leading:Icon(Icons.location_on),
      title:Text("Mymensingh"),
    ),


  ],
)


      ),
endDrawer:Drawer(),
floatingActionButton:FloatingActionButton(onPressed: (){
  _showmsg(context);
},
child:Icon (Icons.add),),

      //Bottom Navigation Bar

      body: const Center(
        child: Text('Hello World\n'),
      ),
      bottomNavigationBar:BottomNavigationBar(
        currentIndex: _currentIndex,

onTap:(index){
  
  setState(() {
    _currentIndex=index;
  });
  _showmsg(context);
},



        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        // currentIndex: _currentIndex,
        // onTap: (index) {
        //   setState(() {
        //     _currentIndex = index;
        //   });
        
      ),
    );
  }
}
