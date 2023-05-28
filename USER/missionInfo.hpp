/*
*   Legt allgemeine Information über die Mission fest.
*/

author = "nomisum für Gruppe Adler";                                               // Missionsersteller
onLoadName = "Co Blackhawk Down";                                                   // Name der Mission
onLoadMission = "";                                                             // Beschreibung der Mission (wird im Ladebildschirm unterhalb des Ladebildes angezeigt)
loadScreen = "data\loadpic.paa";                                                // Ladebild
overviewPicture = "";                                                           // Bild, das in der Missionsauswahl angezeigt wird
overviewText = "";                                                              // Text, der in der Missionsauswahl angezeigt wird



class CfgSFX
{
    sounds[] = {};

   
        
    class sfxsound10
    {
        name = "music1";
        sounds[]={sfxsound};
        sfxsound[]={"USER\sound\music1.ogg",35,1,150,1,1,1,0};
        empty[]= {"",0,0,0,0,0,0,0};
    };

    class sfxsound11
    {
        name = "music2";
        sounds[]={sfxsound};
        sfxsound[]={"USER\sound\music2.ogg",35,1,150,1,1,1,0};
        empty[]= {"",0,0,0,0,0,0,0};
    };
        
    class sfxsound12
    {
        name = "kunduznews";
        sounds[]={sfxsound};
        sfxsound[]={"USER\sound\kunduznews.ogg",35,1,150,1,1,1,0};
        empty[]= {"",0,0,0,0,0,0,0};
    };
        
    class sfxsound13
    {
        name = "SanginnewsBBC";
        sounds[]={sfxsound};
        sfxsound[]={"USER\sound\SanginnewsBBC.ogg",35,1,150,1,1,1,0};
        empty[]= {"",0,0,0,0,0,0,0};
    };

        class sfxsound14
    {
        name = "prayer2";
        sounds[]={sfxsound};
        sfxsound[]={"USER\sound\prayer2.ogg",35,1,150,1,1,1,0};
        empty[]= {"",0,0,0,0,0,0,0};
    };
        
    

     class sfxsound16
    {
        name = "ISISpropoganda";
        sounds[]={sfxsound};
        sfxsound[]={"USER\sound\ISISpropoganda.ogg",35,1,150,1,1,1,0};
        empty[]= {"",0,0,0,0,0,0,0};
    };
        
    

    class sfxsound18
    {
        name = "arab_talking";
        sounds[]={sfxsound};
        sfxsound[]={"USER\sound\arab_talking.ogg",35,1,150,1,1,1,0};
        empty[]= {"",0,0,0,0,0,0,0};
    };

     class sfxsound19
    {
        name = "arabicsong1";
        sounds[]={sfxsound};
        sfxsound[]={"USER\sound\arabicsong1.ogg",35,1,150,1,1,1,0};
        empty[]= {"",0,0,0,0,0,0,0};
    };
        
    class sfxsound20
    {
        name = "arabicsong2";
        sounds[]={sfxsound};
        sfxsound[]={"USER\sound\arabicsong2.ogg",35,1,150,1,1,1,0};
        empty[]= {"",0,0,0,0,0,0,0};
    };

    class piss
    {
        name = "piss";
        sounds[]={sfxsound};
        sfxsound[]={"USER\sound\piss.ogg",10,1,50,1,1,1,0};
        empty[]= {"",0,0,0,0,0,0,0};
    };
};

class CfgVehicles
{
    class sfxsound // class name to be used with createSoundSource
    {
        sound = "sfxsound"; // reference to CfgSFX class
    };

    class sfxsound2 // class name to be used with createSoundSource
    {
        sound = "sfxsound2"; // reference to CfgSFX class
    };

    class sfxsound3 // class name to be used with createSoundSource
    {
        sound = "sfxsound3"; // reference to CfgSFX class
    };

    class sfxsound4 // class name to be used with createSoundSource
    {
        sound = "sfxsound4"; // reference to CfgSFX class
    };

    class sfxsound5 // class name to be used with createSoundSource
    {
        sound = "sfxsound5"; // reference to CfgSFX class
    };

    class sfxsound6 // class name to be used with createSoundSource
    {
        sound = "sfxsound6"; // reference to CfgSFX class
    };

    class sfxsound7 // class name to be used with createSoundSource
    {
        sound = "sfxsound7"; // reference to CfgSFX class
    };

    class sfxsound8 // class name to be used with createSoundSource
    {
        sound = "sfxsound8"; // reference to CfgSFX class
    };

    class sfxsound9 // class name to be used with createSoundSource
    {
        sound = "sfxsound9"; // reference to CfgSFX class
    };

    class sfxsound10 // class name to be used with createSoundSource
    {
        sound = "sfxsound10"; // reference to CfgSFX class
    };

    class sfxsound11 // class name to be used with createSoundSource
    {
        sound = "sfxsound11"; // reference to CfgSFX class
    };

    class sfxsound12 // class name to be used with createSoundSource
    {
        sound = "sfxsound12"; // reference to CfgSFX class
    };

    class sfxsound13 // class name to be used with createSoundSource
    {
        sound = "sfxsound13"; // reference to CfgSFX class
    };

    class sfxsound14 // class name to be used with createSoundSource
    {
        sound = "sfxsound14"; // reference to CfgSFX class
    };

    class sfxsound15 // class name to be used with createSoundSource
    {
        sound = "sfxsound15"; // reference to CfgSFX class
    };

    class sfxsound16 // class name to be used with createSoundSource
    {
        sound = "sfxsound16"; // reference to CfgSFX class
    };

    class sfxsound17 // class name to be used with createSoundSource
    {
        sound = "sfxsound17"; // reference to CfgSFX class
    };

    class sfxsound18 // class name to be used with createSoundSource
    {
        sound = "sfxsound18"; // reference to CfgSFX class
    };

    class sfxsound19 // class name to be used with createSoundSource
    {
        sound = "sfxsound19"; // reference to CfgSFX class
    };

    class sfxsound20 // class name to be used with createSoundSource
    {
        sound = "sfxsound20"; // reference to CfgSFX class
    };

    class piss // class name to be used with createSoundSource
    {
        sound = "piss"; // reference to CfgSFX class
    };


};