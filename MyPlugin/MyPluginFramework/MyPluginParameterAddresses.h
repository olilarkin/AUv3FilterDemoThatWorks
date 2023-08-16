//
//  MyPluginParameterAddresses.h
//  AudioPlugin
//
//  Created by Oliver Larkin on 08/08/2023.
//

#pragma once

#include <AudioToolbox/AUParameters.h>

#ifdef __cplusplus
namespace MyPluginParameterAddress {
#endif

typedef NS_ENUM(AUParameterAddress, MyPluginParameterAddress) {
    gain = 0
};

#ifdef __cplusplus
}
#endif
