import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meu_app_flutter_clone/services/sorteador_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var numeroSorteado = 0;
  var qtdSorteios = 0;
  var penUltimoSorteio = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meu Primeiro App Flutter", style: GoogleFonts.pacifico()),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Container(
        width: double.infinity,
        color: Colors.amber[100],
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.teal,
                child: Text(
                  "Tivemos até agora $qtdSorteios sorteios!",
                  style: GoogleFonts.roboto(fontSize: 70),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.purple,
                child: Text(
                  numeroSorteado.toString(),
                  style: GoogleFonts.roboto(fontSize: 100),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Text(
                  "O último número sorteado foi: $penUltimoSorteio",
                  style: GoogleFonts.roboto(fontSize: 50),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.red,
                    child: Text(
                      "nome",
                      style: GoogleFonts.roboto(fontSize: 50),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        "Olegario Neto",
                        style: GoogleFonts.roboto(fontSize: 50),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.green,
                    child: Text("25", style: GoogleFonts.roboto(fontSize: 50)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.monetization_on_outlined),
        onPressed: () {
          setState(() {
            qtdSorteios++;
            penUltimoSorteio = numeroSorteado;
            numeroSorteado = SorteadorService.sortearNumero();
          });
        },
      ),
    );
  }
}
