import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class KeranjangPage extends StatelessWidget {
  const KeranjangPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Keranjang Belanja'),
        backgroundColor: Colors.green,
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('keranjang')
            .orderBy('waktu', descending: true)
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(child: Text('Terjadi kesalahan'));
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          final docs = snapshot.data!.docs;
          if (docs.isEmpty) {
            return const Center(child: Text('Keranjang kosong'));
          }
          return ListView.builder(
            itemCount: docs.length,
            itemBuilder: (context, index) {
              final data = docs[index].data() as Map<String, dynamic>;
              return ListTile(
                leading: Image.asset(data['gambar'],
                    width: 50, height: 50, fit: BoxFit.cover),
                title: Text(data['nama']),
                subtitle:
                    Text('Jumlah: ${data['jumlah']} x Rp ${data['harga']}'),
                trailing: Text('Rp ${data['total']}'),
              );
            },
          );
        },
      ),
    );
  }
}
