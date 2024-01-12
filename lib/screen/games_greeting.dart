import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:signconnect_frontend/custom%20widget/button.dart';
import 'package:signconnect_frontend/screen/level.dart';
import 'package:signconnect_frontend/theme.dart';

class GreetingGames extends StatefulWidget {
  const GreetingGames({super.key});

  @override
  State<GreetingGames> createState() => _GreetingGamesState();
}

class _GreetingGamesState extends State<GreetingGames> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){}, 
          icon: Image.asset('assets/icon/backlogo.png', scale: 12,),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
          size: 32,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              appSoftPurple,
              appSoftPurple.withOpacity(0.8),
              appSoftPurple.withOpacity(0.58),
              appSoftPurple.withOpacity(0.45),
              appSoftPurple.withOpacity(0.35),
            ],
            stops: const [
              0.4,
              0.6,
              0.7,
              0.85,
              1
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
               SizedBox(
                child: Container(
                  height: 64,
                  width: 300,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: appPurple,
                    borderRadius: BorderRadius.circular(80)
                  ),
                  child: const Center(
                    child: Text(
                      "My Games",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                     ),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: const Center(
                    child: Text(
                      "Lewati setiap level dengan penuh semangat, dan mari melangkah lebih dekat dengan keahlian bahasa isyarat✨",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white
                      ),
                    ),
                  )
                ),
              const SizedBox(
                height: 32,
              ),
              SizedBox(
                height: 384,
                child: Image.asset('assets/image/maskot.png'),
              ),
              const SizedBox(
                height: 32,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Button(
                  formKey: _formKey, 
                  title: "Mulai", 
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Level()));
                  }
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                padding: const EdgeInsets.only(left: 24, right: 24, bottom: 49),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      side: BorderSide(
                        color: appPurple,
                        width: 2
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      elevation: 0,
                    ),
                    child: Text(
                      "Panduan",
                      style: TextStyle(
                        color: appPurple,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ),
            ],
          ),
      ),
    ));
  }
}