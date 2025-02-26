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
    super.key,
    required this.timezone,
    this.layout = Layout.horizontal,
    this.placeHolder = "Select a place",
    this.title,
    this.clearButtonContent = const Text("Clear"),
    this.showClearButton = false,
    this.showSearchBox = true,
    this.showFavoriteItems = true,
    this.onClear,
    this.onChange,
    this.onSave,
    this.dialogBackgroundColor,
    this.dialogHeight,
    this.itemAsString,
    this.searchPlaceHoldder = "Search for a place",
    this.favoriteItems,
  });
  final String timezone;
  // clear button parameters
  final bool showClearButton;
  final Widget clearButtonContent;
  final bool showSearchBox;
  final bool showFavoriteItems;
  final VoidCallback? onClear;
  final ValueChanged<Place?>? onChange;
  final ValueChanged<Place?>? onSave;
  final Color? dialogBackgroundColor;
  final double? dialogHeight;
  final String? itemAsString;
  // title widget
  final Widget? title;
  final String searchPlaceHoldder;
  final List<Place> Function(List<Place>)? favoriteItems;

  final Layout layout;

  final String placeHolder;

  @override
  CSCPickerState createState() => CSCPickerState();
}

class CSCPickerState extends State<CSCPicker> {
  Place? _selectedPlace;
  late final FocusNode _focusNode;

  @override
  void initState() {
    _focusNode = FocusNode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            BlocProvider(
              create: (context) => DatabaseCubit(
                timezone: widget.timezone,
              ),
              child: Expanded(
                child: BlocBuilder<DatabaseCubit, DatabaseState>(
                  builder: (context, state) {
                    return Skeletonizer(
                      enabled: state.places.isEmpty &&
                          state.reccomendedPlaces.isEmpty,
                      child: DropdownSearch<Place>(
                        selectedItem: _selectedPlace,
                        popupProps: PopupPropsMultiSelection.dialog(
                          listViewProps: const ListViewProps(
                            padding: EdgeInsets.zero,
                          ),
                          scrollbarProps: const ScrollbarProps(
                            radius: Radius.circular(10),
                          ),
                          isFilterOnline: true,
                          showSearchBox: true,
                          loadingBuilder: (context, _) {
                            return const SizedBox();
                          },
                          searchDelay: const Duration(milliseconds: 200),
                          searchFieldProps: TextFieldProps(
                            focusNode: _focusNode..requestFocus(),
                            decoration: InputDecoration(
                              labelText: widget.searchPlaceHoldder,
                            ),
                          ),
                          dialogProps: DialogProps(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: widget.dialogBackgroundColor ??
                                const Color(0xFF1C1C20),
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
                            if (item == null) {
                              return const SizedBox();
                            }
                            return ListTile(
                              title: Text(
                                widget.itemAsString ?? item.toString(),
                              ),
                            );
                          },
                          containerBuilder: (
                            BuildContext context,
                            Widget? child,
                          ) {
                            return Container(
                              height: widget.dialogHeight ?? 300,
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
                        clearButtonProps: const ClearButtonProps(
                          isVisible: true,
                        ),
                        asyncItems: (query) async {
                          return await context
                              .read<DatabaseCubit>()
                              .filterPlaces(query);
                        },
                        onChanged: (value) {
                          widget.onChange?.call(value);
                          setState(() {
                            _selectedPlace = value;
                          });
                        },
                        onSaved: (newValue) {
                          widget.onSave?.call(newValue);
                          setState(() {
                            _selectedPlace = newValue;
                          });
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
    );
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }
}
