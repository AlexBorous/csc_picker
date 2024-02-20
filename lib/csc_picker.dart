library csc_picker;

import 'package:csc_picker/cubit/database_cubit.dart';
import 'package:csc_picker/model/place.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

enum Layout { vertical, horizontal }

class CSCPicker extends StatefulWidget {
  ///CSC Picker Constructor
  const CSCPicker({
    Key? key,
    this.layout = Layout.horizontal,
    this.showStates = true,
    this.showCities = true,
    this.placeHolder = "Select a place",
    this.title,
    this.clearButtonContent = const Text("Clear"),
    this.showClearButton = false,
    this.showSearchBox = true,
    this.showFavoriteItems = true,
    this.onClear,
    this.onChange,
    this.onSave,
    this.searchPlaceHoldder = "Search for a place",
    this.favoriteItems,
  }) : super(key: key);

  // clear button parameters
  final bool showClearButton;
  final Widget clearButtonContent;
  final bool showSearchBox;
  final bool showFavoriteItems;
  final VoidCallback? onClear;
  final ValueChanged? onChange;
  final ValueChanged<Place>? onSave;
  // title widget
  final Widget? title;
  final String searchPlaceHoldder;
  final List<Place> Function(List<Place>)? favoriteItems;

  ///Parameters to change style of CSC Picker
  final bool showStates, showCities;
  final Layout layout;

  final String placeHolder;

  @override
  CSCPickerState createState() => CSCPickerState();
}

class CSCPickerState extends State<CSCPicker> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                BlocProvider(
                  create: (context) => DatabaseCubit(),
                  child: Expanded(
                    child: BlocBuilder<DatabaseCubit, DatabaseState>(
                      builder: (context, state) {
                        return Skeletonizer(
                          enabled: state.places.isEmpty,
                          child: DropdownSearch<Place>(
                            popupProps: PopupPropsMultiSelection.dialog(
                              listViewProps: ListViewProps(
                                padding: EdgeInsets.zero,
                              ),
                              isFilterOnline: true,
                              showSearchBox: true,
                              searchDelay: const Duration(milliseconds: 200),
                              searchFieldProps: TextFieldProps(
                                decoration: InputDecoration(
                                  labelText: widget.searchPlaceHoldder,
                                ),
                              ),
                              dialogProps: DialogProps(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                backgroundColor: Color(0xFF1C1C20),
                                actions: [
                                  widget.showClearButton
                                      ? TextButton(
                                          onPressed: () {
                                            widget.onClear?.call();
                                          },
                                          child: widget.clearButtonContent,
                                        )
                                      : Container(),
                                ],
                              ),
                              itemBuilder: (BuildContext context, Place? item,
                                  bool isSelected) {
                                return ListTile(
                                  title: Text(item!.toString()),
                                );
                              },
                              containerBuilder: (
                                BuildContext context,
                                Widget? child,
                              ) {
                                return Container(
                                  height: 300,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: child!,
                                );
                              },
                              favoriteItemProps: FavoriteItemProps(
                                showFavoriteItems: widget.showFavoriteItems,
                                favoriteItems: widget.favoriteItems,
                              ),
                            ),
                            dropdownDecoratorProps: DropDownDecoratorProps(
                              dropdownSearchDecoration: InputDecoration(
                                labelText: widget.placeHolder,
                              ),
                            ),
                            clearButtonProps: ClearButtonProps(
                              isVisible: true,
                            ),
                            asyncItems: (query) async {
                              return await context
                                  .read<DatabaseCubit>()
                                  .filterPlaces(query);
                            },
                            onChanged: (value) {
                              widget.onChange?.call(value);
                            },
                            onSaved: (newValue) {
                              widget.onSave?.call(newValue!);
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
