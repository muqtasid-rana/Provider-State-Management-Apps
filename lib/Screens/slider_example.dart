import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_1/Provider/slider_provider.dart';

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}
class _SliderExampleState extends State<SliderExample> {
  @override
  Widget build(BuildContext context) {
    print("bsjdj");
    //final provider = Provider.of<SliderProvider>(context, listen: true);
    return Scaffold(
      body:
          Consumer<SliderProvider>(builder: (context, value, child){
            return  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Slider(
                    min: 0,
                    max: 1,
                    value: value.value, onChanged: (val){
                  value.setVal(val);
                }),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.green.withOpacity(value.value),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.red.withOpacity(value.value),
                        ),
                      ),
                    )
                  ],
                )


              ],
            );
          })

    );
  }
}
