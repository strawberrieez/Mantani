part of '_index.dart';

class KelolaPageListView extends StatefulWidget {
  const KelolaPageListView({super.key});

  @override
  KelolaPageListViewState createState() => KelolaPageListViewState();
}
class KelolaPageListViewState extends State<KelolaPageListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE7F0DC),
      body: Center(
        child: OnBuilder<List<Lahan>>.all(
          listenTo: _dt.rxKelolaList,
          onWaiting: () => const Center(
            child: CircularProgressIndicator(),
          ),
          onError: (error, refreshError) => const Text('Error'),
          onData: (data) => OnReactive(
            () => ListView.builder(
              
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.white,
                  child: ListTile(
                    selected: _dt.rxSelectedId.st == data[index].id,
                    tileColor: Colors.white,
                    leading: const Icon(
                      Icons.location_on,
                      color: Colors.black,
                    ),
                    selectedColor: Colors.orange,
                    title: Text(
                      data[index].namaLahan,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      data[index].lokasiLahan,
                      style: const TextStyle(color: Colors.black54),
                    ),
                    trailing: TextButton(
                      onPressed: () {
                        _ct.selectedId(data[index].id);
                          nav.to(Routes.kelolaSelengkapnya);
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.green,
                      ),
                      child: const Text('Selengkapnya'),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          nav.to(Routes.kelolaPageDetail);
        },
        backgroundColor: const Color(0xFF597445),
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
    );
  }
}
