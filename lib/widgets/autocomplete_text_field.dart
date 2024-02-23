import 'package:flutter/material.dart';

class AutocompleteTextField extends StatefulWidget {
  final IconData leadingIcon;
  final String label;

  const AutocompleteTextField({
    Key? key,
    required this.leadingIcon,
    required this.label,
  }) : super(key: key);

  @override
  State<AutocompleteTextField> createState() => _AutocompleteTextFieldState();
}

class _AutocompleteTextFieldState extends State<AutocompleteTextField> {
  final _controller = TextEditingController();
  final _overlayController = OverlayPortalController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextFormField(
          controller: _controller,
          onChanged: (value) {
            if (value.isNotEmpty) {
              _overlayController.show();
            } else {
              _overlayController.hide();
            }
          },
          decoration: InputDecoration(
            prefixIcon: Icon(widget.leadingIcon),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            labelText: widget.label,
          ),
        ),
        OverlayPortal(
          controller: _overlayController,
          overlayChildBuilder: (context) => Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
