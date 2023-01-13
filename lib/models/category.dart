

//class berobat
class berobat extends StatelessWidget {
  const berobat({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> title = ["Tensi", "gula darah", "asam urat"];

    List<String> subTitle = ["12/3/3", "3/34/4", "4/56/7"];

    var checkDate = new DateTime.now();

    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 16, 12, 12),
      child: Container(
        child: ListView.builder(
          itemCount: title.length, // isi data sesuia list
          itemBuilder: (BuildContext context, int index) {
            return Container(
              width: 336,
              height: 100,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)), //boder 16
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12, 16, 12, 16), //padding
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title[index],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.orange,
                              ),
                            ),
                          ),
                          Text(subTitle[index])
                        ],
                      ),
                      Text("Last checked  " + checkDate.toString())
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}


//class dokter
class Docter extends StatelessWidget {
  const Docter({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> namaDoter = [
      "yanto",
      "yatno",
      "ngatno",
    ];

    List<int> umurDokter = [60, 40, 50];

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: ListView.builder(
          itemCount: namaDoter.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              color: Colors.white,
              child: ListTile(
                title: Text(namaDoter[index]),
                subtitle: Text(umurDokter[index].toString() + "  Tahun"),
                leading: Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 248, 217, 227),
                      borderRadius: BorderRadius.circular(50)),
                  width: 50,
                  height: 50,
                  child: Center(
                    child: ClipRect(
                      child: Text(
                        namaDoter[index][0],
                        style: TextStyle(color: Colors.red, fontSize: 30),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}