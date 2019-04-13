
instance DIA_Addon_BDT_10018_Torwache_EXIT(C_Info)
{
	npc = BDT_10018_Addon_Torwache;
	nr = 999;
	condition = DIA_Addon_BDT_10018_Torwache_EXIT_Condition;
	information = DIA_Addon_BDT_10018_Torwache_EXIT_Info;
	permanent = TRUE;
	description = "�� ��� ���������.";
};


func int DIA_Addon_BDT_10018_Torwache_EXIT_Condition()
{
	return TRUE;
};

func void DIA_Addon_BDT_10018_Torwache_EXIT_Info()
{
	AI_Output(other,self,"DIA_Addon_BDT_10018_Torwache_EXIT_15_00");	//�� ��� ���������.
	if(BDT_100018_Einmal == FALSE)
	{
		AI_Output(self,other,"DIA_Addon_BDT_10018_Torwache_EXIT_04_01");	//�� ������, ��� � ���� �����...
		BDT_100018_Einmal = TRUE;
	}
	else
	{
		AI_Output(self,other,"DIA_Addon_BDT_10018_Torwache_EXIT_04_02");	//������.
	};
	AI_StopProcessInfos(self);
};


const string BDT_10018_Checkpoint = "BL_RAVEN_CHECK";

instance DIA_Addon_BDT_10018_Torwache_FirstWarn(C_Info)
{
	npc = BDT_10018_Addon_Torwache;
	nr = 1;
	condition = DIA_Addon_BDT_10018_Torwache_FirstWarn_Condition;
	information = DIA_Addon_BDT_10018_Torwache_FirstWarn_Info;
	permanent = TRUE;
	important = TRUE;
};


func int DIA_Addon_BDT_10018_Torwache_FirstWarn_Condition()
{
	if(Npc_GetDistToWP(other,BDT_10018_Checkpoint) <= 700)
	{
		Npc_SetRefuseTalk(self,5);
		return FALSE;
	};
	if((self.aivar[AIV_Guardpassage_Status] == GP_NONE) && (self.aivar[AIV_PASSGATE] == FALSE) && Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) && !Npc_RefuseTalk(self))
	{
		return TRUE;
	};
};

func void DIA_Addon_BDT_10018_Torwache_FirstWarn_Info()
{
	if(BDT_100018_Tells == FALSE)
	{
		AI_Output(self,other,"DIA_Addon_BDT_10018_Torwache_FirstWarn_04_00");	//��, ����������! �� ���� �� ��������, ��� ��� ������!
		AI_Output(other,self,"DIA_Addon_BDT_10018_Torwache_FirstWarn_15_01");	//���� � ������ - ��� ����� ���������� � �������.
		AI_Output(self,other,"DIA_Addon_BDT_10018_Torwache_FirstWarn_04_02");	//����� �� ������ ������� ����. ������ ������ ������.
		BDT_100018_Tells = TRUE;
		Log_CreateTopic(Topic_Addon_Tempel,LOG_MISSION);
		Log_SetTopicStatus(Topic_Addon_Tempel,LOG_Running);
		B_LogEntry(Topic_Addon_Tempel,"�������� � ����� �� ��������� ���� � ����. � ������ ����� ������ ������� ������.");
	}
	else
	{
		AI_Output(self,other,"DIA_Addon_BDT_10018_Torwache_FirstWarn_04_03");	//����� ��? �� ��������� ���� ���������!
	};
	other.aivar[AIV_LastDistToWP] = Npc_GetDistToWP(other,BDT_10018_Checkpoint);
	self.aivar[AIV_Guardpassage_Status] = GP_FirstWarnGiven;
};


instance DIA_Addon_BDT_10018_Torwache_SecondWarn(C_Info)
{
	npc = BDT_10018_Addon_Torwache;
	nr = 2;
	condition = DIA_Addon_BDT_10018_Torwache_SecondWarn_Condition;
	information = DIA_Addon_BDT_10018_Torwache_SecondWarn_Info;
	permanent = TRUE;
	important = TRUE;
};


func int DIA_Addon_BDT_10018_Torwache_SecondWarn_Condition()
{
	if((self.aivar[AIV_Guardpassage_Status] == GP_FirstWarnGiven) && (self.aivar[AIV_PASSGATE] == FALSE) && Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) && (Npc_GetDistToWP(other,BDT_10018_Checkpoint) < (other.aivar[AIV_LastDistToWP] - 50)))
	{
		return TRUE;
	};
};

func void DIA_Addon_BDT_10018_Torwache_SecondWarn_Info()
{
	AI_Output(self,other,"DIA_Addon_BDT_10018_Torwache_SecondWarn_04_00");	//��������� ��� ������ ��� ���� ���������!
	other.aivar[AIV_LastDistToWP] = Npc_GetDistToWP(other,BDT_10018_Checkpoint);
	self.aivar[AIV_Guardpassage_Status] = GP_SecondWarnGiven;
	AI_StopProcessInfos(self);
};


instance DIA_Addon_BDT_10018_Torwache_Attack(C_Info)
{
	npc = BDT_10018_Addon_Torwache;
	nr = 3;
	condition = DIA_Addon_BDT_10018_Torwache_Attack_Condition;
	information = DIA_Addon_BDT_10018_Torwache_Attack_Info;
	permanent = TRUE;
	important = TRUE;
};


func int DIA_Addon_BDT_10018_Torwache_Attack_Condition()
{
	if((self.aivar[AIV_Guardpassage_Status] == GP_SecondWarnGiven) && (self.aivar[AIV_PASSGATE] == FALSE) && Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) && (Npc_GetDistToWP(other,BDT_10018_Checkpoint) < (other.aivar[AIV_LastDistToWP] - 50)))
	{
		return TRUE;
	};
};

func void DIA_Addon_BDT_10018_Torwache_Attack_Info()
{
	other.aivar[AIV_LastDistToWP] = 0;
	self.aivar[AIV_Guardpassage_Status] = GP_NONE;
	AI_Output(self,other,"DIA_Addon_BDT_10018_Torwache_Attack_04_00");	//�� ������!
	AI_StopProcessInfos(self);
	B_Attack(self,other,AR_GuardStopsIntruder,0);
};


instance DIA_Addon_BDT_10018_Torwache_Hi(C_Info)
{
	npc = BDT_10018_Addon_Torwache;
	nr = 2;
	condition = DIA_Addon_10018_Torwache_Hi_Condition;
	information = DIA_Addon_10018_Torwache_Hi_Info;
	permanent = FALSE;
	description = "��� ��������� �����, � ������ ������ ������� � ����.";
};


func int DIA_Addon_10018_Torwache_Hi_Condition()
{
	if(!Npc_IsDead(Bloodwyn))
	{
		return TRUE;
	};
};

func void DIA_Addon_10018_Torwache_Hi_Info()
{
	AI_Output(other,self,"DIA_Addon_BDT_10018_Torwache_Hi_15_00");	//��� ��������� �����, � ������ ������ ������� � ����.
	AI_Output(self,other,"DIA_Addon_BDT_10018_Torwache_Hi_04_01");	//���. ��� �� �����. ������ ������� ����� ���������� �����.
	B_LogEntry(Topic_Addon_Tempel,"� ���� ��������� �������� ������ ��������. ��������, � ����� ������� ���� ����� ����.");
};


instance DIA_Addon_BDT_10018_Torwache_Bloodwyn(C_Info)
{
	npc = BDT_10018_Addon_Torwache;
	nr = 2;
	condition = DIA_Addon_10018_Torwache_Bloodwyn_Condition;
	information = DIA_Addon_10018_Torwache_Bloodwyn_Info;
	permanent = FALSE;
	description = "�������? � ����� �� �� �����?";
};


func int DIA_Addon_10018_Torwache_Bloodwyn_Condition()
{
	if(Npc_KnowsInfo(other,DIA_Addon_BDT_10018_Torwache_Hi) && !Npc_IsDead(Bloodwyn))
	{
		return TRUE;
	};
};

func void DIA_Addon_10018_Torwache_Bloodwyn_Info()
{
	AI_Output(other,self,"DIA_Addon_BDT_10018_Torwache_Bloodwyn_15_00");	//�������? � ����� �� �� �����?
	AI_Output(self,other,"DIA_Addon_BDT_10018_Torwache_Bloodwyn_04_01");	//�� �������, ��� �����-����. � ���� �� �������, ��� ���-�� ������� ��������, �� ������� ���� � ����.
};


instance DIA_Addon_BDT_10018_Torwache_Bribe(C_Info)
{
	npc = BDT_10018_Addon_Torwache;
	nr = 9;
	condition = DIA_Addon_10018_Torwache_Bribe_Condition;
	information = DIA_Addon_10018_Torwache_Bribe_Info;
	permanent = FALSE;
	description = "� ��� ���� ������ �������, ���� �� �������� ����.";
};


func int DIA_Addon_10018_Torwache_Bribe_Condition()
{
	if(Npc_KnowsInfo(other,DIA_Addon_BDT_10018_Torwache_Hi) && !Npc_IsDead(Bloodwyn))
	{
		return TRUE;
	};
};

func void DIA_Addon_10018_Torwache_Bribe_Info()
{
	AI_Output(other,self,"DIA_Addon_BDT_10018_Torwache_Bribe_15_00");	//� ��� ���� ������ �������, ���� �� �������� ����.
	AI_Output(self,other,"DIA_Addon_BDT_10018_Torwache_Bribe_04_01");	//������� ���� �����, ��������.
};


instance DIA_Addon_BDT_10018_Torwache_Drin(C_Info)
{
	npc = BDT_10018_Addon_Torwache;
	nr = 90;
	condition = DIA_Addon_10018_Torwache_Drin_Condition;
	information = DIA_Addon_10018_Torwache_Drin_Info;
	permanent = FALSE;
	description = "������� ���, ������? ����� ������ ���.";
};


func int DIA_Addon_10018_Torwache_Drin_Condition()
{
	if(Npc_KnowsInfo(other,DIA_Addon_BDT_10018_Torwache_Hi) && !Npc_IsDead(Bloodwyn))
	{
		return TRUE;
	};
};

func void DIA_Addon_10018_Torwache_Drin_Info()
{
	AI_Output(other,self,"DIA_Addon_BDT_10018_Torwache_Drin_15_00");	//������� ���, ������? ����� ������ ���.
	AI_Output(self,other,"DIA_Addon_BDT_10018_Torwache_Drin_04_01");	//��! �� ������������� �������, ��� � ��� ������?
	AI_Output(self,other,"DIA_Addon_BDT_10018_Torwache_Drin_04_02");	//����� ����, � ������ �� ������ � ������ �������. �� ���� ������ ������������� ����� �����. ������ �����?
	AI_Output(self,other,"DIA_Addon_BDT_10018_Torwache_Drin_04_03");	//��� ��� ����� ��������� � ����� ��� ������� ���-������ ��� - �� �� ����������� ����� ������!
	MIS_BloodwynRaus = LOG_Running;
	B_LogEntry(Topic_Addon_Tempel,"������� ��������� � �����. �� ��� ��� ������ �� ����. ��������, ��� ����� ���������� � �����.");
};


instance DIA_Addon_BDT_10018_Torwache_kopf(C_Info)
{
	npc = BDT_10018_Addon_Torwache;
	nr = 90;
	condition = DIA_Addon_10018_Torwache_kopf_Condition;
	information = DIA_Addon_10018_Torwache_kopf_Info;
	permanent = FALSE;
	description = "(�������� ������ ��������)";
};


func int DIA_Addon_10018_Torwache_kopf_Condition()
{
	if(Npc_HasItems(other,ItMi_Addon_Bloodwyn_Kopf))
	{
		return TRUE;
	};
};

func void DIA_Addon_10018_Torwache_kopf_Info()
{
	AI_Output(other,self,"DIA_Addon_BDT_10018_Torwache_kopf_15_00");	//���! �� ��� ��� ������ ���������� ����?!
	AI_Output(self,other,"DIA_Addon_BDT_10018_Torwache_kopf_04_01");	//��� ���... ���... �������?.. (������) ���...
	AI_Output(self,other,"DIA_Addon_BDT_10018_Torwache_kopf_04_02");	//�-���... � ���� �������... ��, �������...
	MIS_BloodwynRaus = LOG_SUCCESS;
	self.aivar[AIV_PASSGATE] = TRUE;
	AI_StopProcessInfos(self);
};

