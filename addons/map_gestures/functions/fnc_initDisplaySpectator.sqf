#include "script_component.hpp"
/*
 * Author: joko // Jonas
 * Binds Draw EventHandlers to Spectator map.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Example:
 * _mapCtrl call ace_map_gestures_fnc_initDisplaySpectator
 *
 * Public: No
 */
params ["_mapCtrl"];
TRACE_1("initDisplaySpectator",_mapCtrl);

_mapCtrl ctrlAddEventHandler ["Draw", {
    private _targets = [positionCameraToWorld [0, 0, 0]];
    if !(isNull EGVAR(spectator,camFocus)) then {
        _targets pushback EGVAR(spectator,camFocus);
    };
    [_this select 0, _targets] call FUNC(drawMapGestures);
}];
