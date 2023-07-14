import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final border = OutlineInputBorder(
      // ejemplo de que se le puede poner el color
      // borderSide: BorderSide(color: colors.primary),
      borderRadius: BorderRadius.circular(40),
    );

    return TextFormField(
      onChanged: (value) {},
      validator: (value) {
        if (value == null) return "Este espacio es obligatorio";

        if (value.trim().isEmpty) return "Este espacio es obligatorio";

        if (value.isEmpty) return "Este espacio es obligatorio";

        return null;
      },
      decoration: InputDecoration(
        enabledBorder: border,
        focusedBorder: border.copyWith(
          borderSide: BorderSide(color: colors.primary),
        ),
      ),
    );
  }
}
