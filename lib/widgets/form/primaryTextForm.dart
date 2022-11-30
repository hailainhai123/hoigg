import 'package:flutter/material.dart';
// import 'package:html_editor_enhanced/utils/utils.dart';

class PrimaryTextFormField extends StatefulWidget {
  const PrimaryTextFormField({
    Key? key,
    required this.labelText,
    this.hintText,
    this.validator,
    this.textEditingController,
    this.obscureText = false,
  }) : super(key: key);

  final String labelText;
  final String? hintText;
  final TextEditingController? textEditingController;
  final bool obscureText;
  final Function(String?)? validator;

  @override
  State<PrimaryTextFormField> createState() => _PrimaryTextFormFieldState();
}

class _PrimaryTextFormFieldState extends State<PrimaryTextFormField> {
  var text = "";
  late bool showPass = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.textEditingController,
      decoration: InputDecoration(
        suffixIcon: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround, // added line
          mainAxisSize: MainAxisSize.min, // added line
          children: [
            text.isNotEmpty || text != ""
                ? SizedBox(
                    width: 24,
                    child: IconButton(
                      onPressed: widget.textEditingController?.clear,
                      icon: const Icon(Icons.clear),
                    ),
                  )
                : const SizedBox(),
            widget.obscureText
                ? SizedBox(
                    // width: 24,
                    child: IconButton(
                      icon: Icon(
                          showPass ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          showPass = !showPass;
                        });
                      },
                    ),
                  )
                : const SizedBox()
          ],
        ),
        labelText: widget.labelText,
        hintText: widget.hintText,
        alignLabelWithHint: false,
        isDense: true,
      ),
      onChanged: (value) {
        setState(() {
          text = value;
        });
      },
      obscureText: widget.obscureText ? showPass : false,
      validator: (value) {
        if (widget.validator != null) {
          return widget.validator!(value);
        }

        return null;
      },
    );
  }
}
