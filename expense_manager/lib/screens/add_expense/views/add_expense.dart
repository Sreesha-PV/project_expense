import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class AddExpense extends StatefulWidget {
  const AddExpense({super.key});

  @override
  State<AddExpense> createState() => _AddExpenseState();
}

class _AddExpenseState extends State<AddExpense> {
  TextEditingController expenseController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  DateTime selectDate = DateTime.now();

  List<String> myCategoriesIcons = [
    'home',
    'shopping',
    'travel',
  ];


  @override
  void initState() {
    dateController.text = DateFormat('dd/mm/yy').format(DateTime.now());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.outline,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.outline,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Add Expense',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              SizedBox(
                // width: MediaQuery.of(context).size.width=0.7,
                child: TextFormField(
                  controller: expenseController,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: const Icon(CupertinoIcons.money_dollar,
                          size: 16, color: Colors.grey),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none)),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              TextFormField(
                controller: categoryController,
                textAlignVertical: TextAlignVertical.center,
                readOnly: true,
                onTap: () {},
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: const Icon(Icons.category,
                        size: 16, color: Colors.grey),
                    suffixIcon: IconButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (ctx) {
                                bool isExpanded = false;
                                  // String iconSelected = '';
                                  Color categoryColor=Colors.white;
                                return StatefulBuilder(
                                    builder: (context, setState) {
                                  return AlertDialog(
                                    title: const Text('Create a category'),
                                    content: SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          // const SizedBox(height:16),

                                          // SizedBox(
                                          //   width: MediaQuery.of(context)
                                          //       .size
                                          //       .width,
                                          //   child:
                                             TextFormField(
                                              // controller: dateController,
                                              textAlignVertical:
                                                  TextAlignVertical.center,

                                              decoration: InputDecoration(
                                                  isDense: true,
                                                  filled: true,
                                                  fillColor: Colors.white,
                                                  hintText: ('Name'),
                                                  border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                      borderSide:
                                                          BorderSide.none)),
                                            ),
                                          // ),
                                          const SizedBox(height: 16),
                                          TextFormField(
                                            // controller: dateController,
                                            onTap: () {
                                              setState(() {
                                                isExpanded = isExpanded;
                                              });
                                            },
                                            textAlignVertical:
                                                TextAlignVertical.center,
                                            readOnly: true,
                                            decoration: InputDecoration(
                                                isDense: true,
                                                filled: true,
                                                suffixIcon: const Icon(
                                                  CupertinoIcons.chevron_down,
                                                  size: 12,
                                                ),
                                                fillColor: Colors.white,
                                                hintText: ('Icon'),
                                                border: OutlineInputBorder(
                                                    borderRadius: isExpanded
                                                        ? const BorderRadius
                                                            .vertical(
                                                            top:
                                                                Radius.circular(
                                                                    12))
                                                        : BorderRadius.circular(
                                                            12),
                                                    borderSide:
                                                        BorderSide.none)),
                                          ),
                                          isExpanded
                                              ? Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: 200,
                                                  decoration: const BoxDecoration(
                                                      color: Colors.red,
                                                      borderRadius:
                                                          BorderRadius.vertical(
                                                              bottom: Radius
                                                                  .circular(
                                                                      12))),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: GridView.builder(
                                                        gridDelegate:
                                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                                                crossAxisCount:
                                                                    3,
                                                                mainAxisSpacing:
                                                                    5,
                                                                crossAxisSpacing:
                                                                    5),

                                                        // ListView.builder(
                                                        itemCount:
                                                            myCategoriesIcons
                                                                .length,
                                                        itemBuilder:
                                                            (context, int i) {
                                                          return Container(
                                                            width: 50,
                                                            height: 50,
                                                            decoration: BoxDecoration(
                                                                border: Border
                                                                    .all(),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12),
                                                                image: const DecorationImage(
                                                                    image: AssetImage(
                                                                        'assets/(myCategoriesIcons[i]).png'))),
                                                          );
                                                        }),
                                                  ),
                                                )
                                              : Container(),
                                          const SizedBox(height: 16),

                                          TextFormField(
                                            // controller: dateController,
                                            onTap: () {
                                              showDialog(
                                                  context: context,
                                                  builder: (ctx2) {
                                                  
                                                    return AlertDialog(
                                                      content: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          ColorPicker(
                                                            pickerColor:
                                                               categoryColor,
                                                            onColorChanged:
                                                                (value) {
                                                              setState(() {
                                                                categoryColor =
                                                                    value;
                                                              });
                                                            },
                                                          ),
                                                          SizedBox(
                                                            width:
                                                                double.infinity,
                                                            height: 50,
                                                            child: TextButton(
                                                                onPressed: () {
                                                                  // print(
                                                                  //     categoryColor);
                                                                  Navigator.pop(
                                                                      ctx2);
                                                                },
                                                                style: TextButton.styleFrom(
                                                                    backgroundColor:
                                                                        Colors
                                                                            .black,
                                                                    shape: RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(
                                                                                12))),
                                                                child:
                                                                    const Text(
                                                                  'Save',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          22,
                                                                      color: Colors
                                                                          .white),
                                                                )),
                                                          )
                                                        ],
                                                      ),
                                                    );
                                                  });
                                            },
                                            textAlignVertical:
                                                TextAlignVertical.center,
                                            readOnly: true,
                                            decoration: InputDecoration(
                                              filled: true,
                                              fillColor:
                                                  categoryColor ,
                                              hintText: ('Color'),
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide.none
                                                  ),
                                            ),
                                          ),
                                          const SizedBox(height: 16),
                                              
                                             SizedBox(
                                                width: double.infinity,
                                                height: kToolbarHeight,
                                                child: TextButton(
                                                    onPressed: () {

                                                      Navigator.pop(context);
                                                    },
                                                    style: TextButton.styleFrom(
                                                        backgroundColor: Colors.black,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(12))),
                                                    child: const Text(
                                                      'Save',
                                                      style: TextStyle(fontSize: 22, color: Colors.white),
                                                    )),
                                              )
                                        ],
                                      ),
                                    ),
                                  );
                                });
                              });
                        },
                        icon: const Icon(Icons.add,
                            size: 16, color: Colors.grey)),
                    // label: const Text('Category'),
                    hintText: 'Category',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none)),
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: dateController,
                textAlignVertical: TextAlignVertical.center,
                onTap: () async {
                  DateTime? newDate = await showDatePicker(
                      context: context,
                      initialDate: selectDate,
                      firstDate: DateTime.now(),
                      lastDate: DateTime.now().add(const Duration(days: 365)));

                  if (newDate != null) {
                    setState(() {
                      dateController.text =
                          DateFormat('dd/mm/yy').format(newDate);
                      selectDate = newDate;
                    });
                  }
                },
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon:
                        const Icon(Icons.note, size: 16, color: Colors.grey),
                    hintText: ('Date'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none)),
              ),
              const SizedBox(
                height: 32,
              ),
              SizedBox(
                width: double.infinity,
                height: kToolbarHeight,
                child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                    child: const Text(
                      'Save',
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
