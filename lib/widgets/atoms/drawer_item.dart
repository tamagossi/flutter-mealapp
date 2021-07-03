import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AtomDrawerItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final dynamic onTapItem;

  AtomDrawerItem({
    @required this.icon,
    @required this.label,
    this.onTapItem,
  });

  void goToScreen(BuildContext ctx) {
    if (onTapItem is Function) {
      onTapItem();
      return;
    }

    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (_) => onTapItem,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        label,
        style: GoogleFonts.robotoCondensed(fontSize: 18),
      ),
      onTap: () => goToScreen(context),
    );
  }
}
