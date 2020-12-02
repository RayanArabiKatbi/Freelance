
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants.dart';

class OutlinedTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hint;
  final bool expanded;
  final Function(String) onSubmit;
  final TextInputType textInputType;
  final FocusNode fieldFocusNode;
  final FocusNode nextFocusNode;
  final bool isReadOnly;
  final String placeholder;
  final String validationMessage;
  final TextInputAction textInputAction;
  final Function(String) onChanged;
  final TextInputFormatter formatter;
  final Function enterPressed;
  final bool password;
  final int maxChars;
  final Color color;
  final Color textColor;
  final TextDirection textDirection;
  final Widget prefixIcon;
  final Widget suffix;
  final String customLabel;
  final bool requiredField;

  OutlinedTextField({
    Key key,
    @required this.controller,
    this.expanded = false,
    this.textDirection = TextDirection.rtl,
    this.color = kMiddleColor,
    this.hint,
    this.maxChars,
    this.onSubmit,
    this.textInputType = TextInputType.text,
    this.fieldFocusNode,
    this.password = false,
    this.nextFocusNode,
    this.isReadOnly = false,
    this.placeholder = "",
    this.validationMessage = "",
    this.textInputAction = TextInputAction.none,
    this.onChanged,
    this.formatter,
    this.enterPressed,
    this.prefixIcon,
    this.suffix,
    this.textColor,
    this.customLabel,
    this.requiredField = false,
  }) : super(key: key) {
    if (password == true && expanded == true) {
      throw "Password and expanded can't both be true";
    }
  }

  @override
  _OutlinedTextFieldState createState() => _OutlinedTextFieldState();
}

class _OutlinedTextFieldState extends State<OutlinedTextField> {
  final int maxLines = 5;
  var _showPassword = false;

  Color get textColor {
    return widget.textColor ?? widget.color ?? kMiddleColor;
  }

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
          child: TextFormField(
            textDirection: widget.textDirection,
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
            onFieldSubmitted: (value) {
              FocusScope.of(context).nextFocus();
              if (widget.nextFocusNode != null) {
                widget.fieldFocusNode?.unfocus();
                widget.nextFocusNode.requestFocus();
              }
              if (widget.onSubmit != null) {
                widget.onSubmit(value);
              }
            },
            readOnly: widget.isReadOnly,
            maxLengthEnforced: true,
            textAlignVertical: TextAlignVertical.center,
            style: Theme.of(context).textTheme.body1.copyWith(
                color: textColor,
                fontSize: 15 //ScreenHelper.screenFont(context, 20),
                ),
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: widget.color, width: 2.0)),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(color: widget.color, width: 1.0),
              ),
              hintText: widget.hint,
              prefixIcon: widget.prefixIcon,
              //suffix: Icon(Icons.attachment),
              contentPadding: EdgeInsets.all(8.0),
              counterStyle: Theme.of(context).textTheme.body1.copyWith(
                  color: kMiddleColor,
                  fontSize: 10 //ScreenHelper.screenFont(context, 20),
                  ),
              counterText: widget.maxChars == null
                  ? ''
                  : 'الحد الاقصي للحروف ${widget.maxChars} حرف',
              suffixIcon: !widget.password
                  ? widget.suffix
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
