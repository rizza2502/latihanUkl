class PartnerCard extends StatelessWidget {
  final String image;

  const PartnerCard({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(8),
      child: Image.asset(image, fit: BoxFit.contain),
    );
  }
}
