
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants.dart';

class FilledInputField extends StatefulWidget {
  final TextEditingController controller;
  final TextInputType textInputType;
  final FocusNode fieldFocusNode;
  final bool password;
  final String hint;
  final bool expanded;
  final Color color;
  final Color textColor;
  final Color hintColor;
  final Icon prefixIcon;
  final Function(String) onSubmit;
  final FocusNode nextFocusNode;
  final bool isReadOnly;
  final String placeholder;
  final String validationMessage;
  final TextInputAction textInputAction;
  final Function(String) onChanged;
  final TextInputFormatter formatter;
  final Function enterPressed;
  final int maxChars;
  final TextAlign textAlign;
  final String customLabel;
  final bool requiredField;

  FilledInputField({
    Key key,
    @required this.controller,
    this.onSubmit,
    this.hint,
    this.textInputType = TextInputType.text,
    this.password = false,
    this.fieldFocusNode,
    this.expanded = false,
    this.maxChars,
    this.nextFocusNode,
    this.isReadOnly = false,
    this.placeholder = "",
    this.validationMessage = "",
    this.textInputAction = TextInputAction.none,
    this.onChanged,
    this.formatter,
    this.enterPressed,
    this.color = kTextFieldBackground,
    this.textColor = kMiddleColor,
    this.hintColor = kMiddleColor,
    this.prefixIcon,
    this.textAlign = TextAlign.start,
    this.customLabel,
    this.requiredField = false,
  }) : super(key: key) {
    if (password == true && expanded == true) {
      throw "Password and expanded can't both be true";
    }
  }

  @override
  _FilledInputFieldState createState() => _FilledInputFieldState();
}

class _FilledInputFieldState extends State<FilledInputField> {
  final int maxLines = 5;
  var _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        if (widget.customLabel != null)
          Padding(
            padding: const EdgeInsets.only(
              bottom: kMainPadding,
            ),
            child: RichText(
              text: TextSpan(
                text: widget.customLabel,
                // ignore: deprecated_member_use
                style: Theme.of(context).textTheme.headline,
                children: <TextSpan>[
                  if (widget.requiredField)
                    TextSpan(
                        text: '*',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize:
                              // ignore: deprecated_member_use
                              Theme.of(context).textTheme.headline.fontSize *
                                  1.5,
                        )),
                ],
              ),
            ),
          ),
        Container(
          height: widget.expanded ? null : kInputFieldHeight,
          child: TextField(
            controller: widget.controller,
            maxLines: widget.expanded ? maxLines : 1,
            maxLength: widget.maxChars,
            obscureText: widget.password && !_showPassword,
            keyboardType: widget.textInputType,
            textInputAction: widget.textInputAction,
            onChanged: widget.onChanged,
            inputFormatters:
                widget.formatter == null ? null : [widget.formatter],
            onEditingComplete: () {
              if (widget.enterPressed != null) {
                //FocusScope.of(context).requestFocus(FocusNode());
                FocusScope.of(context).unfocus();
                widget.enterPressed();
              }
            },
            onSubmitted: (value) {
              FocusScope.of(context).nextFocus();
              if (widget.nextFocusNode != null) {
                widget.nextFocusNode.requestFocus();
              }
              if (widget.onSubmit != null) {
                widget.onSubmit(value);
              }
            },
            readOnly: widget.isReadOnly,
            maxLengthEnforced: true,
            textAlign: widget.textAlign,
            textAlignVertical: TextAlignVertical.bottom,
            style: Theme.of(context).textTheme.body1.copyWith(
                color: widget.textColor,
                fontSize: 15 //ScreenHelper.screenFont(context, 15),
                ),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  const Radius.circular(10.0),
                ),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: widget.color,
              hintText: widget.hint,
              hintStyle: TextStyle(color: widget.hintColor),
              prefixIcon: widget.prefixIcon,
              suffixIcon: !widget.password
                  ? null
                  : GestureDetector(
                      onTap: () {
                        setState(() {
                          _showPassword = !_showPassword;
                        });
                      },
                      child: Icon(_showPassword
                          ? Icons.visibility
                          : Icons.visibility_off),
                    ),
            ),
          ),
        ),
      ],
    );
  }
}
