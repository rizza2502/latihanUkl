class Service {
  final String title;
  final String subtitle;
  final String price;
  final String image;

  Service({
    required this.title,
    required this.subtitle,
    required this.price,
    required this.image,
  });
}

class Order {
  final String id;
  final String serviceName;
  final String date;
  final String status;
  final String total;

  Order({
    required this.id,
    required this.serviceName,
    required this.date,
    required this.status,
    required this.total,
  });
}

final officialPartners = [
  'assets/tegels.png',
  'assets/propan.png',
  'assets/indogress.png',
  'assets/rabbit.png',
];

final financialPartners = [
  'assets/kredivo.png',
  'assets/bfi.png',
  'assets/sharia.png',
  'assets/griyahu.png',
  'assets/koin.png',
];

final List<Service> sampleServices = [
  Service(
    title: 'Tukang Listrik', 
    subtitle: 'Perbaikan & Instalasi listrik', 
    price: 'Rp. 150.000', 
    image: 'assets/images/Tukang_listrik.jpg',
  ),
  Service(
    title: 'Tukang Ledeng', 
    subtitle: 'Perbaikan pipa & kran', 
    price: 'Rp. 120.000', 
    image: 'assets/images/Tukang_pipa.jpg',
  ),
  Service(
    title: 'Tukang Cat', 
    subtitle: 'Pengecatan interior & eksterior', 
    price: 'Rp. 200.000', 
    image: 'assets/images/Tukang_cat.jpg'
  ),
];

final List<Order> sampleOrders = [
  Order(
    id: 'ORD-001', 
    serviceName: 'Tukang Listrik', 
    date: '2024-11-01', 
    status: 'Selesai', 
    total: 'Rp. 150.000',
  ),
  Order(
    id: 'ORD-002', 
    serviceName: 'Tukang Ledeng', 
    date: '2024-12-22', 
    status: 'Dalam Proses', 
    total: 'Rp. 120.000',
  ),
];