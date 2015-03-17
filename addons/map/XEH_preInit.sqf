#include "script_component.hpp"

ADDON = false;
LOG(MSG_INIT);

PREP(blueForceTrackingModule);
PREP(blueForceTrackingUpdate);
PREP(determineMapLight);
PREP(determineZoom);
PREP(moduleMap);
PREP(updateMapEffects);

ADDON = true;
