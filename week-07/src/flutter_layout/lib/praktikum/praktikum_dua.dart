import 'package:flutter/material.dart';

class ButtonRow {
  final BuildContext context;
  final Color color;

  ButtonRow({ required this.context }) : color = Theme.of(context).primaryColor;

  Widget buttonSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ButtonRow(context: context).getBuildButtonColumn(color: color, icon: Icons.call, label: 'CALL'),
        ButtonRow(context: context).getBuildButtonColumn(color: color, icon: Icons.near_me, label: 'ROUTE'),
        ButtonRow(context: context).getBuildButtonColumn(color: color, icon: Icons.share, label: 'SHARE'),
      ],
    );
  }
  
  Column getBuildButtonColumn({
    required Color color,
    required IconData icon,
    required String label
  }) => _buildButtonColumn(color, icon, label);
  
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}