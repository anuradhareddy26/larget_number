import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Find Third Largest Number'),
        ),
        body: ThirdLargestFinder(),
      ),
    );
  }
}

class ThirdLargestFinder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Input list
    List<int> large = [100, 59, 84, 1, -1, 0, 102, 426,103];
 int? findThirdLargest(List<int> numbersList) {
    if (numbersList.length < 3) return null; // Ensure at least three numbers

    // Sort the list in descending order
    numbersList.sort((a, b) => b.compareTo(a));

    // Return the third largest number
    return numbersList[2];
  }
    // Find the third largest number
    int? thirdLargest = findThirdLargest(large);
    

    return Center(
      child: Text(
        thirdLargest != null
            ? 'The third largest number in the list is: $thirdLargest'
            : 'Unable to find the third largest number',
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }

 
}
