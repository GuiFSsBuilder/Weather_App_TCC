import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:weather_app_tcc/assets/svgs/svgs.dart';

const backgroundImage = 'assets/images/background.png';

class SceneWrapper extends StatefulWidget {
  final Widget? child;
  final bool showGoBack;
  final bool showLogo;
  final bool scrollable;
  final void Function(String text)? onSearchSubmitted;

  const SceneWrapper({
    Key? key,
    this.child,
    this.showGoBack = false,
    this.showLogo = true,
    this.scrollable = true,
    this.onSearchSubmitted,
  }) : super(key: key);

  @override
  State<SceneWrapper> createState() => _SceneWrapperState();
}

class _SceneWrapperState extends State<SceneWrapper> {
  bool _showSearchInput = false;

  void onPressedSearch() {
    setState(() {
      _showSearchInput = true;
    });
  }

  void onPressedCloseSearch() {
    setState(() {
      _showSearchInput = false;
    });
  }

  Widget? get appBarCenterWidget {
    if (_showSearchInput) {
      final outlineInputBorder = OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(color: Colors.transparent),
      );
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: TextFormField(
          onFieldSubmitted: widget.onSearchSubmitted,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          autofocus: true,
          textInputAction: TextInputAction.search,
          decoration: InputDecoration(
            fillColor: Colors.black.withOpacity(0.2),
            filled: true,
            contentPadding: EdgeInsets.zero,
            enabledBorder: outlineInputBorder,
            focusedBorder: outlineInputBorder,
            errorBorder: outlineInputBorder,
            border: outlineInputBorder,
            hintText: 'Buscar clima por cidade',
            hintStyle: TextStyle(color: Colors.grey.shade400),
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            suffixIcon: IconButton(
              splashRadius: 18,
              onPressed: onPressedCloseSearch,
              icon: const Icon(
                Icons.close,
                color: Colors.grey,
              ),
            ),
          ),
        ),
      );
    }
    return widget.showLogo ? const Logo() : null;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> actions = [];
    if (!_showSearchInput) {
      actions = [
        IconButton(
          onPressed: onPressedSearch,
          icon: const Icon(Icons.search),
          splashRadius: 20,
        ),
        const SizedBox(width: 20),
      ];
    }

    return Scaffold(
      resizeToAvoidBottomInset: widget.scrollable,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent, // Status bar
          statusBarIconBrightness: Brightness.dark,
        ),
        title: appBarCenterWidget,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: widget.showGoBack
            ? IconButton(
                onPressed: Get.back,
                icon: const Icon(AntDesign.arrowleft),
              )
            : null,
        actions: actions,
        titleSpacing: 0,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.pink,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xff62C4FB),
          image: DecorationImage(
            image: AssetImage(backgroundImage),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: widget.scrollable
                ? SingleChildScrollView(child: widget.child)
                : widget.child,
          ),
        ),
      ),
    );
  }
}
