import 'package:flutter/material.dart';
import '../models/dummy_data.dart';

class PesananPage extends StatelessWidget {
  const PesananPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: sampleOrders.isEmpty
          ? Center(child: Text('Belum ada pesanan', style: TextStyle(fontSize: 16)))
          : ListView.builder(
            itemCount: sampleOrders.length,
            itemBuilder: (context, index) {
              final order = sampleOrders[index];
              return Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(10)),
                margin: EdgeInsets.symmetric(vertical: 8),
                child: ListTile(
                  title: Text(order.serviceName),
                  subtitle: Text('Tanggal: ${order.date}\nID: ${order.id}'),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(order.status, style: TextStyle(color: order.status == 'Selesai' ? Colors.green : Colors.orange)),
                      SizedBox(height: 6),
                      Text(order.total, style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  isThreeLine: true,
                  onTap: () {
                    showDialog(
                      context: context, 
                      builder: (_) => AlertDialog(
                        title: Text('Detail Pesanan'),
                        content: Text('ID: ${order.id}\nLayanan: ${order.serviceName}\nStatus: ${order.status}\nTotal: ${order.total}'),
                        actions: [
                          TextButton(onPressed: () => Navigator.pop(context), child: Text('Tutup')),
                        ],
                      ),
                    );
                  },
                ),
              );
            },
          ),
      ),
    );
  }
}