class product {
  final String nama;
  final String harga;
  final String kuantitas;
  final String image;
  final String deskripsi;

  product(this.nama, this.harga, this.image, this.kuantitas, this.deskripsi);
}

final List<product> allData = [
  product('Susu', '10.000', 'assets/beer-can.png', 'Kaleng',
      'Minuman Susu yang memiliki berbagai macam rasa unik'),
  product('ciki', '1000', 'assets/snack.png', 'Pcs',
      'Makanan ringan dengan banyak rasa'),
  product(
      'Shampo', '20.000', 'assets/shampo.png', 'Botol', 'Harum sepanjang masa'),
  product('Sabun', '5000', 'assets/soap.png', 'Batang',
      'Bersih dan wangi sepanjang hidup'),
  product('Aer', '100.000', 'assets/mineral-water.png', 'Botol',
      'Segarnya langsung dari alam'),
  product(
      'Ais krim', '6000', 'assets/ice-cream.png', 'Pcs', 'Es terus biar sehat'),
];
