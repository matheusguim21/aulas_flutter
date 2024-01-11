// import 'package:flutter/material.dart';
// import 'package:flutterando/home_controller.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     var controller = HomeController.of(context);

//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text("Flutterando"),
//         backgroundColor: Colors.blue,
//         titleTextStyle: TextStyle(color: Colors.white, fontSize: 30),
//       ),
//       body: Center(
//         child: Text("Olá Mundo, eu estou contando:  ${controller!.value}"),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           controller.increment();
//         },
//         backgroundColor: Colors.blue,
//         child: Icon(
//           Icons.add,
//           color: Colors.white,
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  State<HomePage> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  int value = 0;
  List<String> textoDigitado = <String>[];

  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text(
            "Curso Futter",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                    child: TextField(
                  controller: controller,
                )),
                ElevatedButton(
                    style: const ButtonStyle(
                        elevation: MaterialStatePropertyAll(0),
                        enableFeedback: false,
                        iconColor: MaterialStatePropertyAll(Colors.amber)),
                    onPressed: () {
                      setState(() {
                        if (controller.text != '') {
                          textoDigitado.add(controller.text);
                          controller.text = '';
                        }
                      });
                    },
                    child: const Icon(
                      Icons.add,
                      color: Colors.green,
                    ))
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: textoDigitado.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(textoDigitado[index]),
                );
              },
            ),
          )
        ]),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 37, 209, 252),
          splashColor: Colors.black12,
          child: (const Icon(
            Icons.clear_all,
            color: Colors.white,
          )),
          onPressed: () => setState(() {
            textoDigitado.clear();
          }),
        ),
      ),
    ));
  }
}
