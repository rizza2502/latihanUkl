import 'package:flutter/material.dart';

class NewsAndTipsSection extends StatelessWidget {
  const NewsAndTipsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ===== BERITA =====
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Berita",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
            ],
          ),
        ),
        SizedBox(
          height: 165,
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            children: const [
                NewsCard(
                date: "5 Oct 2021",
                title: "Era Sudah Digital, Tukang.com Hadir!",
                subtitle: "Aplikasi tukang.com jasa terpercaya",
                image: "assets/images/news1.jpg",
              ),
              NewsCard(
                date: "28 Apr 2020",
                title: "Benerin Dulu, Bayarnya Nanti!",
                subtitle: "Program promo menarik untuk pelanggan",
                image: "assets/images/news2.png",
              ),
              NewsCard(
                date: "20 Mar 2021",
                title: "Event 'Bersama Tukang.com'",
                subtitle: "Tukang.com hadir di berbagai kota",
                image: "assets/images/news3.jpg",
              ),
            ],
          ),       
        ),

        const SizedBox(height: 16),

        // ===== TIPS =====
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Tips",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
            ],
          ),
        ),
        SizedBox(
          height: 165,
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            children: const [
                NewsCard(
                  date: "10 Dec 2021",
                  title: "Kenali Tanda Tanda Keramik Rusak",
                  subtitle: "Keramikmu mungkin butuh perhatian!",
                  image: "assets/images/tips1.jpg",
                ),
                NewsCard(
                  date: "19 Dec 2020",
                  title: "10 Macam Jenis Tanaman Hias",
                  subtitle: "Kira-kira mana yang kamu suka?",
                  image: "assets/images/tips2.jpg",
                ),
                NewsCard(
                  date: "22 Jan 2022",
                  title: "Manfaat Tanaman di Rumah",
                  subtitle: "Buat udara lebih segar & nyaman.",
                  image: "assets/images/tips3.jpg",
                ),
              ],
            ),
          ),
      ],
    );
  }
}

class NewsCard extends StatelessWidget {
  final String date;
  final String title;
  final String subtitle;
  final String image;

  const NewsCard({
    Key? key,
    required this.date,
    required this.title,
    required this.subtitle,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      margin: const EdgeInsets.only(left: 16, right: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            date,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 6),
          Container(
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 4,
                  offset: const Offset(2, 3),
                ),
              ],
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            title,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
