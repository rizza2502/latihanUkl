import 'package:flutter/material.dart';
import 'package:tukang_com/models/akun_page.dart';
import 'package:tukang_com/models/partner_card.dart';
import '../models/dummy_data.dart';
import '../widgets/category_card.dart';
import '../widgets/service_card.dart';
import 'pesanan_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    DashboardContent(),
    PesananPage(),
    AkunPage(),
  ];

  void _onNavTap(int idx) {
    setState(() {
      _selectedIndex = idx;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tukang.com',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            letterSpacing: 0.5,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.lightBlue,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onNavTap,
        selectedItemColor: Colors.lightBlue,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: 'Pesanan'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Akun'),
        ],
      ),
    );
  }
}

class DashboardContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final categories = [
      {'icon': Icons.electrical_services, 'title': 'Listrik'},
      {'icon': Icons.plumbing, 'title': 'Ledeng'},
      {'icon': Icons.format_paint, 'title': 'Pengecatan'},
      {'icon': Icons.design_services, 'title': 'Bangunan'},
    ];

    return SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Halo, Pengguna', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text('Pilih layanan sesuai kebutuhanmu!', style: TextStyle(color: Colors.grey[700])),
                ],
              )
            ],
          ),
          SizedBox(height: 20),
          Text('Kategori', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),

            // ✅ wrapper besar (biru muda — tanpa shadow)
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(16),
            ),

            child: SizedBox(
              height: 120,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                separatorBuilder: (_, __) => SizedBox(width: 12),
                itemBuilder: (context, index) {
                  final cat = categories[index];
                  return CategoryCard(
                    icon: cat['icon'] as IconData,
                    title: cat['title'] as String,
                    onTap: () {},
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 20),

          // ✅ Banner Section
          Container(
            width: double.infinity,
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: AssetImage("assets/banner.png"),   // ganti banner kamu
                fit: BoxFit.cover,
              ),
            ),
          ),

          SizedBox(height: 20),

          // ✅ Official Partner Section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Official Partner Store",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              Icon(Icons.arrow_forward_ios, size: 16)
            ],
          ),
          Text(
            "Pesan produk Barang / Jasa dari Partner Resmi",
            style: TextStyle(color: Colors.grey[600]),
          ),

          SizedBox(height: 12),

          SizedBox(
            height: 80,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: officialPartners.length,
              separatorBuilder: (_, __) => SizedBox(width: 12),
              itemBuilder: (context, index) {
                return PartnerCard(image: officialPartners[index]);
              },
            ),
          ),

          SizedBox(height: 20),

          // ✅ Financial Partner Section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Financial Partner",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              Icon(Icons.arrow_forward_ios, size: 16)
            ],
          ),
          Text(
            "Solusi pembiayaan untuk proyek Renovasi",
            style: TextStyle(color: Colors.grey[600]),
          ),

          SizedBox(height: 12),

          SizedBox(
            height: 80,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: financialPartners.length,
              separatorBuilder: (_, __) => SizedBox(width: 12),
              itemBuilder: (context, index) {
                return PartnerCard(image: financialPartners[index]);
              },
            ),
          ),

          SizedBox(height: 20),
          Text('Tukang Populer', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Column(
            children: sampleServices.map((s) => ServiceCard(service: s, onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Pilih layanan ${s.title}')));
            })).toList(),
          ),
        ],
      ),
    );
  }
}