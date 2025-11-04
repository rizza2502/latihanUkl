import 'package:flutter/material.dart';
import '../models/dummy_data.dart';

class ServiceCard extends StatelessWidget {
  final Service service;
  final VoidCallback? onTap;

  const ServiceCard({Key? key, required this.service, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(12)),
      elevation: 2,
      child: ListTile(
        onTap: onTap,
        leading: Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.grey.shade200,
          ),
          child: service.image.isNotEmpty
            ? ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(8),
                child: Image.asset(
                  service.image,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Icon(Icons.build, size: 32, color: Colors.grey),
                ),
              )
            : Icon(Icons.build, size: 32, color: Colors.grey,)
        ),
        title: Text(service.title),
        subtitle: Text(service.subtitle),
        trailing: Text(service.price, style: TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}