import 'package:flutter/services.dart';


class ComunicacaoNativaViewModel {
  
  static const platform = MethodChannel('com.example.tarefa_methodchannel/channel');

  Future<void> mostrarToastNativo() async {
    try {
      final String mensagem = "Teste teste testando...";
      await platform.invokeMethod('showToast', {'message': mensagem});
    } on PlatformException catch (e) {
      print("Falha ao exibir o Toast: '${e.message}'.");
    }
  }

  Future<void> mostrarAlertDialogNativo() async {
    try {
      final Map<String, String> arguments = {
        'title': 'Alerta Alerta Alerta Nativo',
        'message': 'Opa como que vai?',
      };
      await platform.invokeMethod('showAlertDialog', arguments);
    } on PlatformException catch (e) {
      print("Falha ao exibir o AlertDialog: '${e.message}'.");
    }
  }
}