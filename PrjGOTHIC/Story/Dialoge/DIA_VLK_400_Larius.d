
instance DIA_Larius_EXIT(C_Info)
{
	npc = VLK_400_Larius;
	nr = 999;
	condition = DIA_Larius_EXIT_Condition;
	information = DIA_Larius_EXIT_Info;
	permanent = TRUE;
	description = Dialog_Ende;
};


func int DIA_Larius_EXIT_Condition()
{
	return TRUE;
};

func void DIA_Larius_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Larius_Hello(C_Info)
{
	npc = VLK_400_Larius;
	nr = 1;
	condition = DIA_Larius_Hello_Condition;
	information = DIA_Larius_Hello_Info;
	permanent = FALSE;
	important = TRUE;
};


func int DIA_Larius_Hello_Condition()
{
	if(Npc_IsInState(self,ZS_Talk))
	{
		return TRUE;
	};
};

func void DIA_Larius_Hello_Info()
{
	AI_Output(self,other,"DIA_Larius_Hello_01_00");	//��� �� ������� �����? ���� ���� ���-�� �����, �������� �� �����.
	if(hero.guild == GIL_PAL)
	{
		AI_Output(self,other,"DIA_Larius_Richterueberfall_01_02");	//���� ���� �� ���� ������...
	};
	if(hero.guild == GIL_KDF)
	{
		AI_Output(self,other,"DIA_Larius_Richterueberfall_01_03");	//���� ���� �� ����������� ���...
	};
};


instance DIA_Larius_WhoAreYou(C_Info)
{
	npc = VLK_400_Larius;
	nr = 1;
	condition = DIA_Larius_WhoAreYou_Condition;
	information = DIA_Larius_WhoAreYou_Info;
	permanent = FALSE;
	description = "��� ��?";
};


func int DIA_Larius_WhoAreYou_Condition()
{
	return TRUE;
};

func void DIA_Larius_WhoAreYou_Info()
{
	AI_Output(other,self,"DIA_Larius_WhoAreYou_15_00");	//��� ��?
	AI_Output(self,other,"DIA_Larius_WhoAreYou_01_01");	//� ������, ����������.
	AI_Output(self,other,"DIA_Larius_WhoAreYou_01_02");	//���� ���� � �� ������ ���� ������� � ������ ������, � ����� ����������� ������� � ���� ������.
	AI_Output(other,self,"DIA_Larius_WhoAreYou_15_03");	//�� ���� �� ���� ����� �����������?
	AI_Output(self,other,"DIA_Larius_WhoAreYou_01_04");	//�... ��... � ��������� ������ ��� ���� �������.
	AI_Output(self,other,"DIA_Larius_WhoAreYou_01_05");	//����� ��������� ���� ���� �����, �� ������� ����, ���� �� � ������.
};


instance DIA_Larius_Disturb(C_Info)
{
	npc = VLK_400_Larius;
	nr = 2;
	condition = DIA_Larius_Disturb_Condition;
	information = DIA_Larius_Disturb_Info;
	permanent = TRUE;
	description = "� �� ����� ��������.";
};


func int DIA_Larius_Disturb_Condition()
{
	return TRUE;
};

func void DIA_Larius_Disturb_Info()
{
	AI_Output(other,self,"DIA_Larius_Disturb_15_00");	//� �� ����� ��������.
	if(!Npc_KnowsInfo(other,DIA_Larius_Dragons_Proof))
	{
		AI_Output(self,other,"DIA_Larius_Disturb_01_01");	//��, ��� �� �����, �������! ��������!
	}
	else
	{
		B_Say(self,other,"$ABS_GOOD");
	};
};


instance DIA_Larius_DieLage(C_Info)
{
	npc = VLK_400_Larius;
	nr = 3;
	condition = DIA_Larius_DieLage_Condition;
	information = DIA_Larius_DieLage_Info;
	permanent = TRUE;
	description = "��� ����?";
};


func int DIA_Larius_DieLage_Condition()
{
	return TRUE;
};

func void DIA_Larius_DieLage_Info()
{
	AI_Output(other,self,"DIA_Larius_DieLage_15_00");	//��� ����?
	if(!Npc_KnowsInfo(other,DIA_Larius_Dragons_Proof))
	{
		AI_Output(self,other,"DIA_Larius_DieLage_01_01");	//���� �� ����� ����� ����? ���� �������� �����, ���� ����� ���������� ����� ������, ����������� ����� ������.
	}
	else
	{
		AI_Output(self,other,"DIA_Lothar_Add_01_47");	//����� ��.
	};
};


instance DIA_Larius_Richterueberfall(C_Info)
{
	npc = VLK_400_Larius;
	nr = 4;
	condition = DIA_Larius_Richterueberfall_Condition;
	information = DIA_Larius_Richterueberfall_Info;
	description = "����� ����� ��������, ����� ��� ����� ����. � ���� �������� ���.";
};


func int DIA_Larius_Richterueberfall_Condition()
{
	if(SCKnowsRichterKomproBrief == TRUE)
	{
		return TRUE;
	};
};

func void DIA_Larius_Richterueberfall_Info()
{
	AI_Output(other,self,"DIA_Larius_Richterueberfall_15_00");	//����� ����� ��������, ����� ��� ����� ����. � ���� �������� ���.
	AI_Output(self,other,"DIA_Larius_Richterueberfall_01_01");	//�� ���� ������, ��� �� ������, ����� � ������� ���� � �������?
	AI_Output(self,other,"DIA_Larius_Richterueberfall_01_04");	//��� ����� ��� ��� ����� ��� � ���� ������. �� ���� ���� �������� ��������� ������� ��� ������ �����!
	if(Npc_KnowsInfo(other,DIA_Larius_Dragons_Proof))
	{
		AI_Output(other,self,"DIA_Sekob_Heilung_15_02");	//(���� ��� ���) ������� ������.
	};
	B_GivePlayerXP(XP_Ambient);
	AI_StopProcessInfos(self);
};


instance DIA_Larius_Dragons(C_Info)
{
	npc = VLK_400_Larius;
	nr = 1;
	condition = DIA_Larius_Dragons_Condition;
	information = DIA_Larius_Dragons_Info;
	description = "�������� - ����� ������ �������� �������!";
};


func int DIA_Larius_Dragons_Condition()
{
	if((Npc_KnowsInfo(other,DIA_Larius_WhoAreYou) || Npc_KnowsInfo(other,DIA_Gaertner_Job)) && (Kapitel < 5))
	{
		return TRUE;
	};
};

func void DIA_Larius_Dragons_Info()
{
	AI_Output(other,self,"DIA_Lothar_Dragons_15_00");	//�������� - ����� ������ �������� �������!
	AI_Output(self,other,"DIA_Larius_Richterueberfall_01_01");	//�� ���� ������, ��� �� ������, ����� � ������� ���� � �������?
	B_Say(self,other,"$GETUPANDBEGONE");
	Player_TalkedAboutDragonsToSomeone = TRUE;
	AI_StopProcessInfos(self);
};


instance DIA_Larius_Dragons_Proof(C_Info)
{
	npc = VLK_400_Larius;
	nr = 1;
	condition = DIA_Larius_Dragons_Proof_Condition;
	information = DIA_Larius_Dragons_Proof_Info;
	description = "� ���� ���� ��������������! ��� ������ �� ������������ �������!";
};


func int DIA_Larius_Dragons_Proof_Condition()
{
	if(Npc_KnowsInfo(other,DIA_Larius_Dragons) && Npc_HasItems(other,ItWr_PaladinLetter_MIS))
	{
		return TRUE;
	};
};

func void DIA_Larius_Dragons_Proof_Info()
{
	DIA_Lothar_OWRunningBrief_Info();
	B_GivePlayerXP(100);
};


instance DIA_Larius_PICKPOCKET(C_Info)
{
	npc = VLK_400_Larius;
	nr = 900;
	condition = DIA_Larius_PICKPOCKET_Condition;
	information = DIA_Larius_PICKPOCKET_Info;
	permanent = TRUE;
	description = Pickpocket_40;
};


func int DIA_Larius_PICKPOCKET_Condition()
{
	return C_Beklauen(35,120);
};

func void DIA_Larius_PICKPOCKET_Info()
{
	Info_ClearChoices(DIA_Larius_PICKPOCKET);
	Info_AddChoice(DIA_Larius_PICKPOCKET,Dialog_Back,DIA_Larius_PICKPOCKET_BACK);
	Info_AddChoice(DIA_Larius_PICKPOCKET,DIALOG_PICKPOCKET,DIA_Larius_PICKPOCKET_DoIt);
};

func void DIA_Larius_PICKPOCKET_DoIt()
{
	B_Beklauen();
	Info_ClearChoices(DIA_Larius_PICKPOCKET);
};

func void DIA_Larius_PICKPOCKET_BACK()
{
	Info_ClearChoices(DIA_Larius_PICKPOCKET);
};

