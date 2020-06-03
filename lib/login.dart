import 'dart:convert';

import 'package:flutter/material.dart';

// import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Column(
          children: <Widget>[
            SizedBox(),
            TextFormField(),
            SizedBox(),
            TextFormField(),
            Row(
              children: <Widget>[
                Text(),
                Spacer(),
                FlatButton(
                  child: Text(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class User {
  User({
    this.name,
    this.id,
  });

  final String id;
  final String name;

  @override
  int get hashCode => name.hashCode ^ id.hashCode;

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is User && o.name == name && o.id == id;
  }

  @override
  String toString() => 'User(name: $name, id: $id)';

  User copyWith({
    String name,
    String id,
  }) {
    return User(
      name: name ?? this.name,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'id': id,
    };
  }

  static User fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return User(
      name: map['name'],
      id: map['id'],
    );
  }

  String toJson() => json.encode(toMap());

  static User fromJson(String source) => fromMap(json.decode(source));
}
