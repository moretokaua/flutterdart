import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoDialogButton extends StatelessWidget {
  const CupertinoDialogButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton.filled(
      child: const Text('Cupertino Dialog'),
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return CupertinoAlertDialog(
              title: const Text('Deletar Conta'),
              content: const Text(
                'Você tem certeza que deseja excluir essa conta? Essa ação é irreversível!',
              ),
              actions: [
                CupertinoDialogAction(
                  child: const Text('Cancelar'),
                  onPressed: () => Navigator.of(context).pop(false),
                ),
                CupertinoDialogAction(
                  isDefaultAction: true,
                  child: const Text('Deletar'),
                  onPressed: () => Navigator.of(context).pop(true),
                ),
              ],
            );
          },
        );
      },
    );
  }
}