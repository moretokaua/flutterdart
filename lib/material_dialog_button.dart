import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MaterialDialogButton extends StatelessWidget {
  const MaterialDialogButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton.filled(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Deletar Conta'),
              content: const Text(
                'Você tem certeza que deseja excluir essa conta? Essa ação não pode ser desfeita.',
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: const Text('Cancelar'),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: const Text('Deletar'),
                ),
              ],
            );
          },
        );
      },
      child: const Text('Material Dialog'),
    );
  }
}