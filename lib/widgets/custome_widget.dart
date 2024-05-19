import 'dart:async';
import 'dart:ffi';

import 'package:authtentications/common/common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomeTextFromField extends StatefulWidget {
  final String hinttext;
  final bool obsecuretext;
  final TextEditingController? controller;

  const CustomeTextFromField({
    super.key,
    required this.hinttext,
    required this.obsecuretext,
    this.controller,
  });

  @override
  State<CustomeTextFromField> createState() => _CustomeTextFromFieldState();
}

class _CustomeTextFromFieldState extends State<CustomeTextFromField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.obsecuretext,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(18),
          // border: InputBorder.none,
          border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(12)),
          hintText: widget.hinttext,
          hintStyle: Common().hinttext),
    );
  }
}

class CustomeElevatedButton extends StatefulWidget {
  final String message;
  final FutureOr<void> Function() function;
  final Color? color;
  const CustomeElevatedButton({
    super.key,
    required this.message,
    required this.function,
    this.color = Colors.white,
  });

  @override
  State<CustomeElevatedButton> createState() => _CustomeElevatedButtonState();
}

class _CustomeElevatedButtonState extends State<CustomeElevatedButton> {
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        setState(() {
          loading = true;
        });
        await widget.function();
      
        setState(() {
          loading = false;
        });
      },
      style: ButtonStyle(
        side: const WidgetStatePropertyAll(BorderSide(color: Colors.black)),
        shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
        padding: const WidgetStatePropertyAll(
          EdgeInsets.symmetric(vertical: 20),
        ),
      ),
      child: loading
          ? const CupertinoActivityIndicator()
          : FittedBox(
              child: Text(
              widget.message,
              style: Common().semiboldwhite,
            )),
    );
  }
}

class DynamicFilledButton extends StatefulWidget {
  const DynamicFilledButton(
      {super.key, required this.child, required this.onPressed, this.color});

  final Widget child;
  final FutureOr<Void> Function() onPressed;
  final Color? color;

  @override
  State<DynamicFilledButton> createState() => _DynamicFilledButtonState();
}

class _DynamicFilledButtonState extends State<DynamicFilledButton> {
  bool isLoading = false;

  func() async {
    FocusManager.instance.primaryFocus?.unfocus();

    setState(() {
      isLoading = true;
    });

    await widget.onPressed();

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return FractionallySizedBox(
        widthFactor: .8,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: CupertinoButton(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            color: widget.color ?? Common().black,
            onPressed: isLoading ? null : func,
            child:
                isLoading ? const CupertinoActivityIndicator() : widget.child,
          ),
        ),
      );
    }
    return FractionallySizedBox(
      widthFactor: .8,
      child: SizedBox(
        height: 48,
        child: FilledButton(
          style: FilledButton.styleFrom(
            backgroundColor: widget.color ?? Common().maincolor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          ),
          onPressed: isLoading ? null : func,
          child: isLoading
              ? const SizedBox(
                  width: 30,
                  height: 30,
                  child: CircularProgressIndicator(),
                )
              : widget.child,
        ),
      ),
    );
  }
}
