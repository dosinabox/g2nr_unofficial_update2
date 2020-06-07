
func void B_RemoveNpc(var int npcInstance)
{
	var C_Npc npc;
	npc = Hlp_GetNpc(npcInstance);
	if(Hlp_IsValidNpc(npc) && !Npc_IsDead(npc))
	{
		if(FullNPCRemoval == FALSE)
		{
			npc.flags = 0;
			B_ClearRuneInv(npc);
			AI_Teleport(npc,"TOT");
			B_StartOtherRoutine(npc,"TOT");
			Npc_ChangeAttribute(npc,ATR_HITPOINTS,-npc.attribute[ATR_HITPOINTS_MAX]);
			AI_Teleport(npc,"TOT");
		}
		else
		{
			Wld_RemoveNpc(npcInstance);
		};
	};
};

