part of '_index.dart';

class KelolaPageListView extends StatelessWidget {
  const KelolaPageListView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ManTani',
      theme: ThemeData(
        primaryColor: Colors.green,
        scaffoldBackgroundColor: const Color(0xFFEFF4E7),
      ),
      home: KelolaPage(),
    );
  }
}

class KelolaPage extends StatelessWidget {
  final List<Map<String, String>> lahanList = [
    {"title": "Lahan 1", "subtitle": "Sebelah tower"},
    {"title": "Lahan 2", "subtitle": "Dekat warung Bu Sari"},
    {"title": "Lahan 3", "subtitle": "Belakang rumah"},
    {"title": "Lahan 4", "subtitle": "Dekat sungai sekolah"},
    {"title": "Lahan 5", "subtitle": "Sebelah rumah"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ManTani'),
        backgroundColor: Color(0xFF597445),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: lahanList.length,
        itemBuilder: (context, index) {
          final lahan = lahanList[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            color: Colors.grey[200],
            child: ListTile(
              leading: const Icon(Icons.location_on, color: Colors.black),
              title: Text(lahan['title'] ?? '', style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(lahan['subtitle'] ?? ''),
              trailing: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                ),
                child: const Text('Selengkapnya'),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'Kelola',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'Penghasilan',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.green,
        onTap: (index) {},
      ),
    );
  }
}
