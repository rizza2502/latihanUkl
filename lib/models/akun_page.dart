import 'package:flutter/material.dart';

class AkunPage extends StatelessWidget {
  const AkunPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(12)),
              child: Padding(
                padding: EdgeInsetsGeometry.all(16),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 36,
                      backgroundImage: AssetImage('assets/images/profile.png'),
                      onBackgroundImageError: (exception, stackTrace) {} ,
                      child: Container(),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Nama Pengguna', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                          SizedBox(height: 4),
                          Text('pengguna@example.com'),
                          SizedBox(height: 8),
                          ElevatedButton.icon(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Edit Profil')));
                            },
                            icon: Icon(Icons.edit, size: 16),
                            label: Text('Edit Profil'),
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.lightBlue),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            ListTile(
              leading: Icon(Icons.history),
              title: Text('Riwayat Pesanan'),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Bantuan & Dukungan'),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),
             ListTile(
              leading: Icon(Icons.logout),
              title: Text('Keluar'),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: Text('Konfirmasi'),
                    content: Text('Anda yakin ingin keluar?'),
                    actions: [
                      TextButton(onPressed: () => Navigator.pop(context), child: Text('Batal')),
                      TextButton(onPressed: () {
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Keluar berhasil')));
                      }, child: Text('Ya')),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}