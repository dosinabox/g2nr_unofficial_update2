
instance DIA_AmbientDementor_EXIT(C_Info)
{
	nr = 999;
	condition = DIA_AmbientDementor_EXIT_Condition;
	information = DIA_AmbientDementor_EXIT_Info;
	permanent = TRUE;
	description = Dialog_Ende;
};


func int DIA_AmbientDementor_EXIT_Condition()
{
	return TRUE;
};

func void DIA_AmbientDementor_EXIT_Info()
{
	Wld_StopEffect("DEMENTOR_FX");
	AI_StopProcessInfos(self);
	B_SCIsObsessed(self);
	Npc_SetRefuseTalk(self,5);
	Snd_Play("MFX_FEAR_CAST");
	if((Hlp_GetInstanceID(self) == Hlp_GetInstanceID(DMT_Vino1)) || (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(DMT_Vino2)) || (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(DMT_Vino3)) || (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(DMT_Vino4)))
	{
		DMT_Vino1.aivar[AIV_EnemyOverride] = FALSE;
		DMT_Vino2.aivar[AIV_EnemyOverride] = FALSE;
		DMT_Vino3.aivar[AIV_EnemyOverride] = FALSE;
		DMT_Vino4.aivar[AIV_EnemyOverride] = FALSE;
	}
	else
	{
		B_Attack(self,other,AR_SuddenEnemyInferno,1);
	};
};


instance DIA_AmbientDementor(C_Info)
{
	nr = 1;
	condition = DIA_AmbientDementor_Condition;
	information = DIA_AmbientDementor_Info;
	important = TRUE;
	permanent = TRUE;
};


func int DIA_AmbientDementor_Condition()
{
	if(!Npc_RefuseTalk(self))
	{
		return TRUE;
	};
};

func void DIA_AmbientDementor_Info()
{
	var int randy;
	Wld_PlayEffect("DEMENTOR_FX",hero,hero,0,0,0,FALSE);
	Wld_PlayEffect("spellFX_Fear",self,self,0,0,0,FALSE);
	AI_PlayAni(self,"T_PRACTICEMAGIC5");
	randy = Hlp_Random(4);
	if((Hlp_GetInstanceID(self) == Hlp_GetInstanceID(DMT_Vino1)) || (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(DMT_Vino2)) || (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(DMT_Vino3)) || (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(DMT_Vino4)))
	{
		AI_Output(self,other,"DIA_VinoDementor_19_00");	//�� ������ ���������� ��� ������? ��� ���� ����������� ���. ���� �� ������ ���, ���.
	}
	else if(CurrentLevel == DRAGONISLAND_ZEN)
	{
		if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(DragonIsle_Keymaster))
		{
			AI_Output(self,other,"DIA_AmbientDementor_19_01");	//(�������) �� ������, ����� ������� ����� ��� � ���� ������? �� ������� �� ���������.
			AI_Output(self,other,"DIA_AmbientDementor_19_02");	//������ ��� �� ��������� ������ ��� �����. ����������� �����. ���� ������� �� ��������� �� ��������� �������� ��������.
		}
		else
		{
			if(randy == 0)
			{
				AI_Output(self,other,"DIA_AmbientDementor_19_03");	//�� ��� ����� ������� ������, ���������� �����. ���� ������� �� ��������� �� ����������� ���������.
			};
			if(randy == 1)
			{
				AI_Output(self,other,"DIA_AmbientDementor_19_04");	//����, ��� ������. �� ���� ������!
			};
			if(randy == 2)
			{
				AI_Output(self,other,"DIA_AmbientDementor_19_05");	//��, ���� ������� ��������� ����, �� ���� ���� ���� �� ������.
			};
			if(randy == 3)
			{
				AI_Output(self,other,"DIA_AmbientDementor_19_06");	//�� ������, ���� ������� ����� �������, �� ������� ���� �������� ������ ���� ����.
			};
		};
	}
	else if(hero.guild == GIL_KDF)
	{
		if(randy == 0)
		{
			AI_Output(self,other,"DIA_AmbientDementor_19_07");	//������ ���, ���� ������� �� ���������� � ����� �������.
		};
		if(randy == 1)
		{
			AI_Output(self,other,"DIA_AmbientDementor_19_08");	//�� ������ ���� �����, ����� ������������� ���. ����� ���. �� ���� ��� ���� �� �������.
		};
		if(randy == 2)
		{
			AI_Output(self,other,"DIA_AmbientDementor_19_09");	//���� ������ �����, ���� �� ���������� ���.
		};
		if(randy == 3)
		{
			AI_Output(self,other,"DIA_AmbientDementor_19_10");	//��� ������ �������� ����. ���� ������ ����� �� ������ ����.
		};
	}
	else
	{
		if(randy == 0)
		{
			AI_Output(self,other,"DIA_AmbientDementor_19_11");	//������ �� ���� �������, ���� ��� ������. ���� ������ �� ����.
		};
		if(randy == 1)
		{
			AI_Output(self,other,"DIA_AmbientDementor_19_12");	//������ �� �������� ���� �������. ���� �� ���� �� ����.
		};
		if(randy == 2)
		{
			AI_Output(self,other,"DIA_AmbientDementor_19_13");	//������ ����� �������� ���� ������. ����� �� ������ ���� ������.
		};
		if(randy == 3)
		{
			AI_Output(self,other,"DIA_AmbientDementor_19_14");	//�� ������� ���� � �������, � ������ ��������� ����.
		};
	};
};

func void B_AssignDementorTalk(var C_Npc slf)
{
	if((slf.guild == GIL_DMT) && (slf.npcType == NPCTYPE_AMBIENT))
	{
		DIA_AmbientDementor_EXIT.npc = Hlp_GetInstanceID(slf);
		DIA_AmbientDementor.npc = Hlp_GetInstanceID(slf);
	};
};

