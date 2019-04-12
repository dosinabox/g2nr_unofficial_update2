
instance DIA_Kervo_EXIT(C_Info)
{
	npc = STRF_1116_Kervo;
	nr = 999;
	condition = DIA_Kervo_EXIT_Condition;
	information = DIA_Kervo_EXIT_Info;
	permanent = TRUE;
	description = Dialog_Ende;
};


func int DIA_Kervo_EXIT_Condition()
{
	return TRUE;
};

func void DIA_Kervo_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Kervo_WASIST(C_Info)
{
	npc = STRF_1116_Kervo;
	nr = 4;
	condition = DIA_Kervo_WASIST_Condition;
	information = DIA_Kervo_WASIST_Info;
	description = "�� ��� � �����?";
};


func int DIA_Kervo_WASIST_Condition()
{
	return TRUE;
};

func void DIA_Kervo_WASIST_Info()
{
	AI_Output(other,self,"DIA_Kervo_WASIST_15_00");	//�� ��� � �����?
	AI_Output(self,other,"DIA_Kervo_WASIST_13_01");	//�� ��� �����������? �� ������ ������ ��������!
	AI_Output(self,other,"DIA_Kervo_WASIST_13_02");	//��� ������� ������� ������ ��� ���� � ��� ���, ��� � ������ ����.
	AI_Output(self,other,"DIA_Kervo_WASIST_13_03");	//������� �� ���� ����� ����. �� ����� � �������� ��� ����.
	AI_Output(self,other,"DIA_Kervo_WASIST_13_04");	//������ � �� ����, ��� ��� ������� ��������� ������.
};


instance DIA_Kervo_HILFE(C_Info)
{
	npc = STRF_1116_Kervo;
	nr = 5;
	condition = DIA_Kervo_HILFE_Condition;
	information = DIA_Kervo_HILFE_Info;
	description = "�� ������� ���������� ����� ������?";
};


func int DIA_Kervo_HILFE_Condition()
{
	if(Npc_KnowsInfo(other,DIA_Kervo_WASIST))
	{
		return TRUE;
	};
};

func void DIA_Kervo_HILFE_Info()
{
	AI_Output(other,self,"DIA_Kervo_HILFE_15_00");	//�� ������� ���������� ����� ������?
	AI_Output(self,other,"DIA_Kervo_HILFE_13_01");	//� ���, ��-������, �� ��� �����? ���� 20 ������ �� ������� ���� ������, ���� ��� ����� ������ ���. �������� ��.
	AI_Output(self,other,"DIA_Kervo_HILFE_13_02");	//����� ��� ������������� �� �����, � � ���������� �������� �����. � �� �� ������������ ����� ������ � ���� �����.
	AI_Output(self,other,"DIA_Kervo_HILFE_13_03");	//���� ���� ��� �������, ����� � ���� ������� ����� ������, ������ ��������.
	Info_ClearChoices(DIA_Kervo_HILFE);
	Info_AddChoice(DIA_Kervo_HILFE,"�����. � �����.",DIA_Kervo_HILFE_tschau);
	Info_AddChoice(DIA_Kervo_HILFE,"�� �� �� �� ������ ���������� ����� �����.",DIA_Kervo_HILFE_ewig);
	if(KERVO_GOTSTUFF == TRUE)
	{
		Info_AddChoice(DIA_Kervo_HILFE,"��� �� ��� ����, ���� � ���� ���� ������?",DIA_Kervo_HILFE_Problem);
	};
	MIS_Kervo_KillLurker = LOG_Running;
};

func void DIA_Kervo_HILFE_ewig()
{
	AI_Output(other,self,"DIA_Kervo_HILFE_ewig_15_00");	//�� �� �� �� ������ ���������� ����� �����.
	AI_Output(self,other,"DIA_Kervo_HILFE_ewig_13_01");	//� �� ����, ��� ���� ����� �� ����, �� � ���� ������� ���� ����: �� �� ��������� ���� ���� ������.
};


var int kervo_promisenugget;

func void DIA_Kervo_HILFE_Problem()
{
	AI_Output(other,self,"DIA_Kervo_HILFE_Problem_15_00");	//��� �� ��� ����, ���� � ���� ���� ������?
	AI_Output(self,other,"DIA_Kervo_HILFE_Problem_13_01");	//���. ��. � ��� �� �� �����, ����� ��� �������, ��� ������ ����� �������, �������.
	if(hero.guild == GIL_KDF)
	{
		AI_Output(self,other,"DIA_Kervo_HILFE_Problem_13_02");	//� ����� ������ ������ ������. �� ���� ���. � ������, �� ������� ���������� ���.
	}
	else
	{
		AI_Output(self,other,"DIA_Kervo_HILFE_Problem_13_03");	//� ����� ����� ����.
	};
	AI_Output(self,other,"DIA_Kervo_HILFE_Problem_13_04");	//� ����� ���� ���.
	KERVO_PROMISENUGGET = TRUE;
	AI_StopProcessInfos(self);
};

func void DIA_Kervo_HILFE_tschau()
{
	AI_Output(other,self,"DIA_Kervo_HILFE_tschau_15_00");	//�����. � �����.
	AI_Output(self,other,"DIA_Kervo_HILFE_tschau_13_01");	//��� ������. � ���� ���������� �� ����.
	AI_StopProcessInfos(self);
};


instance DIA_Kervo_LurkerPlatt(C_Info)
{
	npc = STRF_1116_Kervo;
	condition = DIA_Kervo_LurkerPlatt_Condition;
	information = DIA_Kervo_LurkerPlatt_Info;
	description = "�������� ������ ���.";
};


func int DIA_Kervo_LurkerPlatt_Condition()
{
	if((MIS_Kervo_KillLurker == LOG_Running) && Npc_IsDead(Kervo_Lurker1) && Npc_IsDead(Kervo_Lurker2) && Npc_IsDead(Kervo_Lurker3) && Npc_IsDead(Kervo_Lurker4) && Npc_IsDead(Kervo_Lurker5) && Npc_IsDead(Kervo_Lurker6))
	{
		return TRUE;
	};
};

func void DIA_Kervo_LurkerPlatt_Info()
{
	AI_Output(other,self,"DIA_Kervo_LurkerPlatt_15_00");	//�������� ������ ���.
	AI_Output(self,other,"DIA_Kervo_LurkerPlatt_13_01");	//�������. ������ � ����� ����� ����� ��������.
	if(KERVO_PROMISENUGGET == TRUE)
	{
		AI_Output(self,other,"DIA_Kervo_LurkerPlatt_13_02");	//��� ��, ��� � ������ ����.
		if(hero.guild == GIL_KDF)
		{
			B_GiveInvItems(self,other,ItMi_RuneBlank,1);
		}
		else
		{
			B_GiveInvItems(self,other,ItMi_Nugget,1);
		};
	};
	B_GivePlayerXP(XP_KervoKillLurker);
	MIS_Kervo_KillLurker = LOG_Success;
};


instance DIA_Kervo_VERGISSES(C_Info)
{
	npc = STRF_1116_Kervo;
	condition = DIA_Kervo_VERGISSES_Condition;
	information = DIA_Kervo_VERGISSES_Info;
	permanent = TRUE;
	description = "�� ������ ������� � �������?";
};


func int DIA_Kervo_VERGISSES_Condition()
{
	if(MIS_Kervo_KillLurker == LOG_Success)
	{
		return TRUE;
	};
};

func void DIA_Kervo_VERGISSES_Info()
{
	AI_Output(other,self,"DIA_Kervo_VERGISSES_15_00");	//�� ������ ������� � �������?
	AI_Output(self,other,"DIA_Kervo_VERGISSES_13_01");	//������ �� ����, ������. ���� ���� �������, �� ����� �������� �������� � �����. � �������� �����.
	AI_StopProcessInfos(self);
};


instance DIA_Kervo_PICKPOCKET(C_Info)
{
	npc = STRF_1116_Kervo;
	nr = 900;
	condition = DIA_Kervo_PICKPOCKET_Condition;
	information = DIA_Kervo_PICKPOCKET_Info;
	permanent = TRUE;
	description = Pickpocket_40;
};


func int DIA_Kervo_PICKPOCKET_Condition()
{
	return C_Beklauen(34,10);
};

func void DIA_Kervo_PICKPOCKET_Info()
{
	Info_ClearChoices(DIA_Kervo_PICKPOCKET);
	Info_AddChoice(DIA_Kervo_PICKPOCKET,Dialog_Back,DIA_Kervo_PICKPOCKET_BACK);
	Info_AddChoice(DIA_Kervo_PICKPOCKET,DIALOG_PICKPOCKET,DIA_Kervo_PICKPOCKET_DoIt);
};

func void DIA_Kervo_PICKPOCKET_DoIt()
{
	B_Beklauen();
	Info_ClearChoices(DIA_Kervo_PICKPOCKET);
};

func void DIA_Kervo_PICKPOCKET_BACK()
{
	Info_ClearChoices(DIA_Kervo_PICKPOCKET);
};

