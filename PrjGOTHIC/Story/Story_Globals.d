
const int T_MEGA = 300;
const int T_MAX = 200;
const int T_HIGH = 120;
const int T_MED = 90;
const int T_LOW = 60;
var int Saturas_KlaueInsMeer;
var int FoundDeadWilliam;
var int MIS_Eremit_Klamotten;
var int Diego_angekommen;
var int Diego_Nostalgie;
var int Diego_IsDead;
var int PlayerTalkedToSkipNW;
var int PlayerTalkedToGregNW;
var int HP_Ring_1_Equipped;
var int HP_Ring_2_Equipped;
var int HP_Amulett_Equipped;
var int HP_Artefakt_Effekt;
var int MA_Ring_1_Equipped;
var int MA_Ring_2_Equipped;
var int MA_Amulett_Equipped;
var int MA_Artefakt_Effekt;
var int STR_Ring_1_Equipped;
var int STR_Ring_2_Equipped;
var int STR_Amulett_Equipped;
var int STR_Artefakt_Effekt;
var int LeatherArmor_Equipped;
var int SLDArmor_Equipped;
var int NOVArmor_Equipped;
var int KDFArmor_Equipped;
var int MILArmor_Equipped;
var int MCArmor_Equipped;
var int KDF01_Equipped;
//var int KDF02_Equipped;
//var int KDF03_Equipped;
var int MIL01_Equipped;
//var int MIL02_Equipped;
//var int MIL03_Equipped;
var int NOV01_Equipped;
var int SLD01_Equipped;
//var int SLD02_Equipped;
//var int SLD03_Equipped;
var int Leather01_Equipped;
//var int Leather02_Equipped;
//var int Rhobar_Equipped;
var int MC_Equipped;
var int wispskill_level;
var int MIS_Addon_Cavalorn_TheHut;
var int MIS_Addon_Cavalorn_KillBrago;
var int MIS_Addon_Cavalorn_Letter2Vatras;
var int MIS_Addon_Lester_PickForConstantino;
var int MIS_Addon_Greg_BringMeToTheCity;
var int MIS_Addon_Lares_Ornament2Saturas;
var int Lares_Angekommen;
var int Lares_Distracted;
var int Lares_ArrivedToForest;
var int SC_GotLaresRing;
var int MIS_Addon_Saturas_BringRiordian2Me;
var int MIS_Addon_Nefarius_BringMissingOrnaments;
var int MIS_Addon_Martin_GetRangar;
var int MIS_Addon_Vatras_Go2Daron;
var int MIS_Addon_Daron_GetStatue;
var int MIS_Addon_Cord_Look4Patrick;
var int MIS_Addon_Farim_PaladinFisch;
var int MIS_Addon_Cavalorn_GetOrnamentFromPAL;
var int MIS_Lares_BringRangerToMe;
var int MIS_Addon_Lares_ComeToRangerMeeting;
var int MIS_Addon_Greg_RakeCave;
var int MIS_Addon_Greg_RakeCave_Day;
var int MIS_Addon_Baltram_Paket4Skip;
var int MIS_Addon_Erol_BanditStuff;
const int MinimumPassagePlants = 10;
var int SaturasFirstMessageOpened;
//var int Vatras_SC_Liar;
var int Vatras_ToMartin;
var int SC_GotWisp;
var int Vatras_GehZuLares;
var int Lares_RangerHelp;
var int LaresGuide_ZumPortal;
var int LaresGuide_ZuOnar;
var int LaresGuide_OrnamentForest;
var int Andre_Knows_MartinEmpfehlung;
var int SC_KnowsKlosterTribut;
var int Pedro_NOV_Aufnahme_LostInnosStatue_Daron;
var int SCKnowsBaltramAsPirateTrader;
var int SC_GotRangar;
//var int SC_MeetsGregTime;
var int GregLocation;
const int Greg_Farm1 = 0;
const int Greg_Taverne = 1;
const int Greg_Bigcross = 2;
const int Greg_Dexter = 3;
var int SC_KnowsGregsSearchsDexter;
var int SC_KnowsConnectionSkipGreg;
var int SC_SawGregInTaverne;
var int Greg_SuchWeiter;
var int Skip_Rum4Baltram;
var int Knows_GregsHut;
var int Francis_ausgeschissen;
var int MIS_Brandon_BringHering;
var int Lares_CanBringScToPlaces;
var int SC_HearedAboutMissingPeople;
var int SC_KnowsDexterAsKidnapper;
var int Ranger_SCKnowsDexter;
var int Dexter_KnowsPatrick;
var int SCKnowsFarimAsWilliamsFriend;
//var int SCKnowsSkipAsKidnapper;
var int SCKnowsMissingPeopleAreInAddonWorld;
//var int SCKnowsExactlyWhereMissingPeopleAre;
//var int SCMetMissingPeople;
var int MissingPeopleReturnedHome;
var int MIS_Akil_BringMissPeopleBack;
var int MIS_Bengar_BringMissPeopleBack;
var int MIS_Addon_Andre_MissingPeople;
var int MIS_Addon_Vatras_WhereAreMissingPeople;
var int MIS_Bromor_LuciaStoleGold;
var int Bromor_Hausverbot;
var int MIS_Thorben_BringElvrichBack;
var int Elvrich_GoesBack2Thorben;
var int MIS_LuciasLetter;
//var int MIS_Bartok_MissingTrokar;
var int SC_KnowsLuciaCaughtByBandits;
var int Elvrich_SCKnowsPirats;
var int Dexter_NoMoreSmallTalk;
var int Saturas_WillVertrauensBeweis;
var int SC_GotPortalTempelWalkthroughKey;
var int SC_KnowsRanger;
var int SC_IsRanger;
var int SaturasKnows_SC_IsRanger;
//var int SCIsWearingRangerRing;
var int RangerRingIsLaresRing;
var int RangerRingIsMyRing;
var int RangerRingIsLanceRing;
var int SC_KnowsCordAsRangerFromLares;
var int SC_KnowsCordAsRangerFromLee;
var int Cavalorn_RangerHint;
var int Baltram_Exchange4Lares;
var int SC_KnowsBaltramAsRanger;
var int Lares_GotRingBack;
var int Lares_HaltsMaul;
var int RangerHelp_gildeSLD;
var int RangerHelp_gildeMIL;
var int RangerHelp_gildeKDF;
var int RangerHelp_LehmarKohle;
var int RangerHelp_OrnamentForest;
var int Orlan_RangerHelpZimmer;
var int Cord_RangerHelp_GetSLD;
var int Cord_RangerHelp_Fight;
var int Cord_RangerHelp_Fight_Trick;
var int Cord_RangerHelp_TorlofsProbe;
var int RangerMeetingRunning;
var int Lares_ComeToRangerMeeting;
var int Lares_TakeFirstMissionFromVatras;
var int MIS_Vatras_FindTheBanditTrader;
var int MIS_Martin_FindTheBanditTrader;
var int BanditTrader_Lieferung_Gelesen;
var int Fernando_HatsZugegeben;
var int Fernando_ImKnast;
//var int SC_ShowedRangerArmor;
var int Orlan_KnowsSCAsRanger;
//var int Orlan_Hint_Lares;
var int Martin_KnowsFarim;
var int MadKillerCount;
var int VatrasPissedOffForever;
var int VatrasMadKillerCount;
var int RitualRingRuns;
//var int SC_KnowsOrnament;
var int ornament_switched_bigfarm;
var int ornament_switched_farm;
var int ornament_switched_forest;
var int SCUsed_AllNWTeleporststones;
var int sc_saw_ornament_map;
var int Lord_Hagen_GotOrnament;
var int Hagen_BringProof;
var int Vatras2Saturas_FindRaven_Open;
var int SCUsed_TELEPORTER;
var int SCUsed_NW_TELEPORTSTATION_CITY;
var int SCUsed_NW_TELEPORTSTATION_TAVERNE;
var int SCUsed_NW_TELEPORTSTATION_MAYA;
var int SCUsed_ADW_TELEPORTSTATION_PORTALTEMPEL;
var int SCUsed_ADW_TELEPORTSTATION_ADANOSTEMPEL;
var int SCUsed_ADW_TELEPORTSTATION_SOUTHEAST;
var int SCUsed_ADW_TELEPORTSTATION_SOUTHWEST;
var int SCUsed_ADW_TELEPORTSTATION_PIRATES;
//var int SCUsed_ADW_TELEPORTSTATION_RAVENTELEPORT_OUT;
var int SCUsed_ADW_TELEPORTSTATION_PIRATES_JACKSMONSTER;
var int SC_ADW_ActivatedAllTelePortStones;
var int NefariusADW_Talk2Saturas;
var int MIS_ADDON_Myxir_GeistBeschwoeren;
var int SC_KnowsRavensGoldmine;
var int StPl_nDocID;
//var int Myxir_CITY_IstDa;
var int SC_OpenedCavalornsBeutel;
var int MIS_Saturas_LookingForHousesOfRulers;
var int MIS_Riordian_HousesOfRulers;
var int entered_addonworld;
var int VatrasCanLeaveTown_Kap3;
//var int VatrasAbloeseIstDa;
var int Ghost_SCKnowsHow2GetInAdanosTempel;
var int Saturas_KnowsHow2GetInTempel;
var int MIS_ADDON_Saturas_GoToRaven;
var int Saturas_RiesenPlan;
var int SC_Knows_WeaponInAdanosTempel;
//var int Saturas_KnowsWeaponIsInAdanosTempel;
var int SC_SummonedAncientGhost;
var int SC_TalkedToGhost;
var int RavenIsInTempel;
var int GhostAttackWarn;
var int SC_TookRhademesTrap;
var int SC_TalkedToRhademAfter;
var int RavenIsDead;
var int BeliarsWeaponSpecialDamage;
var int BeliarDamageChance;
var int SC_FailedToEquipBeliarsWeapon;
var int BeliarsWeaponUpgrated;
var int Player_HasTalkedToBanditCamp;
var int Franco_Exit;
var int MIS_HlpLogan;
var int MIS_HlpEdgor;
var int Logan_Inside;
var int Edgor_Teach;
//var int Sumpfi_Counter;
var int LennarPaket_Open;
var int Emilio_TellAll;
var int Paul_TellAll;
var int Finn_TellAll;
var int Finn_Petzt;
var int Senyan_Called;
var int Huno_zuSnaf;
var int Huno_MEGA_Angepisst;
var int Snaf_Tip_Senyan;
var int Ramon_News;
var int MIS_Judas;
//var int Judas_Counter;
var int Bodyguard_Killer;
var int Snaf_Rechnung;
var int Snaf_Einmal;
var int MIS_SnafHammer;
//var int Snaf_Amount;
//var int Knows_Finn;
//var int Knows_Huno;
//var int Knows_Fisk;
//var int Knows_Esteban;
//var int Knows_Senyan;
//var int Finn_CONTRA;
//var int Paul_CONTRA;
var int Senyan_Erpressung;
//var int Senyan_CONTRA;
//var int Senyan_Gold;
var int Erol_Bonus;
//var int PC_KnowsRedStone;
var int MIS_Huno_Stahl;
var int MIS_Lennar_Lockpick;
const int Lennar_picklock_amount = 12;
//var int Lockpick_gegeben;
//var int Lennar_Trust;
//var int Senyan_Start;
var int Huno_ArmorCheap;
var int BDT_Armor_H_Value;
//var int SC_KnowsFortunoInfos;
var int Torwache_Greetings;
var int MIS_Send_Buddler;
var int Player_SentBuddler;
//var int Juan_Parole;
var int Knows_MCELIXIER;
var int BDT_100018_Einmal;
var int BDT_100018_Tells;
var int MIS_BloodwynRaus;
var int Crimson_SayBeliar;
//var int Patrick_trust;
var int Sklaven_Flucht;
//var int Sklaven_weg;
var int Ready_Togo;
//var int knows_losung;
//var int knows_petze;
//var int Tom_Angebot;
var int Tom_Tells;
var int Green_Extrem;
var int MIS_Fortuno_Delusion;
var int Fortuno_Info;
var int Fortuno_Geheilt_01;
//var int RemoveSklaven;
var int BDT_13_Nerver;
var int BDT_13_Kill;
var int BDT_13_einmal;
var int BDT_1_Ausbuddeln;
var int Minecrawler_Killed;
var int Bloodwyn_Spawn;
var int Hero_HackChance;
var int Truemmer_Count;
var int Knows_Truemmerschlag;
var int Learn_by_doing;
var int GoldMob_01_Amount;
var int GoldMob_02_Amount;
var int GoldMob_03_Amount;
var int GoldMob_04_Amount;
var int GoldMob_05_Amount;
var int GoldMob_06_Amount;
var int GoldMob_07_Amount;
var int GoldMob_08_Amount;
var int GoldMob_09_Amount;
var int GoldMob_10_Amount;
var int GoldMob_11_Amount;
var int GoldMob_12_Amount;
var int GoldMob_13_Amount;
var int GoldMob_14_Amount;
var int GoldMob_15_Amount;
var int GoldMob_16_Amount;
var int GoldMob_17_Amount;
var int GoldMob_18_Amount;
var int GoldMob_19_Amount;
var int GoldMob_20_Amount;
var int GoldMob_21_Amount;
const int GoldMob_01_AmounT_MAX = 5;
const int GoldMob_02_AmounT_MAX = 5;
const int GoldMob_03_AmounT_MAX = 5;
const int GoldMob_04_AmounT_MAX = 5;
const int GoldMob_12_AmounT_MAX = 7;
const int GoldMob_05_AmounT_MAX = 9;
const int GoldMob_06_AmounT_MAX = 9;
const int GoldMob_07_AmounT_MAX = 9;
const int GoldMob_08_AmounT_MAX = 15;
const int GoldMob_09_AmounT_MAX = 15;
const int GoldMob_10_AmounT_MAX = 18;
const int GoldMob_11_AmounT_MAX = 18;
const int GoldMob_13_AmounT_MAX = 12;
const int GoldMob_14_AmounT_MAX = 13;
const int GoldMob_15_AmounT_MAX = 14;
const int GoldMob_16_AmounT_MAX = 15;
const int GoldMob_17_AmounT_MAX = 16;
const int GoldMob_18_AmounT_MAX = 17;
const int GoldMob_19_AmounT_MAX = 18;
const int GoldMob_20_AmounT_MAX = 19;
const int GoldMob_21_AmounT_MAX = 19;
//var int MIS_LookForMorgan;
//var int MIS_MorganRumBringen;
var int MIS_KrokoJagd;
var int AlligatorJack_KrokosKilled;
//var int AlligatorJackTrustYou;
var int AlligatorJack_JagdStart;
//var int AlligatorJack_PlayersTriesAlone;
var int SC_Knows_JuanMurderedAngus;
var int MIS_AlligatorJack_BringMeat;
var int MIS_ADDON_SkipsGrog;
var int MIS_Addon_MorganLurker;
//var int SC_MadeStunt;
var int TowerBanditsDead;
var int AllCanyonRazorDead;
//var int Francis_100_Told;
//var int Francis_500_Told;
var int Francis_HasProof;
//var int MIS_Francis_FreeBDTTower;
var int MIS_Henry_FreeBDTTower;
var int Knows_HenrysEntertrupp;
//var int Henry_GetPartyMember;
//var int Francis_NoGrog;
var int Owen_ComesToHenry;
//var int Owen_Sc_FoundMalcom;
//var int malcomexident;
var int Malcom_Accident;
var int Malcom_Accident_Deadly;
var int MIS_Owen_FindMalcom;
var int MIS_Henry_HolOwen;
//var int Bill_addon_deal;
var int MIS_Addon_Morgan_SeekTraitor;
//var int MIS_Addon_JoinHenrysCrew;
//var int Henrys_CrewCount;
//var int MIS_Addon_JoinMorgansCrew;
var int MalcomBotschaft;
var int MIS_ADDON_GARett_BringKompass;
var int MIS_Addon_Bill_SearchAngusMurder;
//var int MIS_Addon_Bill_SearchEsteban;
//var int MIS_Addon_Bill_KillEsteban;
//var int MIS_ADDON_PIR_6_Duell;
//var int MIS_ADDON_PIR_6_BringGrog;
//var int MIS_Addon_PIR_7_BringJoint;
//var int MIS_Addon_PIR_7_BringGrog;
var int Greg_GaveArmorToBones;
//var int PlayerKnowsAboutMIne;
//var int mis_bones_scoutbandits;
//var int MIS_DuellWithGreg;
var int GregIsBack;
//var int Read_JuansText;
//var int Skip_Addon_PlayerKnowsAboutBigBusiness;
var int MIS_Addon_Greg_ClearCanyon;
var int CanyonRazorBodyCount;
var int MIS_Greg_ScoutBandits;
//var int SC_KnowsGoldmine;
var int Player_KnowsSchnellerHering;
//var int MIS_Addon_HenryCrewMember;
//var int MIS_Addon_MorganCrewMember;
//var int MIS_ADDON_ProofHenryCrew;
//var int MIS_Addon_ProofHenryCrew_Count;
//var int MIS_ADDON_ProofMorganCrew;
//var int MIS_Addon_ProofMorganCrew_Count;
var int Knows_LousHammer;
var int Knows_Schlafhammer;
var int Knows_SchnellerHering;
//var int Knows_RuebenSchnaps;
//var int Knows_VinoSchnaps;
//var int Knows_PiratenSchnaps;
//var int Knows_Magierschnaps;
//var int Knows_Sumpfkrautschnaps;
var int Knows_Banditenaxt;
var int StuntBonus_Once;
var int Cavalorn_Addon_TeachPlayer;
var int Myxir_Addon_TeachPlayer;
var int AlligatorJack_Addon_TeachPlayer;
//var int Francis_Addon_TeachPlayer;
var int Henry_Addon_TeachPlayer;
var int Morgan_Addon_TeachPlayer;
var int Erol_Addon_TeachPlayer;
//var int Riordian_Addon_TeachPlayer;
var int Riordian_Addon_TeachWisp;
var int Riordian_Addon_TeachWisp_NoPerm;
var int Riordian_Addon_TeachAlchemy;
var int Riordian_Addon_TeachAlchemy_NoPerm;
var int Saturas_Addon_TeachCircle;
var int Merdarion_Addon_TeachMana;
var int Nefarius_Addon_TeachRunes;
var int Bill_Addon_TeachPickPocket;
var int Kapitel;
var int Lee_Schulden;
var int Hagen_Schulden;
var int Andre_Schulden;
var int Garond_Schulden;
var int Parlan_Schulden;
const int Theftdiff = 10;
var int TheftDexGlob;
var int TheftGoldGlob;
var int DG_gefunden;
var int Bdt13_Friend;
var int Bdt13_Dexter_verraten;
var int Bdt_1013_FromCavalorn;
var int Bdt_1013_ToCavalorn;
var int Bdt_1013_Away;
var int Knows_Dexter;
var int MIS_Steckbriefe;
var int Wert_LobartsRuestung;
var int Lobart_Kleidung_Verkauft;
var int Lobart_Kleidung_gestohlen;
var int Lobart_AgainstKing;
var int MIS_Maleth_Bandits;
var int MIS_Vino_Wein;
var int MIS_Lobart_Rueben;
var int MIS_Lobart_RuebenToHilda;
var int MIS_Hilda_PfanneKaufen;
var int MIS_Hilda_PfanneKaufen_Day;
var int Hilda_Stew_Day;
var int MIS_LobartKillBugs;
var int MIL_Aufnahme;
var int SLD_Aufnahme;
var int KDF_Aufnahme;
var int NOV_Aufnahme;
var int Player_IsApprentice;
const int APP_NONE = 0;
const int APP_Bosper = 1;
const int APP_Harad = 2;
const int APP_Constantino = 3;
var int MIS_Apprentice;
var int Bosper_Lehrling_Day;
var int Harad_Lehrling_Day;
var int Constantino_Lehrling_Day;
var int MIS_Harad_Orc;
var int Harad_HakonMission;
var int MIS_HakonBandits;
var int MIS_HakonBanditsPay;
var int MIS_Constantino_BringHerbs;
var int MIS_Constantino_Mushrooms;
var int Constantino_DunkelpilzCounter;
//var int Points_Farm;
//var int Points_Monastery;
var int Mil_310_Scheisse_erzaehlt;
var int Player_TalkedAboutDragons;
var int Player_KnowsLordHagen;
var int Hagen_FriedenAbgelehnt;
var int Mil_310_schonmalreingelassen;
var int Mil_333_schonmalreingelassen;
var int Lothar_Regeln;
var int PlayerEnteredCity;
var int LesterMovedToXardas;
var int XardasKnowsAboutProof;
var int Canthar_Gefallen;
var int Canthar_Sperre;
//var int Canthar_WiederRaus;
var int Canthar_Pay;
const int Canthar_Gold = 500;
var int Andre_EyeInnos;
const int Kopfgeld = 100;
var int Andre_FoundThieves_KilledByMilitia;
var int Andre_FoundThieves_Reported;
var int MIS_AndreHelpLobart;
//var int Andre_GivesChance;
//var int Andre_Bonus;
var int Rengaru_Ausgeliefert;
var int Nagur_Ausgeliefert;
var int Halvor_Ausgeliefert;
var int Canthar_Ausgeliefert;
var int Sarah_Ausgeliefert;
var int Fernando_Ausgeliefert;
var int Undercover_Failed;
const int Andre_Sold = 200;
var int MIS_Andre_REDLIGHT;
var int MIS_Andre_WAREHOUSE;
//var int MIS_Andre_FISH;
var int MIS_Andre_Peck;
//var int MIS_AndreGotThief;
var int MIS_Baltram_ScoutAkil;
var int MIS_Canthars_KomproBrief;
var int MIS_Canthars_KomproBrief_Day;
//var int MIS_Meldor_BringGold;
//var int MIS_Meldor_BringGold_Day;
var int MIS_Coragon_Silber;
//var int Regis_Ring;
var int Pablo_AndreMelden;
var int Alrik_Kaempfe;
var int Alrik_ArenaKampfVerloren;
var int Alrik_VomSchwertErzaehlt;
var int MIS_Alrik_Sword;
var int MIS_Bosper_Bogen;
var int MIS_Bosper_WolfFurs;
var int Abuyin_Zukunft;
var int Abuyin_Erzaehlt;
var int Abuyin_Honigtabak;
var int Abuyin_Score;
var int Bromor_Pay;
var int Nadja_Nacht;
//var int Nadja_tot;
var int Diebesgilde_Okay;
var int Charm_Test;
var int MIS_Ignaz_Charm;
var int Alchemy_Explain;
var int MIS_Andre_GuildOfThieves;
var int Knows_Halvor;
var int Betrayal_Halvor;
//var int Halvor_Deal;
var int Kardif_Deal;
var int MIS_Nagur_Bote;
var int Nagur_Deal;
var int NagurDay;
var int Knows_Attila_Wer;
var int Knows_Attila_Was;
var int Jora_Dieb;
var int Jora_Gold;
//var int Thorben_Deal;
var int Dietrichgeben;
//var int Wulfgar_First;
var int Cassia_Day;
var int MIS_CassiaKelche;
var int Join_Thiefs;
var int Cassia_Frist;
var int Cassia_Gildencheck;
var int Ramirez_Cost;
//var int Ramirez_Sextant;
var int MIS_RamirezSextant;
var int Ramirez_Zweimal;
//var int Jesper_Cost;
var int MIS_CassiaRing;
var int Knows_SecretSign;
var int Halvor_Score;
var int Halvor_Day;
var int Attila_Key;
var int Edda_Day;
var int Edda_Schlafplatz;
var int Knows_Ork;
var int MIS_Matteo_Gold;
var int Knows_Matteo;
var int Gritta_GoldGiven;
var int Thorben_GotGold;
var int MIS_Thorben_GetBlessings;
var int Vatras_Segen;
var int Daron_Segen;
var int Vatras_Return;
//var int MIS_PayAlwin;
var int FellanGeschlagen;
var int MIS_AttackFellan;
//var int Vatras_Trust;
//var int Vatras_Influence;
var int Vatras_Chance;
var int Vatras_Blessing;
var int Vatras_First;
var int Vatras_Second;
var int Vatras_Third;
var int MIS_Vatras_Message;
var int Mil_309_News;
var int Mil_305_schonmalreingelassen;
var int RangarToldAboutPaladins;
var int RangarToldAboutOrc;
var int MIS_Garvell_Infos;
var int Tell_Garvell;
var int KnowsPaladins_Ore;
var int Lares_Guide;
var int MIS_Lee_Friedensangebot;
var int MIS_Bennet_BringOre;
var int Sekob_Pachtbezahlt;
var int MIS_Sekob_RedeMitOnar;
var int Sekob_RoomFree;
var int Torlof_TheOtherMission_TooLate;
var int MIS_Cipher_BringWeed;
var int MIS_Cipher_Paket;
var int Dar_Dieb;
var int Dar_Verdacht;
var int Dar_LostAgainstCipher;
var int MIS_Thekla_Paket;
var int Sylvio_MenDefeated;
var int Sylvio_angequatscht;
var int Sld_Duelle_gewonnen;
var int Torlof_GenugStimmen;
var int Onar_Approved;
var int Lee_SendToOnar;
var int sold;
var int Onar_WegenSldWerden;
//var int Onar_WegenPepe;
var int Onar_WegenSekob;
var int Maria_MehrGold;
var int MIS_Maria_BringPlate;
var int MIS_Torlof_Dmt;
var int Wolf_ProduceCrawlerArmor;
var int MIS_ThiefGuild_sucked;
//var int Knows_Ruga_Answer;
//var int Miliz_Points;
var int Nadja_Money;
var int Knows_Borka_Dealer;
var int Borka_Deal;
var int Nadja_Victim;
//var int GernodsDrink;
//var int GernodHappy;
var int MIS_DragomirsArmbrust;
var int MIS_KlosterArbeit;
var int Kloster_Punkte;
var int MIS_NeorasPflanzen;
var int MIS_NeorasRezept;
var int MIS_ParlanFegen;
var int NOV_Helfer;
var int MIS_GoraxEssen;
var int Gorax_Gold;
var int Wurst_Gegeben;
var int MIS_MardukBeten;
var int MIS_IsgarothWolf;
var int Sergio_Sends;
var int Sergio_Follow;
var int Parlan_Erlaubnis;
var int Isgaroth_Segen;
var int Parlan_Sends;
var int MIS_GoraxWein;
var int MIS_KarrasVergessen;
const int Summe_Kloster = 1000;
var int Fire_Contest;
var int Opolos_Rezept;
var int Babo_Training;
//var int MIS_GuardSheep;
//var int MIS_PickHerb;
//var int MIS_SweepLibrary;
//var int ShrineconfessCost;
var int knows_fire_contest;
var int MIS_HelpDyrian;
var int MIS_HelpBabo;
var int MIS_HelpOpolos;
var int Wegelagerer_Surprise;
var int mis_schnitzeljagd;
var int mis_golem;
var int mis_rune;
var int MIS_RescueGorn;
//const int CostRescueGorn = 500;
var int Canthar_GotMe;
//var int Canthar_Passierschein_Accept;
//var int Canthar_Passierschein_Accept_Day;
//var int Canthar_AccusePlayerAndre;
//var int Canthar_AccusePlayerAndre_Day;
var int Sentenza_GoldTaken;
var int Torlof_SentenzaCounted;
var int MIS_Jarvis_SldKO;
var int MIS_Fester_KillBugs;
var int Festers_Giant_Bug_Killed;
var int BusterLOG;
var int BennetLOG;
var int MIS_Pepe_KillWolves;
var int MIS_Pepe_KickBullco;
var int MIS_Torlof_HolPachtVonSekob;
var int MIS_Torlof_BengarMilizKlatschen;
var int MIS_Gaan_Snapper;
var int MIS_Sekob_Bronko_eingeschuechtert;
var int MIS_Balthasar_BengarsWeide;
var int MIS_Gaan_Deal;
var int MIS_Rukhar_Wettkampf;
var int MIS_Rukhar_Wettkampf_Day;
var int Rukhar_Won_Wettkampf;
var int Rukhar_Einsatz;
var int Rukhar_Gewinn;
//var int Soeldner_Points;
//var int Sentenza_Friend;
//var int Buster_Friend;
var int Liesel_Giveaway;
//var int MIS_Gorax_Ambient;
//var int Thief_Absolution;
var int Hammer_Taken;
//var int Igaraz_Anger;
var int Igaraz_Wait;
//var int MIS_Gorax_Bote;
//var int Paket_Opend;
var int Goraxday;
var int MIS_Jack_KillLighthouseBandits;
var int MIS_Wasili_BringOldCoin;
var int MIS_Sagitta_Herb;
var int Lutero_Krallen;
var int Fernando_Erz;
var int MIS_ScoutMine;
var int MIS_Fajeth_Kill_Snapper;
//var int MIS_Fed_GetRidOfTengron;
var int MIS_BaltramTrade;
var int MIS_Engor_BringMeat;
var int Meat_Counter;
const int Meat_Amount = 24;
var int mis_oldworld;
var int MIS_Marcos_Jungs;
//var int MIS_Brutus_Kasse;
var int MIS_ReadyForChapter3;
var int Marcos_einmalig;
var int Dobar_einmalig;
var int Brutus_einmalig;
var int Garond_Kerkerauf;
var int TengronRing;
var int OricBruder;
var int MIS_Kervo_KillLurker;
var int MIS_NovizenChase;
var int MIS_Pyrokar_GoToVatrasInnoseye;
var int MIS_Xardas_GoToVatrasInnoseye;
var int MIS_RitualInnosEyeRepair;
var int MIS_ReadyforChapter4;
var int MIS_Bennet_InnosEyeRepairedSetting;
var int MIS_SCKnowsInnosEyeIsBroken;
var int MIS_RescueBennet;
//var int MIS_FindTheObesessed;
var int MIS_HealHilda;
var int MIS_BabosDocs;
var int MIS_BengarsHelpingSLD;
var int MIS_GetMalakBack;
var int MIS_HyglasBringBook;
var int MIS_HannaRetrieveLetter;
var int MIS_HelpDiegoNW;
//var int MIS_DiegoNWSendsYouToJudge;
var int MIS_DiegosResidence;
var int MIS_Akil_SchafDiebe;
var int MIS_Lee_JudgeRichter;
var int MIS_Richter_BringHolyHammer;
var int MIS_Richter_KillMorgahard;
//var int MIS_InnosEyeStolen;
var int MIS_RescueBilgot;
var int MIS_Buster_KillShadowbeasts_DJG;
var int MIS_Ulthar_HeileSchreine_PAL;
var int MIS_Serpentes_MinenAnteil_KDF;
var int MIS_DJG_Sylvio_KillIceGolem;
var int MIS_AllDragonsDead;
var int MIS_KilledDragons;
var int MIS_JanBecomesSmith;
var int MIS_FerrosSword;
var int MIS_GeroldGiveFood;
var int MIS_KillHoshPak;
var int MIS_Tabin_LookForEngrom;
var int MIS_KillOrkOberst;
var int MIS_Neoras_DragonEgg;
var int MIS_Dar_BringOrcEliteRing;
var int MIS_KarrasResearchDMT;
var int MIS_Xardas_SCCanOpenIrdorathBook;
var int MIS_SCKnowsWayToIrdorath;
var int MIS_PyrokarClearDemonTower;
var int ItWr_HallsofIrdorathIsOpen;
var int ItWr_SCReadsHallsofIrdorath;
var int MIS_ScoutLibrary;
var int PlayerGetsAmulettOfDeath;
var int PlayergetsFinalDJGArmor;
var int MIS_bringRosiBackToSekob;
var int MIS_HealRandolph;
var int MIS_SCvisitShip;
var int MIS_Raoul_KillTrollBlack;
var int MIS_Raoul_DoesntPayTrollFur;
var int MIS_RichtersPermissionForShip;
var int MIS_RosisFlucht;
var int Crewmember_Count;
var int CrewmemberFree_Count;
const int Max_Crew = 9;
const int Min_Crew = 5;
var int Lee_IsOnBoard;
var int Lee_WasOnBoard;
var int MiltenNW_IsOnBoard;
var int MiltenNW_WasOnBoard;
var int Lester_IsOnBoard;
var int Lester_WasOnBoard;
var int Mario_IsOnBoard;
var int Mario_WasOnBoard;
var int Wolf_IsOnBoard;
var int Wolf_WasOnBoard;
var int Lares_IsOnBoard;
var int Lares_WasOnBoard;
var int Diego_IsOnBoard;
var int Diego_WasOnBoard;
var int Bennet_IsOnBoard;
var int Bennet_WasOnBoard;
var int Vatras_IsOnBoard;
var int Vatras_WasOnBoard;
var int Gorn_IsOnBoard;
var int Gorn_WasOnBoard;
var int Biff_IsOnBoard;
var int Biff_WasOnBoard;
var int Angar_IsOnBoard;
var int Angar_WasOnBoard;
var int Girion_IsOnBoard;
var int Girion_WasOnBoard;
var int MIS_ShipIsFree;
var int SCGotCaptain;
var int JorgenIsCaptain;
var int TorlofIsCaptain;
var int JackIsCaptain;
var int MIS_ReadyforChapter6;
var int MIS_OCGateOpen;
var int MIS_Jack_NewLighthouseOfficer;
var int MIS_Mario_Ambush;
var int B_Chapter3_OneTime;
var int B_Chapter4_OneTime;
var int B_Chapter5_OneTime;
var int Maleth_ersterWolf;
//var int Lobart_DIA_HALT_WegDamit;
//var int Lobart_MILCHANGEBOT;
//var int SCPaysForGritta;
//var int Matteo_Deal;
//var int Matteo_Day;
//var int HannaGaveSword;
//var int DayMeetAlwin;
//var int MoeOfferedTrain;
var int Kardif_OneQuestion;
//var int Bartok_Deal;
//var int Bartok_Day;
var int Bartok_OrkGesagt;
//var int Constantino_Gehilfe;
var int Constantino_Logpatch1;
var int Constantino_Logpatch2;
var int Sonja_Says;
//var int Sarah_WaffenGesehen;
var int Lehmar_GeldGeliehen;
var int Lehmar_GeldGeliehen_MitZinsen;
var int Lehmar_GeldGeliehen_Day;
//var int EddaPaid;
var int Coragon_Trade;
var int HelpOpolos;
//var int HelpAgon;
var int HelpBabo;
//var int BaboLikesYou;
var int Rengaru_InKnast;
//var int Nagur_UmsGeldBeschissen;
//var int wulfgarWantsMoney;
var int Hagen_GaveInfoKnight;
var int Torlof_Probe;
const int Probe_Sekob = 1;
const int Probe_Bengar = 2;
var int Torlof_ProbeBestanden;
var int Buster_Duell;
var int Sentenza_Stimme;
//var int Fester_Paid;
var int Cord_Approved;
var int Cord_Voted;
var int Cord_Voted_Trick;
var int Cord_Teacher;
var int SCKnowsSLDVotes;
//var int Thekla_SCNaughty;
//var int Torlof_PissedOff;
//var int Torlof_SC_DarfZuLee;
//var int Torlof_SauerWegenSekob;
var int Babera_BronkoKeinBauer;
//var int Sekob_ersteChancevertan;
var int Till_Angebot;
var int Till_HatSeinGeldBehalten;
var int Till_IchMachsNurEinmal;
//var int Bengar_MILIZKLATSCHEN_Kohle;
var int Rumbold_Bezahlt;
var int Mika_Helps;
//var int Akil_Sauer;
var int Akils_SLDStillthere;
//var int Engardo_SchonAngeredet;
var int Kati_Mahlzeit;
var int Lieferung_Geholt;
//var int KnowsGerold;
var int KnowsAboutGorn;
var int DayContactGorn;
//var int PriceForGorn;
var int Gorns_Beutel;
var int SLDChooseMoreMoney;
//var int FoodForGerold;
//var int WantinDungeon;
var int SetGornFree;
var int GornsTreasure;
var int GornDJG_WhatMonsters;
var int Knows_Diego;
var int Knows_Milten;
var int SearchForDiego;
//var int FajethSendsYouBack;
//var int Milten_Equipment;
var int Fajeth_Pay;
var int Fajeth_Ore;
var int Marcos_Ore;
var int Silvestro_Ore;
var int Ore_Counter;
//var int Knows_WEAPON_1H_Special_01;
var int Pedro_Traitor;
var int RitualInnosEyeRuns;
var int Bennet_RepairDay;
//var int heroGIL_KDF2;
var int Xardas_GoesToRitualInnosEye;
var int Pyrokar_GoesToRitualInnosEye;
var int Pyrokar_DeniesInnosEyeRitual;
var int CorneliusFlee;
var int Cornelius_TellTruth;
var int Cornelius_PayForProof;
var int MiltenNW_GivesMonasteryKey;
var int Parlan_DontTalkToNovice;
var int NeorasBrewsForYou;
var int BabosDocsOpen;
//var int Igaraz_ISPartner;
var int BabosDocsRejected;
var int MIS_Gorax_KillPedro;
var int OpenedDiegosBag;
const int DiegosTreasure = 2000;
var int SC_KnowsProspektorSalandril;
var int PyrokarToldKarrasToResearchDMT;
var int Pyrokar_AskKarrasAboutDMTAmulett;
var int MIS_Karras_FindBlessedStone;
var int Angar_KnowsMadPsi;
var int Cornelius_IsLiar;
//var int RescueBennet_KnowsWitness;
var int RescueBennet_KnowsCornelius;
//var int Cornelius_ThreatenByMilSC;
var int SCIstRichtersLakai;
var int SCFoundMorgahard;
const int Gold_BlessSword = 5000;
//const int CostForPAlSpells = 5;
var int SalandrilMinenAnteil_MAINCounter;
var int SalandrilVerteilteMinenAnteil;
var int SCKnowsRichterKomproBrief;
var int Girion_Labercount;
var int TschuessBilgot;
var int DJG_SwampParty;
var int DJG_BiffParty;
var int DJG_BiffSurvivedLastDragon;
var int Angar_willDJGwerden;
var int DJG_Angar_SentToStones;
var int DJG_AngarGotAmulett;
var int DJG_AngarAngriff;
var int HokurnLastDrink;
var int HokurnGetsDrink;
var int HokurnTellsDragon;
var int GodarLikesYou;
var int KjornToldDragon;
var int KjorntoldOrks;
var int KjornToldOldCamp;
var int KjornToldColony;
var int DragonTalk_Exit_Free;
var int DJG_Biff_Stay;
var int Keroloth_HasPayed;
var int Keroloths_BeutelLeer;
var int OrikToldMissionChapter4;
var int Sengrath_Missing;
var int Talbin_FollowsThroughPass;
var int Biff_FollowsThroughPass;
var int EngromIsGone;
var int TalkedTo_AntiPaladin;
//var int Hyglas_SendsToKarras;
var int Jan_WantsDragonBlood;
const int Garond_KilledDragonGeld = 300;
var int DJG_BiffParty_nomore;
var int DJG_Biff_HalbeHalbe;
var int DJG_Biff_SCGold;
var int BiffsAnteil;
var int DJG_Biff_HalbeHalbe_again;
var int Pyrokar_LetYouPassTalamon;
var int SecretLibraryIsOpen;
var int HeroWasInLibrary;
//var int DayForFinalDJGArmor;
//var int PlayerHasFinalArmor;
var int RosiFoundKap5;
var int PAL_KnowsAbout_FINAL_BLESSING;
var int OrkSturmDI;
var int Angar_DI_Party;
var int SC_InnosEyeVergessen_DI;
var int SCFoundPedro;
var int UndeadDragonIsDead;
// var int DiegAndGornAreOnboard;
//var int Alrik_TeachPlayer;
//var int Moe_TeachPlayer;
var int Bartok_TeachPlayer;
//var int Boltan_TeachPlayer;
//var int Wulfgar_TeachPlayer;
//var int Girion_TeachPlayer;
var int Thorben_TeachPlayer;
//var int Buster_TeachPlayer;
//var int Cord_TeachPlayer;
var int Lee_TeachPlayer;
//var int Torlof_TeachPlayer;
//var int Dar_TeachPlayer;
//var int Cassia_TeachPlayer;
//var int Jesper_TeachPlayer;
var int Ramirez_TeachPlayer;
//var int Carl_TeachPlayer;
var int Gaan_TeachPlayer;
var int Carl_TeachSTR;
var int Harad_TeachSTR;
var int Mortis_TeachSTR;
var int Ingmar_TeachSTR;
var int Lares_TeachDEX;
var int Ruga_TeachDEX;
var int Cassia_TeachDEX;
var int Vatras_TeachMANA;
var int Albrecht_TeachMANA;
var int Alrik_Teach1H;
var int Wulfgar_Teach1H;
var int Cedric_Teach1H;
//var int Wulfgar_Teach2H;
var int Girion_Teach2H;
var int LordHagen_Teach2H;
var int Bartok_TeachBow;
var int Ruga_TeachCrossbow;
var int Cassia_TeachPickpocket;
var int Jesper_TeachSneak;
//var int Ramirez_TeachPicklock;
//var int Thorben_TeachPicklock;
var int Harad_TeachSmith;
var int Constantino_TeachAlchemy;
var int Ignaz_TeachAlchemy;
//var int Torlof_TeachSTR;
//var int Torlof_TeachDEX;
//var int XXX_TeachMANA;
//var int Buster_Teach1H;
var int Rod_Teach2H;
//var int Cord_Teach2H;
//var int Lee_Teach2H;
var int Wolf_TeachBow;
var int Bennet_TeachCommon;
var int Bennet_TeachSmith;
var int Sagitta_TeachAlchemy;
//var int Gaan_TeachAnimalTrophy;
var int Grom_TeachAnimalTrophy;
var int Grimbald_TeachAnimalTrophy;
var int Gestath_TeachAnimalTrophy;
var int Godar_TeachAnimalTrophy;
var int Talbin_TeachAnimalTrophy;
//var int Parlan_TeachMANA;
//var int Pyrokar_TeachMANA;
var int Opolos_TeachSTR;
//var int XXX_Teach2H;
//var int Ulthar_TeachPalRunes;
//var int Pyrokar_TeachPalRunes;
//var int Serpentes_TeachPalRunes;
//var int Hyglas_TeachRunes;
//var int Karras_TeachRunes;
//var int Parlan_TeachRunes;
//var int Marduk_TeachRunes;
var int Neoras_TeachAlchemy;
var int Babo_TeachPlayer;
var int Dobar_Learnsmith;
var int Keroloth_TeachPlayer;
var int Udar_TeachPlayer;
var int Brutus_TeachSTR;
//var int Godar_TeachPlayer;
var int Jan_TeachPlayer;
var int Hokurn_TeachPlayer;
var int Apple_Bonus;
var int Dunkelpilz_Bonus;
var int Mandibles_Bonus;
var int Knows_Bloodfly;
var int Bloodfly_Bonus;
var int Player_KnowsDunkelpilzBonus;
var int Skelett_Spawn;
var int TruheSfx;
var int GoblinGreen_Randomizer;
var int GoblinBlack_Randomizer;
var int Orc_Randomizer;
var int CurrentLevel;
var int Read_LastDoorToUndeadDrgDI_MIS;
//var int Brahim_Attacked_Day;
var int Constantino_flasks;
var int Constantino_flag;
var int Salandril_flasks;
var int Salandril_flag;
var int Sagitta_flasks;
var int Sagitta_flag;
var int Ignaz_flasks;
var int Ignaz_flag;
var int Lucia_flasks;
var int Lucia_flag;
var int Samuel_flasks;
var int Samuel_flag;
var int Bennet_swordraws;
var int Bennet_flag;
var int Huno_swordraws;
var int Huno_flag;
var int Bennet_DI_swordraws;
var int Bennet_DI_flag;
var int Lee_Nerver;
var int Lester_Nerver;
var int Mario_Nerver;
var int SC_IsWearingInnosEye;
//var int SC_IsBlackEyeProtected;
var int Player_TalkedAboutDragonsToSomeone;
var int NpcWantToFlee;
var int TradersHaveLimitedAmmo;
var int Dont_Fix_Unlim;
var int IgnoreBonuses;
var int RandomGoblinBerries;
var int InfiniteApples;
var int Helmets_Enabled;
var int ClassicLehmarBook;
var int GuildlessMode;
var int AddonDisabled;
var int XP_Static;
var int ClassicAlchemy;
//var int HonestStatCalculation;
var int Bennet_Ammo_Day;
var int Bosper_Ammo_Day;
var int Diego_DI_Ammo_Day;
var int Garett_Ammo_Day;
var int MonsterTransformLevel;
var int OrcEliteRing_Equipped;
var int Miliz_Flucht;
//var int EngorTraderLog;
//var int TandorTraderLog;
var int Trade_IsActive;
var int SchuldBuchNamesKnown;
var int SchuldBuch_Stolen_Coragon;
var int SchuldBuch_Stolen_Thorben;
var int LobartClothesDiscount;
var int BragoBanditsAttacked;
var int GregWolfs;
var int SalandrilMinenAnteil;
var int MatteoMinenAnteil;
var int BosperMinenAnteil;
var int ZurisMinenAnteil;
var int ElenaMinenAnteil;
var int OrlanMinenAnteil;
var int HakonMinenAnteil;
var int RosiMinenAnteil;
var int CantharMinenAnteil;
var int GarwigThiefOneTime;
var int COUNT_DragonEggDrinkNeoras_Setting;
var int COUNT_MegaDrink_Setting;
//var int COUNT_SchnellerHering_Setting;
var int Zeitspalt_Used;
var int MegaDrink_Used;
var int UndeadSword;
var int BloodwynIsHeadless;
var int Bennet_DIA_Bennet_DJG_ARMOR_H_permanent;
var int MayaScrollGiven;
var int Engrom_Orc_Spawned;
var int FernandoBlame_noPerm;
var int FernandoMajorEvidenceCount;
var int FernandoHints_ItMw;
var int FernandoHints_ItRi;
var int FernandoHints_ItWr;
var int FernandoHints_Confession;
var int NewMine_LeadSnapper_Spawned;
var int BeerDay;
var int BeerDayZeroOneTime;
var int CronosTraded;
var int Greg_NoHelpInNW;
var int Greg_NoHelpInNW_Cave;
var int Greg_Rejected;
var int DexterBanditsBodyCount;
var int Garett_Armor_Given;
var int MorgansRing;
var int MorgansRingUnequippedForTablet;
var int Current1HBonus;
var int Current1HBonusRemoved;
var int Current2HBonus;
var int Current2HBonusRemoved;
var int Vino_Complain;
var int SarahWeaponsRemoved;
var int PlayerVisitedLobartFarmArmorless;
var int MalethArmorComment;
var int Nagur_Job_Dia1_Passed;
var int Nagur_Job_Dia2_Passed;
var int Got_HealObsession_Day;
var int Kardif_Busted;
var int Bote_Killed;
var int Wasteland_Seeded;
var int TorlofIsSailor;
var int LobartGotGoldForStolenClothes;
var int DJG_or_SLD_Bullco_Defeated;
var int BalthasarMovedToBengar;
var int Greg_KnowsPortal;
var int DIA_Addon_Saturas_OpenPortal_NoPerm;
var int VatrasLetterGivenToSaturas;
var int GotCipherVote;
var int GotTorlofVote;
var int GotIgarazChestKey;
var int LoganToldAboutEsteban;
var int Rod_SchwertXPGiven;
var int Neoras_DragonEggDrinkGiven;
var int RamirezToldAboutWambo;
var int Lee_SldMGiven;
var int Lee_SldHGiven;
var int SylvioIceGolemsKilledBefore4Chapter;
var int Knows_Taverne;
var int EnteredBanditsCamp;
var int XardasKnowsAboutDestroyedClaw;
var int Andre_FoundThieves_Reported_Day;
var int Hanna_ThievesIsDead;
var int Hanna_ThievesIsDead_Day;
var int Andre_LordHagenNichtZuSprechen;
var int Borka_Second_Chance_Failed;
var int Nadja_BuyHerb_Failed;
var int SC_KnowsBlankRuneForFirebolt;
var int SC_KnowsPortal;
var int SC_KnowsEdgorStoneLocation;
var int MyxirMovedToNW;
var int Patrick_DiedInADW;
var int Monty_DiedInADW;
var int Tonak_DiedInADW;
var int Telbor_DiedInADW;
var int Pardos_DiedInADW;
var int JorgenMovedFromKloster;
var int Canthars_KomproBrief_Failed;
var int ScaredRick;
var int ScaredRumbold;
var int ScaredAlvares;
var int ScaredEngardo;
var int Lehmar_StealBook_Day;
var int SaturasSendsToRiordian;
var int Raven_Awaken;
var int OrcShaman_CanyonLibrary_KilledByPlayer;
var int Grimbald_Snappers_KilledByPlayer;
var int Gorax_Trade;
var int Cronos_NW_ItMi_Flask_Count;
var int Cronos_NW_ItMi_Sulfur_Count;
var int Cronos_NW_ItMi_Pitch_Count;
var int Cronos_NW_ItPo_Mana_01_Count;
var int Cronos_NW_ItPo_Health_01_Count;
var int Cronos_NW_ItSc_Light_Count;
var int Cronos_NW_ItSc_Firebolt_Count;
var int Cronos_NW_ItSc_Zap_Count;
var int Cronos_NW_ItSc_LightHeal_Count;
var int Cronos_NW_ItSc_SumGobSkel_Count;
var int Cronos_NW_ItSc_Icelance_Count;
var int Cronos_NW_ItSc_Whirlwind_Count;
var int Bennet_NW_ItMi_Swordraw_Count;
var int Bennet_NW_ItMi_Nugget_Count;
var int Valentino_Day;
var int Lothar_Day;
var int Fernando_Betrayal;
var int SC_KnowsCitySmuggler;
var int OrkElite_AntiPaladin_Level;
var int OrkElite_AntiPaladin_Strength;
var int OrkElite_AntiPaladin_HP;
var int OrkElite_AntiPaladin_Protection;
var int OriginalAntipaladins;
var int LostInnosStatueInMonastery;
var int TrollBlackFurWasted;
var int Stats_Killed_Draconian;
var int Stats_Killed_Dementor;
var int Stats_Killed_OrcElite;
var int Stats_Killed_OrcCommander;
var int SCToldAngarHeKnowWhereEnemy;
var int SCToldGornHeKnowWhereEnemy;
var int SCToldMiltenHeKnowWhereEnemy;
var int SCToldDiegoHeKnowWhereEnemy;
var int SCToldBennetHeKnowWhereEnemy;
var int SCToldVatrasHeKnowWhereEnemy;
var int SCToldLesterHeKnowWhereEnemy;
var int SCToldLaresHeKnowWhereEnemy;
