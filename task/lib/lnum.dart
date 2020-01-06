import "dart:math";

void main() {
    var map = {'wow!it is your lucky no a great day ':1, 
    'wow!it is your lucky no enjoy your  day':2, 
    'wow!it is your lucky no have a nice day':3};
    var random = Random(map.keys);
        var r = map[random];
        print(r);
    }
    
    
