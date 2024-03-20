import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/config/colors/colors.dart';
import 'package:hti_indonesia/src/config/font/font.dart';
import 'package:hti_indonesia/src/features/website/data/models/product.dart';
import 'package:hti_indonesia/src/global/functions/currency_formatter/currency_formatter.dart';
import 'package:hti_indonesia/src/global/functions/discount_formatter/discount_formatter.dart';
import 'package:hti_indonesia/src/global/widgets/button/my_button.dart';
import 'package:hti_indonesia/src/global/widgets/text/my_text.dart';
import 'package:hti_indonesia/src/global/widgets/textformfield/my_textformfield.dart';

class MyTable extends StatefulWidget {
  const MyTable({super.key});

  @override
  State<MyTable> createState() => _MyTableState();
}

class _MyTableState extends State<MyTable> {
  final _skuController = TextEditingController();
  final _productNameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _priceController = TextEditingController();
  final _discController = TextEditingController();

  final _headers = [
    'ID',
    'SKU',
    'Product Name',
    'Description',
    'Price',
    'Discount',
    'Final Price',
    'Action'
  ];

  final List<MyProduct> _listProduct = [
    const MyProduct(
      id: '1',
      sku: 'SKU1111',
      productName: 'Shirt Wanita M',
      description: 'Baju wanita ukuran M',
      price: 150000,
      promo: 0.2,
    ),
    const MyProduct(
      id: '2',
      sku: 'SKU2222',
      productName: 'Shirt Pria L',
      description: 'Baju pria ukuran L',
      price: 200000,
      promo: 0.15,
    ),
    const MyProduct(
      id: '3',
      sku: 'SKU3333',
      productName: 'Jeans Denim 35',
      description: 'Jeans Pria Denim ukuran 35',
      price: 200000,
      promo: 0.2,
    ),
    const MyProduct(
      id: '4',
      sku: 'SKU4444',
      productName: 'Topi Bundar',
      description: 'Topi bundar ukuran universal',
      price: 200000,
      promo: 0.2,
    ),
    const MyProduct(
      id: '5',
      sku: 'SKU5555',
      productName: 'Woman Shirt M',
      description: 'Baju wanita panjang M',
      price: 200000,
      promo: 0.2,
    ),
  ];

  @override
  void dispose() {
    _skuController.dispose();
    _productNameController.dispose();
    _descriptionController.dispose();
    _priceController.dispose();
    _discController.dispose();
    super.dispose();
  }

  void _clearController() {
    _skuController.clear();
    _productNameController.clear();
    _descriptionController.clear();
    _priceController.clear();
    _discController.clear();
  }

  void _editProduct() {}

  void _addProduct() {
    setState(() {
      _listProduct.add(
        MyProduct(
          id: (_listProduct.length + 1).toString(),
          sku: _skuController.text,
          productName: _productNameController.text,
          description: _descriptionController.text,
          price: double.parse(_priceController.text),
          promo: double.parse(_discController.text),
        ),
      );
    });
    _clearController();
  }

  Future<void> _showOverlayAdd() {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Add Product'),
          content: SizedBox(
            width: 480,
            child: SingleChildScrollView(
              child: Wrap(
                runSpacing: 16, // spacing between lines, adjust as needed
                children: [
                  MyTextFormField(
                    controller: _skuController,
                    labelText: 'SKU',
                    hintText: 'Input product\'s SKU',
                  ),
                  MyTextFormField(
                    controller: _productNameController,
                    labelText: 'Product Name',
                    hintText: 'Input product\'s name',
                  ),
                  MyTextFormField(
                    controller: _descriptionController,
                    labelText: 'Description',
                    hintText: 'Input product\'s description',
                  ),
                  MyTextFormField(
                    controller: _priceController,
                    labelText: 'Price',
                    hintText: 'Input product\'s price',
                  ),
                  MyTextFormField(
                    controller: _discController,
                    labelText: 'Discount (Optional)',
                    hintText: 'Input discount in decimal. Example: 0.2 for 20%',
                  ),
                ],
              ),
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const MyText(
                text: 'Cancel',
                fontSize: AppFontSize.description,
                color: AppColors.primaryColor,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            SizedBox(
              width: 80,
              child: MyButton(
                labelText: 'Add',
                onPressed: () {
                  _addProduct();
                  Navigator.of(context).pop();
                },
                fontSize: AppFontSize.description,
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            color: AppColors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const MyText(
                  text: "Master Product",
                  fontSize: AppFontSize.heading,
                  fontWeight: AppFontWeight.semiBold,
                ),
                MyButton(
                  labelText: 'Add Product',
                  onPressed: _showOverlayAdd,
                  fontSize: AppFontSize.description,
                  padding: const EdgeInsets.fromLTRB(
                    16,
                    16,
                    16,
                    14,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(16),
            color: AppColors.white,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Table(
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                defaultColumnWidth: const IntrinsicColumnWidth(),
                // columnWidths: const {
                //   0: FixedColumnWidth(32),
                //   1: FixedColumnWidth(240),
                //   2: FixedColumnWidth(240),
                //   3: FixedColumnWidth(240),
                //   4: FixedColumnWidth(96),
                //   5: FixedColumnWidth(240),
                //   6: FixedColumnWidth(240),
                //   7: FixedColumnWidth(240),
                // },
                border: TableBorder.all(
                  color: AppColors.blockColor,
                ),
                children: [
                  TableRow(
                    children: [
                      for (final header in _headers)
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          child: MyText(
                            text: header,
                            fontSize: AppFontSize.body,
                          ),
                        ),
                    ],
                  ),
                  for (int i = 0; i < _listProduct.length; i++)
                    TableRow(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          child: MyText(
                            text: _listProduct[i].id,
                            fontSize: AppFontSize.body,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          child: MyText(
                            text: _listProduct[i].sku,
                            fontSize: AppFontSize.body,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          child: MyText(
                            text: _listProduct[i].productName,
                            fontSize: AppFontSize.body,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          child: MyText(
                            text: _listProduct[i].description,
                            fontSize: AppFontSize.body,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          child: MyText(
                            text: formatCurrency(value: _listProduct[i].price),
                            fontSize: AppFontSize.body,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          child: MyText(
                            text: formatDoubleToPercent(
                                value: _listProduct[i].promo),
                            fontSize: AppFontSize.body,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          child: MyText(
                            text: formatCurrency(
                              value: _listProduct[i].price *
                                  (1 + _listProduct[i].promo),
                            ),
                            fontSize: AppFontSize.body,
                          ),
                        ),
                        TextButton(
                          onPressed: _editProduct,
                          child: const MyText(
                            text: 'Edit',
                            fontSize: AppFontSize.description,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
