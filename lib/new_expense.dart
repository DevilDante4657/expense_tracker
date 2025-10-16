import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NewExpense extends StatefulWidget{
  const NewExpense({super.key});
  
  @override
  State<NewExpense> createState() {
    return _NewExpensesState();
  }
  
}
class _NewExpensesState extends State<NewExpense>{
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  void dispose(){
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            maxLength: 50,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              label: Text("Title")
            ),
          ),
          TextField(
            controller: _amountController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              prefixText: "\$",
              label: Text("Amount")
            ),
          ),
            Row(
              children: [
                ElevatedButton(
                onPressed: (){
                  print(_titleController.text);
                  print(_amountController.text);
                  }, 
                child: Text("Save Expense"))
              ],
              ),
        ],
      )
      );
  }
}