
const int Value_Rum = 30;
const int Mana_Rum = 10;
const int Value_Grog = 10;
const int HP_Grog = 1;
const int Value_SchnellerHering = 30;
const int Value_LousHammer = 30;
const int Mana_LousHammer = 1;
const int Value_SchlafHammer = 60;
const int Value_FireStew = 180;
const int STR_FireStew = 1;
const int HP_FireStew = 5;
const int STR_MeatSoup = 1;
const int Value_Shellflesh = 60;
const int HP_Shellflesh = 20;

instance ItFo_Addon_Shellflesh(C_Item)
{
	name = "���� ��������";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Shellflesh;
	visual = "ItAt_Meatbugflesh.3DS";
	material = MAT_LEATHER;
	scemeName = "FOODHUGE";
	on_state[0] = Use_Shellflesh;
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Shellflesh;
	text[2] = "������ ���� ��������.";
	text[3] = "����� ���� �����.";
	text[5] = NAME_Value;
	count[5] = value;
};


func void Use_Shellflesh()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Shellflesh);
};


instance ItFo_Addon_Rum(C_Item)
{
	name = "���";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Rum;
	visual = "ItMi_Rum_02.3ds";
	material = MAT_GLAS;
	on_state[0] = UseRum;
	scemeName = "POTIONFAST";
	description = "����� ���";
	text[1] = NAME_Bonus_Mana;
	count[1] = Mana_Rum;
	text[5] = NAME_Value;
	count[5] = Value_Rum;
};


func void UseRum()
{
	Npc_ChangeAttribute(self,ATR_MANA,Mana_Rum);
	B_NpcSetDrunk(50);
};


instance ItFo_Addon_Grog(C_Item)
{
	name = "����";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Grog;
	visual = "ItMi_Rum_02.3ds";
	material = MAT_GLAS;
	on_state[0] = UseGrog;
	scemeName = "POTIONFAST";
	description = "��������� ���� �������";
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Grog;
	text[5] = NAME_Value;
	count[5] = Value_Grog;
};


func void UseGrog()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Grog);
	B_NpcSetDrunk(40);
};


var int Hammer_Once;

instance ItFo_Addon_LousHammer(C_Item)
{
	name = "����� ��";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_LousHammer;
	visual = "ItMi_Rum_01.3ds";
	material = MAT_GLAS;
	on_state[0] = UseLouHammer;
	scemeName = "POTIONFAST";
	description = name;
	text[1] = "������ ����������.";
	text[5] = NAME_Value;
	count[5] = Value_LousHammer;
};


func void UseLouHammer()
{
	if(Hammer_Once == FALSE)
	{
		B_RaiseAttribute(self,ATR_MANA_MAX,Mana_LousHammer);
		Npc_ChangeAttribute(self,ATR_MANA,Mana_LousHammer);
		Hammer_Once = TRUE;
	};
	B_NpcSetDrunk(60);
};


instance ItFo_Addon_SchlafHammer(C_Item)
{
	name = "������� ����� ��";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_SchlafHammer;
	visual = "ItMi_Rum_01.3ds";
	material = MAT_GLAS;
	on_state[0] = UseSchlafHammer;
	scemeName = "POTIONFAST";
	description = name;
	text[1] = "��� ����� �������� ������� � ��� ������...";
	text[5] = NAME_Value;
	count[5] = Value_SchlafHammer;
};


func void UseSchlafHammer()
{
	if(self.attribute[ATR_HITPOINTS] > 2)
	{
		self.attribute[ATR_HITPOINTS] /= 2;
	};
	B_NpcSetDrunk(80);
};


instance ItFo_Addon_SchnellerHering(C_Item)
{
	name = "������� �������";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_SchnellerHering;
	visual = "ItMi_Rum_01.3ds";
	material = MAT_GLAS;
	on_state[0] = UseSchnellerHering;
	scemeName = "POTIONFAST";
	description = name;
	text[1] = "�������� �������������!";
	text[2] = "������ ����������.";
	text[3] = "�������� �������� �������.";
	text[5] = NAME_Value;
	count[5] = Value_SchnellerHering;
};


func void UseSchnellerHering()
{
	var C_Npc her;
	her = Hlp_GetNpc(PC_Hero);
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		Mdl_ApplyOverlayMdsTimed(self,"HUMANS_SPRINT.MDS",120000);
	};
	Player_KnowsSchnellerHering = TRUE;
};


instance ItFo_Addon_Pfeffer_01(C_Item)
{
	name = "������� � ������";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 100;
	visual = "ItMi_Pocket.3ds";
	material = MAT_LEATHER;
	description = "������� ������ �����";
	text[1] = "� ����� ��������.";
	text[3] = "���������, ������!";
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItFo_Addon_FireStew(C_Item)
{
	name = "��������� �������";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_FireStew;
	visual = "ItFo_Stew.3ds";
	material = MAT_WOOD;
	scemeName = "RICE";
	on_state[0] = Use_FireStew;
	description = name;
	text[1] = NAME_Bonus_Str;
	count[1] = STR_FireStew;
	text[5] = NAME_Value;
	count[5] = Value_FireStew;
};


func void Use_FireStew()
{
	var string concatText;
	B_RaiseAttribute(self,ATR_STRENGTH,STR_FireStew);
	Npc_ChangeAttribute(self,ATR_HITPOINTS_MAX,HP_FireStew);
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_FireStew);
	concatText = ConcatStrings(PRINT_Learnhitpoints_MAX,IntToString(HP_FireStew));
	PrintScreen(concatText,55,-1,FONT_Screen,2);
};


instance ItFo_Addon_Meatsoup(C_Item)
{
	name = "������ ��������";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_FishSoup;
	visual = "ItFo_FishSoup.3ds";
	material = MAT_WOOD;
	scemeName = "RICE";
	on_state[0] = Use_MeatSoup;
	description = "��������� ������ ��������";
	text[1] = NAME_Bonus_Str;
	count[1] = STR_MeatSoup;
	text[5] = NAME_Value;
	count[5] = Value_FishSoup;
};


func void Use_MeatSoup()
{
	B_RaiseAttribute(self,ATR_STRENGTH,STR_MeatSoup);
};

