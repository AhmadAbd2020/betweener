import 'package:flutter/material.dart';

final kTextFieldDecoration = InputDecoration(
  label: const Text('Email'),
  hintText: 'Enter Your Email',
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
  ),
);
const kBaseUrl = "http://www.osamapro.online/api";
const kloginUrl = "$kBaseUrl/login";
const kRegisterUrl = "$kBaseUrl/register";
const kUpdateUseLocationUrl = "$kBaseUrl/update/1";
const kActiveShareUrl = "$kBaseUrl/activeShare/2";
const kNearestSenderUrl = "$kActiveShareUrl/nearest/1";
const kLinksUrl = "$kBaseUrl/links";
const kFollowUrl = "$kBaseUrl/follow";
const kSearchUrl = "$kBaseUrl/search";
