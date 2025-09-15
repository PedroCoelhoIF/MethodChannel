import 'package:flutter/material.dart';
import '../viewmodels/comunicacao_nativa.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalViewState();
}

class _TelaPrincipalViewState extends State<TelaPrincipal> {
  final ComunicacaoNativaViewModel _viewModel = ComunicacaoNativaViewModel();

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle = ElevatedButton.styleFrom( 
      foregroundColor: Colors.orange,
      
      
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0), 
      ),
      
      
      side: const BorderSide(
        color: Colors.black, 
        width: 2,            
      ),
      
      padding: const EdgeInsets.symmetric(vertical: 16),
    );

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Comunicação Nativa'),
        backgroundColor: const Color.fromARGB(255, 236, 106, 30),
        foregroundColor: const Color.fromARGB(255, 15, 10, 10),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ElevatedButton(
                
                style: buttonStyle,
                onPressed: () {
                  _viewModel.mostrarToastNativo();
                },
                child: const Text(
                  'Mostrar Toast Nativo',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                
                style: buttonStyle,
                onPressed: () {
                  _viewModel.mostrarAlertDialogNativo();
                },
                child: const Text(
                  'Mostrar AlertDialog Nativo',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}