import 'package:daymemory/widget/common/components/tag_clips.dart';
import 'package:daymemory/data/dtos/tag_dto.dart';
import 'package:daymemory/data/dtos/note_dto.dart';
import 'package:daymemory/widget/theme/theme_colors_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

class Toolbar extends StatefulWidget {
  const Toolbar({
    super.key,
    required this.quillController,
    required this.focusNode,
    this.isImageEnabled = false,
    this.isVideoEnabled = false,
    this.location,
    this.onTagClicked,
    this.onImageSelectorClicked,
    this.onVideoSelectorClicked,
    this.onOptionsClicked,
    required this.tags,
  });

  final QuillController quillController;

  final List<TagDto> tags;

  final FocusNode focusNode;

  final LocationDto? location;

  final Future Function(String tag)? onTagClicked;

  final Future Function()? onImageSelectorClicked;

  final Future Function()? onVideoSelectorClicked;

  final Future Function()? onOptionsClicked;

  final bool isImageEnabled;

  final bool isVideoEnabled;

  @override
  State<Toolbar> createState() => _ToolbarState();
}

class _ToolbarState extends State<Toolbar> {
  bool _isTextFormattingVisible = false;
  bool _isTagVisible = false;

  Widget _createToolbar() {
    final themeData = Theme.of(context);

    return Container(
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      //color: Colors.red,
      child: Theme(
        data: themeData.copyWith(
          colorScheme: themeData.colorScheme.copyWith(
            primary: Theme.of(context).extension<ThemeColors>()!.accentColor,
          ),
        ),
        child: CustomToolbar(
          controller: widget.quillController,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_isTagVisible) {
      return Row(
        children: [
          SizedBox(
            width: 40,
            child: GestureDetector(
                child: const Icon(Icons.arrow_back),
                onTap: () async {
                  setState(() {
                    _isTagVisible = !_isTagVisible;
                  });
                }),
          ),
          Expanded(
            child: TagClips(
                tags: widget.tags,
                onTagChanged: (tag) {
                  if (widget.onTagClicked != null) {
                    widget.onTagClicked!(tag!.text);
                  }
                }),
          )
        ],
      );
    }

    if (_isTextFormattingVisible) {
      return Row(
        children: [
          SizedBox(
            width: 40,
            child: GestureDetector(
                child: const Icon(Icons.arrow_back),
                onTap: () async {
                  setState(() {
                    _isTextFormattingVisible = !_isTextFormattingVisible;
                  });
                }),
          ),
          _createToolbar(),
        ],
      );
    }

    return ListView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      children: [
        if (widget.onOptionsClicked != null)
          Container(
            margin: const EdgeInsets.fromLTRB(5, 5, 5, 5),
            child: IconButton(
              icon: const Icon(
                Icons.more_horiz,
              ),
              splashRadius: 20,
              onPressed: () {
                widget.onOptionsClicked!();
              },
            ),
          ),
        SizedBox(
          height: double.infinity,
          width: 2,
          child: Center(
            child: Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              height: double.infinity,
              color: Theme.of(context).extension<ThemeColors>()!.backgroundPrimaryColor,
            ),
          ),
        ),
        if (widget.isImageEnabled)
          Container(
            margin: const EdgeInsets.fromLTRB(5, 5, 5, 5),
            child: IconButton(
              icon: const Icon(
                Icons.photo_camera,
              ),
              splashRadius: 20,
              onPressed: () {
                if (widget.onImageSelectorClicked != null) {
                  widget.onImageSelectorClicked!();
                }
              },
            ),
          ),
        if (widget.isImageEnabled)
          SizedBox(
            height: double.infinity,
            width: 2,
            child: Center(
              child: Container(
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                height: double.infinity,
                color: Theme.of(context).extension<ThemeColors>()!.backgroundPrimaryColor,
              ),
            ),
          ),
        if (widget.isVideoEnabled)
          Container(
            margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
            child: IconButton(
              icon: const Icon(
                Icons.video_camera_back_outlined,
              ),
              splashRadius: 20,
              onPressed: () {
                if (widget.onVideoSelectorClicked != null) {
                  widget.onVideoSelectorClicked!();
                }
              },
            ),
          ),
        if (widget.isVideoEnabled)
          SizedBox(
            height: double.infinity,
            width: 2,
            child: Center(
              child: Container(
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                height: double.infinity,
                color: Theme.of(context).extension<ThemeColors>()!.backgroundPrimaryColor,
              ),
            ),
          ),
        // SizedBox(
        //   width: 40,
        //   child: GestureDetector(
        //       child: const Icon(Icons.tag),
        //       onTap: () async {
        //         final index = widget.quillController.selection.baseOffset;
        //         final length = widget.quillController.selection.extentOffset - index;
        //         widget.quillController.replaceText(index, length, "#", null);
        //         widget.quillController.moveCursorToPosition(index + 1);
        //         setState(() {
        //           _isTagVisible = !_isTagVisible;
        //         });
        //       }),
        // ),
        Center(child: _createToolbar()),
      ],
    );
  }
}

class CustomToolbar extends StatelessWidget {
  const CustomToolbar({super.key, required this.controller});

  final QuillController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        children: [
          QuillToolbarToggleStyleButton(
            attribute: Attribute.h3,
            controller: controller,
            options: QuillToolbarToggleStyleButtonOptions(
              tooltip: "",
              iconData: Icons.title,
              //fillColor: HexColor.fromHex("#D9D9D9"),
            ),
          ),
          const VerticalDivider(
            width: 5,
          ),
          QuillToolbarToggleStyleButton(
            options: const QuillToolbarToggleStyleButtonOptions(),
            controller: controller,
            attribute: Attribute.bold,
          ),
          const VerticalDivider(
            width: 5,
          ),
          QuillToolbarToggleStyleButton(
            options: const QuillToolbarToggleStyleButtonOptions(),
            controller: controller,
            attribute: Attribute.italic,
          ),
          const VerticalDivider(
            width: 5,
          ),
          QuillToolbarToggleStyleButton(
            controller: controller,
            attribute: Attribute.underline,
          ),
          const VerticalDivider(
            width: 5,
          ),
          QuillToolbarToggleStyleButton(
            controller: controller,
            attribute: Attribute.strikeThrough,
          ),
          const VerticalDivider(
            width: 5,
          ),
          QuillToolbarToggleStyleButton(
            controller: controller,
            attribute: Attribute.ol,
          ),
          const VerticalDivider(
            width: 5,
          ),
          QuillToolbarToggleStyleButton(
            controller: controller,
            attribute: Attribute.ul,
          ),
        ],
      ),
    );
  }
}
