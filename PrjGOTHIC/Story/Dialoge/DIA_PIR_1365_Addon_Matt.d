
instance DIA_Addon_Matt_EXIT(C_Info)
{
	npc = PIR_1365_Addon_Matt;
	nr = 999;
	condition = DIA_Addon_Matt_EXIT_Condition;
	information = DIA_Addon_Matt_EXIT_Info;
	permanent = TRUE;
	description = Dialog_Ende;
};


func int DIA_Addon_Matt_EXIT_Condition()
{
	return TRUE;
};

func void DIA_Addon_Matt_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Addon_Matt_PICKPOCKET(C_Info)
{
	npc = PIR_1365_Addon_Matt;
	nr = 900;
	condition = DIA_Addon_Matt_PICKPOCKET_Condition;
	information = DIA_Addon_Matt_PICKPOCKET_Info;
	permanent = TRUE;
	description = Pickpocket_60;
};


func int DIA_Addon_Matt_PICKPOCKET_Condition()
{
	return C_Beklauen(55,91);
};

func void DIA_Addon_Matt_PICKPOCKET_Info()
{
	Info_ClearChoices(DIA_Addon_Matt_PICKPOCKET);
	Info_AddChoice(DIA_Addon_Matt_PICKPOCKET,Dialog_Back,DIA_Addon_Matt_PICKPOCKET_BACK);
	Info_AddChoice(DIA_Addon_Matt_PICKPOCKET,DIALOG_PICKPOCKET,DIA_Addon_Matt_PICKPOCKET_DoIt);
};

func void DIA_Addon_Matt_PICKPOCKET_DoIt()
{
	B_Beklauen();
	Info_ClearChoices(DIA_Addon_Matt_PICKPOCKET);
};

func void DIA_Addon_Matt_PICKPOCKET_BACK()
{
	Info_ClearChoices(DIA_Addon_Matt_PICKPOCKET);
};


instance DIA_Addon_Matt_Hello(C_Info)
{
	npc = PIR_1365_Addon_Matt;
	nr = 1;
	condition = DIA_Addon_Matt_Hello_Condition;
	information = DIA_Addon_Matt_Hello_Info;
	permanent = FALSE;
	important = TRUE;
};


func int DIA_Addon_Matt_Hello_Condition()
{
	if(Npc_IsInState(self,ZS_Talk) && (self.aivar[AIV_TalkedToPlayer] == FALSE))
	{
		return TRUE;
	};
};

func void DIA_Addon_Matt_Hello_Info()
{
	AI_Output(self,other,"DIA_Addon_Matt_Hello_10_01");	//�, �������? ���������. ��� ������ ���������� ������ �������.
};


instance DIA_Addon_Matt_PERM(C_Info)
{
	npc = PIR_1365_Addon_Matt;
	nr = 2;
	condition = DIA_Addon_Matt_PERM_Condition;
	information = DIA_Addon_Matt_PERM_Info;
	permanent = TRUE;
	description = "��� ����?";
};


func int DIA_Addon_Matt_PERM_Condition()
{
	return TRUE;
};

func void DIA_Addon_Matt_PERM_Info()
{
	AI_Output(other,self,"DIA_Addon_Matt_Alright_15_01");	//��� ����?
	if(self.aivar[AIV_PARTYMEMBER] == TRUE)
	{
		if(self.attribute[ATR_HITPOINTS] < 100)
		{
			AI_Output(self,other,"DIA_Addon_Matt_Alright_10_02");	//����� ����� ����� '�������� �����' �� �� �����?
		}
		else
		{
			AI_Output(self,other,"DIA_Addon_Matt_Alright_10_01");	//��� � �������, �������!
		};
	}
	else if((GregIsBack == TRUE) && !Npc_IsDead(Greg))
	{
		AI_Output(self,other,"DIA_Addon_Matt_Job_10_01");	//������? � ��� ������ ��� �������.
		AI_Output(self,other,"DIA_Addon_Matt_Job_10_02");	//�������� ������ �����, ���� ���� �����, ��� ������ ������.
	}
	else
	{
		AI_Output(self,other,"DIA_Addon_Matt_Job_10_03");	//������ � ������ ��� ��������. ��� ��� � ��������� ������� ���������.
		AI_Output(self,other,"DIA_Addon_Matt_Job_10_04");	//�� ����� �����, ������, � �� ������ �� �� �����.
		AI_Output(self,other,"DIA_Addon_Matt_Job_10_05");	//������� �����, ��� ��� �������� ����� ���������� �������, ��� �� ������������.
	};
};


instance DIA_Addon_Matt_Bandits(C_Info)
{
	npc = PIR_1365_Addon_Matt;
	nr = 3;
	condition = DIA_Addon_Matt_Bandits_Condition;
	information = DIA_Addon_Matt_Bandits_Info;
	description = "��� �� ������ �� ���� ��������?";
};


func int DIA_Addon_Matt_Bandits_Condition()
{
	return TRUE;
};

func void DIA_Addon_Matt_Bandits_Info()
{
	AI_Output(other,self,"DIA_Addon_Matt_Bandits_15_03");	//��� �� ������ � ��������?
	AI_Output(self,other,"DIA_Addon_Matt_Bandits_10_01");	//�� ������ � ����, ����� ����, ��� ��� ���������� ������ � �� ����� ��� ����������� ��� ������?
	AI_Output(other,self,"DIA_Addon_Matt_Bandits_15_02");	//��.
	AI_Output(self,other,"DIA_Addon_Matt_Bandits_10_02");	//� ��� ����� ������.
	AI_Output(self,other,"DIA_Addon_Matt_Bandits_10_03");	//��, �� ������� ����, � ��� ���� ����� ������. �� ��������� ������ ������ ��� ��� ��� � �� ���������.
	AI_Output(self,other,"DIA_Addon_Matt_Bandits_10_04");	//�� � ����������, ��� ��� ������� ��� �� �������� �������.
	AI_Output(self,other,"DIA_Addon_Matt_Bandits_10_05");	//�����, ��� ��� ������ ������� ���������.
};


instance DIA_Addon_Matt_Francis(C_Info)
{
	npc = PIR_1365_Addon_Matt;
	nr = 4;
	condition = DIA_Addon_Matt_Francis_Condition;
	information = DIA_Addon_Matt_Francis_Info;
	description = "��� �� ������ � ��������?";
};


func int DIA_Addon_Matt_Francis_Condition()
{
	if(Francis_ausgeschissen == FALSE)
	{
		if(Npc_KnowsInfo(other,DIA_Addon_Skip_GregsHut) || (Francis.aivar[AIV_TalkedToPlayer] == TRUE))
		{
			return TRUE;
		};
	};
};

func void DIA_Addon_Matt_Francis_Info()
{
	AI_Output(other,self,"DIA_Addon_Brandon_Matt_15_00");	//��� �� ������ � ��������?
	AI_Output(self,other,"DIA_Addon_Matt_Francis_10_01");	//����� ����, ��� �� ����� � �� ����������� �� ������ �������������?
	AI_Output(other,self,"DIA_Addon_Brandon_Matt_15_02");	//��.
	AI_Output(self,other,"DIA_Addon_Matt_Francis_10_03");	//���� ��������... ��-�... ���, ������ ������ � ������ �� ��������.
};


instance DIA_Addon_Matt_Anheuern(C_Info)
{
	npc = PIR_1365_Addon_Matt;
	nr = 11;
	condition = DIA_Addon_Matt_Anheuern_Condition;
	information = DIA_Addon_Matt_Anheuern_Info;
	permanent = FALSE;
	description = "������ �� ����.";
};


func int DIA_Addon_Matt_Anheuern_Condition()
{
	if(MIS_Addon_Greg_ClearCanyon == LOG_Running)
	{
		return TRUE;
	};
};

func void DIA_Addon_Matt_Anheuern_Info()
{
	AI_Output(other,self,"DIA_Addon_Matt_FollowMe_15_00");	//������ �� ����.
	AI_Output(self,other,"DIA_Addon_Matt_FollowMe_10_01");	//� �� ���� ������ ������ ����. � �������.
	AI_Output(other,self,"DIA_Addon_Matt_FollowMe_15_02");	//������ �����.
	AI_Output(self,other,"DIA_Addon_Matt_FollowMe_10_03");	//�������, �������. ���, �������, ��� ������. ��� ���.
	AI_Output(self,other,"DIA_Addon_Matt_FollowMe_10_04");	//� ���� �� ������������?
	Info_ClearChoices(DIA_Addon_Matt_Anheuern);
	Info_AddChoice(DIA_Addon_Matt_Anheuern,"�������� � ��� �� ����.",DIA_Addon_Matt_Anheuern_ShutUp);
	Info_AddChoice(DIA_Addon_Matt_Anheuern,"�� ������ �������� ������ �� ������.",DIA_Addon_Matt_Anheuern_ClearCanyon);
};

func void DIA_Addon_Matt_Anheuern_ShutUp()
{
	AI_Output(other,self,"DIA_Addon_Matt_FollowMe_ShutUp_15_00");	//�������� � ��� �� ����.
	AI_Output(self,other,"DIA_Addon_Matt_FollowMe_ShutUp_10_01");	//(�������������) ����, �������!
	Info_ClearChoices(DIA_Addon_Matt_Anheuern);
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine(self,"FOLLOW");
	self.aivar[AIV_PARTYMEMBER] = TRUE;
};

func void DIA_Addon_Matt_Anheuern_ClearCanyon()
{
	AI_Output(other,self,"DIA_Addon_Matt_FollowMe_ClearCanyon_15_00");	//�� ������ �������� ������ �� ������.
	AI_Output(self,other,"DIA_Addon_Matt_FollowMe_ClearCanyon_10_01");	//�� ��������. ��� �� �����! � � ����� ������������ ����� �����.
	AI_Output(other,self,"DIA_Addon_Matt_FollowMe_ClearCanyon_15_02");	//� ����. �� ��� ���, �� �����?
	AI_Output(self,other,"DIA_Addon_Matt_FollowMe_ClearCanyon_10_03");	//(��������) �������, � ���� ���������� ������� � �������� ������. ��� ��� �����������.
	Info_ClearChoices(DIA_Addon_Matt_Anheuern);
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine(self,"FOLLOW");
	self.aivar[AIV_PARTYMEMBER] = TRUE;
};


instance DIA_Addon_Matt_ComeOn(C_Info)
{
	npc = PIR_1365_Addon_Matt;
	nr = 12;
	condition = DIA_Addon_Matt_ComeOn_Condition;
	information = DIA_Addon_Matt_ComeOn_Info;
	permanent = TRUE;
	description = "������ �� ����.";
};


func int DIA_Addon_Matt_ComeOn_Condition()
{
	if((self.aivar[AIV_PARTYMEMBER] == FALSE) && (MIS_Addon_Greg_ClearCanyon == LOG_Running) && Npc_KnowsInfo(other,DIA_Addon_Matt_Anheuern))
	{
		return TRUE;
	};
};

func void DIA_Addon_Matt_ComeOn_Info()
{
	AI_Output(other,self,"DIA_Addon_Matt_ComeOn_15_00");	//���� �� ����.
	if(C_GregsPiratesTooFar())
	{
		B_Say(self,other,"$RUNAWAY");
		AI_StopProcessInfos(self);
	}
	else
	{
		AI_Output(self,other,"DIA_Addon_Matt_ComeOn_10_01");	//����, �������!
		AI_StopProcessInfos(self);
		B_Addon_PiratesFollowAgain();
		Npc_ExchangeRoutine(self,"FOLLOW");
		self.aivar[AIV_PARTYMEMBER] = TRUE;
	};
};


instance DIA_Addon_Matt_GoHome(C_Info)
{
	npc = PIR_1365_Addon_Matt;
	nr = 13;
	condition = DIA_Addon_Matt_GoHome_Condition;
	information = DIA_Addon_Matt_GoHome_Info;
	permanent = TRUE;
	description = "�� ��� ������ �� �����.";
};


func int DIA_Addon_Matt_GoHome_Condition()
{
	if(self.aivar[AIV_PARTYMEMBER] == TRUE)
	{
		return TRUE;
	};
};

func void DIA_Addon_Matt_GoHome_Info()
{
	AI_Output(other,self,"DIA_Addon_Matt_DontNeedYou_15_00");	//�� ��� ������ �� �����.
	AI_Output(self,other,"DIA_Addon_Matt_GoHome_10_01");	//(�������� ��� ���) ��� �� �������� ������ �������� �����!
	AI_StopProcessInfos(self);
	self.aivar[AIV_PARTYMEMBER] = FALSE;
	Npc_ExchangeRoutine(self,"START");
};


instance DIA_Addon_Matt_TooFar(C_Info)
{
	npc = PIR_1365_Addon_Matt;
	nr = 14;
	condition = DIA_Addon_Matt_TooFar_Condition;
	information = DIA_Addon_Matt_TooFar_Info;
	permanent = TRUE;
	important = TRUE;
};


func int DIA_Addon_Matt_TooFar_Condition()
{
	if((self.aivar[AIV_PARTYMEMBER] == TRUE) && C_GregsPiratesTooFar())
	{
		return TRUE;
	};
};

func void DIA_Addon_Matt_TooFar_Info()
{
	AI_Output(self,other,"DIA_Addon_Matt_TooFar_10_01");	//������ ���� �������� ���� ������, (�������������) �������.
	if(C_HowManyPiratesInParty() >= 2)
	{
		AI_Output(self,other,"DIA_Addon_Matt_TooFar_10_03");	//�� � �������� ������������ � ������!
	}
	else
	{
		AI_Output(self,other,"DIA_Addon_Matt_TooFar_10_02");	//� ����������� � ������!
	};
	B_Addon_PiratesGoHome();
	AI_StopProcessInfos(self);
};


instance DIA_Addon_Matt_Healing(C_Info)
{
	npc = PIR_1365_Addon_Matt;
	nr = 15;
	condition = DIA_Addon_Matt_Healing_Condition;
	information = DIA_Addon_Matt_Healing_Info;
	permanent = FALSE;
	important = TRUE;
};


func int DIA_Addon_Matt_Healing_Condition()
{
	if((self.aivar[AIV_PARTYMEMBER] == TRUE) && (self.attribute[ATR_HITPOINTS] < (self.attribute[ATR_HITPOINTS_MAX] - 100)))
	{
		return TRUE;
	};
};

func void DIA_Addon_Matt_Healing_Info()
{
	AI_Output(self,other,"DIA_Addon_Matt_Healing_10_01");	//��, �������, ��� �� �������� �� �������� �����!
};

