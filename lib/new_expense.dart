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
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _amountController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    prefixText: "\$",
                    label: Text("Amount")
                  ),
                ),
              ),
              const SizedBox(width: 16,),
              Expanded(child: 
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Selected Date"),
                    IconButton(
                      onPressed: (){}, 
                      icon: Icon(Icons.calendar_month)
                      ),
                  ],
              )),
            ],
          ),
            Row(
              children: [
                Spacer(),
                ElevatedButton(
                  onPressed: (){Navigator.pop(context);}, 
                  child: Text("Cancel")
                  ),
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