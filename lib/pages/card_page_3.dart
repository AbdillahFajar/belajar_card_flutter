import 'package:flutter/material.dart';

class CardPage3 extends StatelessWidget {
  const CardPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Card(
              elevation: 8,
              shadowColor: Colors.grey,
              clipBehavior: Clip.antiAlias,
              child: Container(
                width: 500,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.blue.shade400, Colors.grey.shade300],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey, width: 5)
                        ),  
                        child: CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage('assets/images/oguricap_icon.png'),
                        )
                      )
                    ]
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
