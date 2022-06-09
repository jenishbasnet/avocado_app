import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class KTextField extends StatelessWidget {
  final String? initialVal;
  final bool? enabled;
  final String? hintText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final TextInputAction? textInputAction;
  final Function()? onEditingComplete;
  final double? verticalPadding;
  final double? horizontalPadding;
  final Function(String)? onChanged;
  final Widget? prefix;
  final Widget? suffix;
  final Function(String?)? onFieldSubmitted;
  final Function(String?)? onSaved;
  final FocusNode? focusNode;
  final String? Function(String?)? validator;
  final bool enableInteractiveSelection;
  final bool readOnly;
  final int? maxLength;
  final int maxLines;
  final TextAlign textAlign;
  final TextCapitalization textCapitalization;
  final Color? fillColor;
  final double? fontSize;

  const KTextField({
    this.hintText,
    this.controller,
    this.textInputAction,
    this.onEditingComplete,
    this.onChanged,
    this.obscureText,
    this.keyboardType,
    this.prefix,
    this.suffix,
    this.validator,
    this.enableInteractiveSelection = true,
    this.readOnly = false,
    this.maxLength,
    this.maxLines = 1,
    this.textAlign = TextAlign.start,
    this.textCapitalization = TextCapitalization.none,
    this.horizontalPadding = 20.0,
    this.verticalPadding = 16.0,
    this.fillColor = const Color(0xFFEEEEEE),
    this.fontSize = 14.0,
    this.enabled = true,
    this.initialVal,
    this.onFieldSubmitted,
    this.focusNode,
    this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialVal,
      onFieldSubmitted: onFieldSubmitted,
      focusNode: focusNode,
      textCapitalization: textCapitalization,
      inputFormatters: [LengthLimitingTextInputFormatter(maxLength)],
      enabled: enabled,
      controller: controller,
      validator: validator,
      maxLines: maxLines,
      keyboardType: keyboardType,
      obscureText: obscureText ?? false,
      readOnly: readOnly,
      enableInteractiveSelection: enableInteractiveSelection,
      textAlign: textAlign,
      textInputAction: textInputAction ?? TextInputAction.next,
      onChanged: onChanged,
      onSaved: onSaved,
      onEditingComplete:
          onEditingComplete ?? () => FocusScope.of(context).nextFocus(),
      decoration: InputDecoration(
        disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xFFEEEEEE),
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        prefixIcon: prefix,
        prefixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
        suffixIcon: suffix,
        suffixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: fontSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: BorderSide(color: Theme.of(context).errorColor, width: 0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        filled: true,
        fillColor: fillColor,
        enabled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),
        isDense: true,
        contentPadding: EdgeInsets.symmetric(
            vertical: verticalPadding!, horizontal: horizontalPadding!),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}