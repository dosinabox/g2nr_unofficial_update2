
instance DJG_740_ToterDrachenjaeger(Npc_Default)
{
	name[0] = NAME_ToterDrachenjaeger;
	guild = GIL_DJG;
	id = 740;
	voice = 6;
	flags = 0;
	npcType = NPCTYPE_AMBIENT;
	B_SetAttributesToChapter(self,5);
	fight_tactic = FAI_HUMAN_STRONG;
	EquipItem(self,ItMw_1h_Sld_Sword);
	CreateInvItems(self,ItMi_DarkPearl,1);
	B_CreateAmbientInv(self);
	B_SetNpcVisual(self,MALE,"Hum_Head_FatBald",Face_N_NormalBart01,BodyTex_N,ITAR_DJG_L);
	Mdl_SetModelFatness(self,1);
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,65);
	daily_routine = Rtn_Start_740;
};


func void Rtn_Start_740()
{
	TA_Sit_Bench(8,0,23,0,"MT14");
	TA_Sit_Bench(23,0,8,0,"MT14");
};

