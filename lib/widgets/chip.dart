import 'package:flutter/material.dart';

class ChipSuggestion extends StatelessWidget {
  final IconData? leadingIcon;
  final String text;

  const ChipSuggestion({Key? key, required this.text, this.leadingIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 2,
        bottom: 2,
        right: 16,
        left: (leadingIcon != null ? 8.0 : 16.0)
      ),
      height: 32,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
              width: 1,
              color: const Color(0xFF74777F)
          )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          LayoutBuilder(builder: (context, constraint) {
            if(leadingIcon != null) {
              return Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(
                    leadingIcon,
                    size: 18,
                  ),
                  const SizedBox(
                    width: 8,
                  )
                ],
              );
            }

            return const SizedBox(
              width: 0,
            );
          }),
          Text(
              text
          )
        ],
      ),
    );
  }

}