#import <AudioToolbox/AudioToolbox.h>

%hook TFNButton
-(void)_tfn_touchUpInside {
    %orig;
    AudioServicesPlaySystemSound(1519);
}

-(void)_tfn_touchDown {
    %orig;
    AudioServicesPlaySystemSound(1519);
}

%end

%hook UIButton

-(void)touchesBegan {
    %orig;
    AudioServicesPlaySystemSound(1519);
}

%end
