
import 'package:flutter/material.dart';
import 'package:grid_view/models/product.dart';
import 'package:grid_view/screens/products_detail_screen.dart';



List<Product> productsList = [
  Product(name: 'Babar Azam',  imageUrl: 'https://img1.hscicdn.com/image/upload/f_auto,t_h_100_2x/lsci/db/PICTURES/CMS/302700/302768.jpg'),
  Product(name: 'Shaheen Shah Afridi',  imageUrl: 'https://img1.hscicdn.com/image/upload/f_auto,t_h_100_2x/lsci/db/PICTURES/CMS/312100/312180.jpg'),
  Product(name: 'Hassan Ali', imageUrl: 'https://img1.hscicdn.com/image/upload/f_auto,t_h_100_2x/lsci/db/PICTURES/CMS/302700/302774.jpg'),
  Product(name: 'Rizwan', imageUrl: 'https://img1.hscicdn.com/image/upload/f_auto,t_h_100_2x/lsci/db/PICTURES/CMS/312100/312178.jpg'),
  Product(name: 'Saim Ayub', imageUrl: 'https://img1.hscicdn.com/image/upload/f_auto,t_h_100_2x/lsci/db/PICTURES/CMS/325600/325608.3.jpg'),
  Product(name: 'Shadab Khan', imageUrl: 'https://img1.hscicdn.com/image/upload/f_auto,t_h_100_2x/lsci/db/PICTURES/CMS/302800/302825.jpg'),

];


class DynamicListViewScreen extends StatelessWidget {
  const DynamicListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('List View'),
      ),
      body: ListView.builder(
          itemCount: productsList.length,
          itemBuilder: (BuildContext context, int index) {

            Product product = productsList[index];


            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(product.imageUrl),
                ),
                title: Text(product.name),
                onTap: (){
                  // navigate to product detail screen

                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return ProductDetailScreen(product: product);
                  }));
                },
              ),
            );
          }),
    );
  }
}
