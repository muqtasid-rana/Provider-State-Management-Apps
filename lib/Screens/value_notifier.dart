import 'package:flutter/material.dart';

class ValueNotifie extends StatelessWidget {
   ValueNotifie({super.key});

  ValueNotifier<bool> _toggle = ValueNotifier<bool>(true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ValueListenableBuilder(
          valueListenable: _toggle,
          builder: (context, value, child){
            return  TextFormField(
              obscureText: _toggle.value,
              decoration:  InputDecoration(
                hintText: 'Password',
                suffixIcon: InkWell(
                    onTap:(){
                      _toggle.value = !_toggle.value;
                    },
                    child: Icon(_toggle.value? Icons.visibility
                        :Icons.visibility_off ))
              ),
            );
          }
      )
        ],
      ),
    );
  }
}
