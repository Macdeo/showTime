import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:babstrap_settings_screen/babstrap_settings_screen.dart';
import 'package:showtime/Config/configColor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:showtime/Widgets/customBottomNavigation.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


import 'home.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var _currentIndex = 3;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: ConfigColor.lightPrimary,
      appBar: AppBar(
        backgroundColor: ConfigColor.primary,
        automaticallyImplyLeading: false,
        title: Text(
          AppLocalizations.of(context)!.settingTitle,
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold, color: ConfigColor.white),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            switch (_currentIndex) {
              case 0:
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                  ModalRoute.withName('/'),
                );
                break;
              case 3:
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const Profile()),
                  ModalRoute.withName('/'),
                );
                break;
            }
          });
        },
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: [
              ConfigColor.primary,
              ConfigColor.primary,
              ConfigColor.lightPrimary,
            ])),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                height: size.height / 4,
                decoration: BoxDecoration(
                  color: ConfigColor.secondary,
                  borderRadius: BorderRadius.circular(33),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Expanded(
                            child: CircleAvatar(
                              radius: 45,
                              backgroundImage: NetworkImage(
                                  'https://images.pexels.com/photos/13033815/pexels-photo-13033815.jpeg'),
                            ),
                          ),
                          Text(
                            AppLocalizations.of(context)!.userName,
                            style: GoogleFonts.poppins(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: ConfigColor.deepPrimary),
                          )
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 15),
                        child: Container(
                          decoration: BoxDecoration(
                              color: ConfigColor.white,
                              borderRadius: BorderRadius.circular(40)),
                          child: ListTile(
                            leading: const CircleAvatar(
                              radius: 18,
                              backgroundColor: ConfigColor.primary,
                              child: Icon(
                                Icons.edit,
                                color: ConfigColor.white,
                                size: 25,
                              ),
                            ),
                            title: Text(
                              AppLocalizations.of(context)!.modify,
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            subtitle: Text(AppLocalizations.of(context)!.changeData,
                                style: GoogleFonts.poppins()),
                            trailing: const Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 15,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              // User card
              SettingsGroup(
                items: [
                  SettingsItem(
                    onTap: () {},
                    icons: CupertinoIcons.pencil_outline,
                    iconStyle: IconStyle(),
                    title: AppLocalizations.of(context)!.appearance,
                    subtitle: AppLocalizations.of(context)!.customizeApp,
                  ),
                  SettingsItem(
                    onTap: () {},
                    icons: Icons.dark_mode_rounded,
                    iconStyle: IconStyle(
                      iconsColor: Colors.white,
                      withBackground: true,
                      backgroundColor: Colors.red,
                    ),
                    title: AppLocalizations.of(context)!.darkMode,
                    subtitle: AppLocalizations.of(context)!.automatic,
                    trailing: Switch.adaptive(
                      value: true,
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
              SettingsGroup(
                items: [
                  SettingsItem(
                    onTap: () {},
                    icons: Icons.info_rounded,
                    iconStyle: IconStyle(
                      backgroundColor: Colors.purple,
                    ),
                    title: AppLocalizations.of(context)!.about,
                    subtitle: AppLocalizations.of(context)!.learnMoreOnApp,
                  ),
                ],
              ),
              // You can add a settings title
              SettingsGroup(
                items: [
                  SettingsItem(
                    onTap: () {},
                    icons: Icons.exit_to_app_rounded,
                    title: AppLocalizations.of(context)!.signOut,
                  ),
                  SettingsItem(
                    onTap: () {},
                    icons: CupertinoIcons.delete_solid,
                    title: AppLocalizations.of(context)!.deleteAccount,
                    titleStyle: const TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
