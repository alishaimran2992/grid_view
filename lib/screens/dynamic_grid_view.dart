
import 'package:flutter/material.dart';
import 'package:grid_view/screens/list_view_screen.dart';

import '../models/product.dart';

class DynamicGridViewScreen extends StatelessWidget {
  const DynamicGridViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dynamic Grid View'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
            itemCount: productsList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 300,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              Product product = productsList[index];

              return Card(
                elevation: 20,
                child: Column(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        child: Image.network(
                          product.imageUrl,
                          height: 200,
                          fit: BoxFit.fill,
                        )),
                    Text(product.name)
                  ],
                ),
              );
            }),
      ),
    );
  }
}
