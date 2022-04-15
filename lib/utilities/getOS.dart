import 'dart:io' show Platform;

class OperatingSystem {
  
    //Method to determine the current os of the mobile phone:
    
    static void operatingSystem(String os)
    {
        os = Platform.operatingSystem;

        print('Operating Platform is ${os}');
    }
}
  