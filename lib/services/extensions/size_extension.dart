import 'package:flutter/material.dart';

extension Screens on BuildContext{

    getWidth({size = 1}){
        return MediaQuery.of(this).size.width / size;
    }
    getHeight({size = 1}){
        return MediaQuery.of(this).size.height / size;
    }
}