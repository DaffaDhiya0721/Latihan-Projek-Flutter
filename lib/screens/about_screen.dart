import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override    
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
        backgroundColor: Colors.lightGreenAccent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/Background-about.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20.0,),
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('assets/images/logo-flora-fauna.png'),
                ),
                SizedBox(height: 20.0,),
                Card(
                  color: Colors.white.withOpacity(0.8),
                  margin: EdgeInsets.symmetric(vertical: 16.0),
                  child: Padding(
                    padding: const EdgeInsets.all(37.5),
                    child: Column(
                    children: [
                      Text(
                        'Learn About Flora and Fauna',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'We are here showing the flora and fauna in Indonesia',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.white.withOpacity(0.8),
                  margin: EdgeInsets.symmetric(vertical: 16.0),
                  child: Padding(
                    padding: const EdgeInsets.all(37.5),
                    child: Column(
                    children: [
                      Text(
                        'Flora',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Indonesia flora consists of various unique varieties of tropical plants. Having a tropical climate and around 17,000 islands, Indonesia is the country with the second largest biodiversity in the world.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.white.withOpacity(0.8),
                  margin: EdgeInsets.symmetric(vertical: 16.0),
                  child: Padding(
                    padding: const EdgeInsets.all(37.5),
                    child: Column(
                    children: [
                      Text(
                        'Fauna',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Indonesia fauna has high diversity because of its vast territory and the shape of a tropical archipelago. This high diversity is caused by the Wallace Line, dividing Indonesia into two areas; the Asian zoogeographic zone, influenced by Asian fauna, and the Australasian zoogeographic zone, influenced by Australian fauna.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40.0),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.lightGreenAccent,
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Back',
                  style: TextStyle(
                    fontSize: 20.0,  
                  ),
                  ),  
                ),
              ),
            ],
            ),
          ),
        ),
      ),
      );
    }
  }
