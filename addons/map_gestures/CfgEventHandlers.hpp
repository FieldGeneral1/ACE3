class Extended_PreStart_EventHandlers {
    class ADDON {
        init = QUOTE(call COMPILE_FILE(XEH_preStart));
    };
};

class Extended_PreInit_EventHandlers {
    class ADDON {
        init = QUOTE(call COMPILE_FILE(XEH_preInit));
    };
};

class Extended_PostInit_EventHandlers {
    class ADDON {
        init = QUOTE(call COMPILE_FILE(XEH_postInit));
    };
};

class Extended_DisplayLoad_EventHandlers {
    class RscDisplayCurator {
        ADDON = QUOTE(((_this select 0) displayCtrl 50) call FUNC(initDisplayCurator));
    };
    class RscDisplayEGSpectator {
        ADDON = QUOTE((((_this select 0) displayCtrl 63909) controlsGroupCtrl 62609) call FUNC(initDisplaySpectator));
    };
    class RscDiary {
        ADDON = QUOTE(((_this select 0) displayCtrl 51) call FUNC(initDisplayDiary));
    };
};
