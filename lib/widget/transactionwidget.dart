import 'package:finance/helper/colors.dart';
import 'package:flutter/material.dart';

class Transactionwidget extends StatelessWidget {
  final title;
  final image;
  final date;
  final ammount;
  const Transactionwidget({super.key, this.title, this.image, this.date, this.ammount});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: ksecondarycolor,
        borderRadius:  BorderRadius.all(Radius.circular(20)),
      ),
      child: ListTile(
        leading: Image.asset(image,color: Colors.white,width: 50,),
        title: Text(title,style: const TextStyle(
          color: Colors.white,
          fontSize: 21,
        ),),
        subtitle: Text(date,style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),),
        trailing: Text(ammount,style: const TextStyle(
          color: Colors.white,
          fontSize: 21,
        ),),
      ),
    );
  }
}
