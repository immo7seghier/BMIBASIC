import 'package:bmi/result.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double height = 120;

  int age = 1;

  double wieght = 50;
  bool isMale = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () => setState(() {
                isMale = false;
              }),
              child: Container(
                decoration: BoxDecoration(
                    border:
                        Border.all(color: Colors.black, width: isMale ? 0 : 4),
                    borderRadius: BorderRadiusDirectional.circular(20),
                    color: Colors.amberAccent),
                margin: const EdgeInsets.only(top: 20),
                height: 200,
                width: 170,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.female_outlined,
                      size: 40,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Female",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => setState(() {
                isMale = true;
              }),
              child: Container(
                decoration: BoxDecoration(
                    border:
                        Border.all(color: Colors.black, width: isMale ? 4 : 0),
                    borderRadius: BorderRadiusDirectional.circular(20),
                    color: Colors.amberAccent),
                margin: const EdgeInsets.only(top: 20),
                height: 200,
                width: 170,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.male_outlined,
                      size: 40,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Male",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            //expanded used to fix width problem
            Expanded(
              child: Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.amberAccent),
                  height: 130,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "Height",
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "${height.toInt()}",
                        style: const TextStyle(fontSize: 20),
                      ),
                      Slider(
                        thumbColor: Colors.black,
                        activeColor: Colors.black,
                        value: height.toDouble(),
                        min: 110,
                        max: 200,
                        onChanged: (value) {
                          setState(() {
                            if (value >= 110.0 && value <= 200.0) {
                              height = value;
                            }
                          });
                        },
                      ),
                    ],
                  )),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.amberAccent),
                  height: 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Age",
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        "$age",
                        style: const TextStyle(fontSize: 20),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(10),
                                  right: Radius.circular(10)),
                            ),
                            child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                icon: const Icon(Icons.add)),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(10),
                                  right: Radius.circular(10)),
                            ),
                            child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (age == 0) {
                                      age = 0;
                                    } else {
                                      age--;
                                    }
                                  });
                                },
                                icon: const Icon(Icons.remove_outlined)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
                width: 50,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.amberAccent),
                  height: 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Weight",
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        "$wieght",
                        style: const TextStyle(fontSize: 20),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(10),
                                  right: Radius.circular(10)),
                            ),
                            child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    wieght++;
                                  });
                                },
                                icon: const Icon(Icons.add)),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(10),
                                  right: Radius.circular(10)),
                            ),
                            child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (wieght == 0) {
                                      wieght = 0;
                                    } else {
                                      wieght--;
                                    }
                                  });
                                },
                                icon: const Icon(Icons.remove_outlined)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amberAccent,
                    fixedSize: const Size.fromHeight(20)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultPage(
                          height: height,
                          weight: wieght,
                        ),
                      ));
                },
                child: const Text(
                  "calculate",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
          ],
        )
      ]),
    );
  }
}
