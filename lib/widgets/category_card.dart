import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback? onTap;

  const CategoryCard({
    Key? key,
    required this.icon,
    required this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        width: 120,
        padding: EdgeInsets.all(8),

        // ✅ kotak belakang
        decoration: BoxDecoration(
          color: Colors.grey.shade200,         // ✅ background belakang
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),

        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue.shade100,      // ✅ kotak kuning
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.black,             // ✅ outline hitam
              width: 1.5,
            ),
          ),
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 36,
                color: Colors.black,            // ✅ ikon hitam
              ),
              SizedBox(height: 8),
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,          // ✅ teks hitam
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
