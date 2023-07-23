import 'package:flutter/material.dart';

import '../productdetailscreen.dart';

class ProductCard extends StatelessWidget {
  final String productName;
  final String productDescription;
  final String productPhotoUrl; // Add the product photo URL property.
  final String userId;
  final int minimumBidPrice;
  final String auctionEndDateTime;
  final String productId;

  const ProductCard({
    super.key,
    required this.productName,
    required this.productDescription,
    required this.productPhotoUrl,
    required this.userId,
    required this.minimumBidPrice,
    required this.auctionEndDateTime,
    required this.productId,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Image.network(
              productPhotoUrl,
              fit: BoxFit.cover, // Set the fit property to cover.
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailsScreen(
                    productName: productName,
                    productDescription: productDescription,
                    productPhoto: productPhotoUrl,
                    minimumBidPrice: minimumBidPrice,
                    auctionEndDateTime: auctionEndDateTime,
                    prodId: productId,
                  ),
                ),
              );
            },
            title: Text(productName),
            subtitle: Text('Minimum Bid: $minimumBidPrice\$'),
          ),
        ],
      ),
    );
  }
}
