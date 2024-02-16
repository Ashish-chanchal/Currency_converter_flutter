import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State createState() {
    return _CurrencyConverterMaterialPageState();
  }
  
  
}

class _CurrencyConverterMaterialPageState extends State {
  double result = 0;
    final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    
    const border = OutlineInputBorder(
      borderSide: BorderSide(width: 2.0, style: BorderStyle.solid),
      borderRadius: BorderRadius.all(Radius.circular(60)),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: const Text('Currency Converter'),
          centerTitle: true,
          backgroundColor: Colors.blueGrey),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                result.toString(),
                style:
                    const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: textEditingController,
                  decoration: const InputDecoration(
                    hintText: 'Please enter the amount in USD',
                    prefix: Icon(Icons.monetization_on),
                    focusedBorder: border,
                    enabledBorder: border,
                  ),
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: TextButton(
                  onPressed: () {
                    setState((){
                      result = double.parse(textEditingController.text) * 83;
                    });
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  child: const Text("Convert"),
                ),
              )
            ],
          ),
        ),
        //button

        //raised button
        //appears like text
      ),);
  }
}

class CurrencyConverterMaterialPagee extends StatelessWidget {
  const CurrencyConverterMaterialPagee({super.key});

  @override
  Widget build(BuildContext context) {
    double result = 0;
    final TextEditingController textEditingController = TextEditingController();
    const border = OutlineInputBorder(
      borderSide: BorderSide(width: 2.0, style: BorderStyle.solid),
      borderRadius: BorderRadius.all(Radius.circular(60)),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: const Text('Currency Converter'),
          centerTitle: true,
          backgroundColor: Colors.blueGrey),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                result.toString(),
                style:
                    const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: textEditingController,
                  decoration: const InputDecoration(
                    hintText: 'Please enter the amount in USD',
                    prefix: Icon(Icons.monetization_on),
                    focusedBorder: border,
                    enabledBorder: border,
                  ),
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: TextButton(
                  onPressed: () {
                    print(textEditingController.text);
                    print(double.parse(textEditingController.text) * 83);
                    result = double.parse(textEditingController.text) * 83;
                    build(context);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  child: const Text("Convert"),
                ),
              )
            ],
          ),
        ),
        //button

        //raised button
        //appears like text
      ),
    );
  }
}
