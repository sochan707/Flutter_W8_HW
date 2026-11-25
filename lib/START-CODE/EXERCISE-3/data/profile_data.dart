import 'package:flutter/material.dart';

import '../model/profile_tile_model.dart';

ProfileData hamsterProfile = ProfileData(
  name: "Hamster Disaster",
  position: "Flutter Developer",
  avatarUrl: 'lib/START-CODE/EXERCISE-3/assets/hamster.jpg',
  tiles: [
    TileData(icon: Icons.phone, title: "Phone Number", value: "+911 911 911"),
    TileData(icon: Icons.location_on, title: "Address", value: "123 Pew Pew"),
    TileData(icon: Icons.email, title: "Mail", value: "SunFlowerSeed404@gmail.com"),
  ],
);
