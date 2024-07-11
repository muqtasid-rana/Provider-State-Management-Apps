import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_1/Provider/fav_provider.dart';

class FavExample extends StatefulWidget {
  const FavExample({super.key});

  @override
  State<FavExample> createState() => _FavExampleState();
}
List<int> selectedItem = [];
class _FavExampleState extends State<FavExample> {
  @override
  Widget build(BuildContext context) {
    final favprovider = Provider.of<FavProvider>(context);
    return Scaffold(
      body: Column(
        children: [

          Expanded(
            child: ListView.builder(
              itemCount: 10,
                itemBuilder: (context, index){
                  return Consumer<FavProvider>(builder: (context, value, child){
                    return ListTile(
                        onTap: (){
                          value.setVal(index);

                        },
                        leading: Text("item "+ index.toString()),
                        trailing: value.selectedItem.contains(index)? Icon(Icons.favorite):Icon(Icons.favorite_border)
                    );
                  },

                  );
                }
            ),
          )
        ],
      ),
    );
  }
}
