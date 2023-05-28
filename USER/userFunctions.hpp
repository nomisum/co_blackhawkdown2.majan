/*
*   Hier können eigene Funktionen eingebunden werden.
*   Ist in CfgFunctions included.
*/

#include "grad_grinder\CfgFunctions.hpp"

class blackhawk
   {
       class all
       {
           file = "USER\functions";

           class addModules { postInit = 1; };
           class addZeusShake;
           class createMusicCarrier;
           class brokenRadio;

           class createSmoke;
           class fog;
           class handleDamageVehicle;
           class handleDamageVehicleLocal;
           class intro { postInit = 1; };
           class startIntro;
           class fillCar;
           
           class ownerShipHandler { postInit = 1; };

           class pilotAnim;
           class pilotPiss;
           class putInBodyBag;
           class putInBodyBagAction;
           
           class soundSourceHelper;

           class spawnNote;

           class suicideCar;
           class suicideCarCalculatePath;
           class suicideCarExplode;           
           class suicideCarInit;
           class suicideCarShockwave;
       };
};
