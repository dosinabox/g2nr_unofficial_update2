
instance DIA_Fed_EXIT(C_Info)
{
	npc = STRF_1106_Fed;
	nr = 999;
	condition = DIA_Fed_EXIT_Condition;
	information = DIA_Fed_EXIT_Info;
	permanent = TRUE;
	description = Dialog_Ende;
};


func int DIA_Fed_EXIT_Condition()
{
	return TRUE;
};

func void DIA_Fed_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Fed_HALLO(C_Info)
{
	npc = STRF_1106_Fed;
	nr = 2;
	condition = DIA_Fed_HALLO_Condition;
	information = DIA_Fed_HALLO_Info;
	permanent = FALSE;
	important = TRUE;
};


func int DIA_Fed_HALLO_Condition()
{
	if(Npc_IsInState(self,ZS_Talk) && (MIS_Fajeth_Kill_Snapper != LOG_Success))
	{
		return TRUE;
	};
};

func void DIA_Fed_HALLO_Info()
{
	AI_Output(self,other,"DIA_Fed_HALLO_08_00");	//��� ���� ����� �� ����? � ������ �� �����!
	AI_Output(other,self,"DIA_Fed_HALLO_15_01");	//��������� - ����� �� �����, ����� �� ����-�� ���.
	AI_Output(self,other,"DIA_Fed_HALLO_08_02");	//����� ������. ������, �� ��������� ��������� ���� ��������� ������� �������� ������ - � ����� �� ��� �� ��������.
	AI_Output(self,other,"DIA_Fed_HALLO_08_03");	//�� ���� ������� ��������. �� ���� �� �� �������. � �������� �����, ���� ��� ��� �� ��������.
};


instance DIA_Fed_Snapper(C_Info)
{
	npc = STRF_1106_Fed;
	nr = 3;
	condition = DIA_Fed_Snapper_Condition;
	information = DIA_Fed_Snapper_Info;
	permanent = FALSE;
	description = "��� �� ������ � ���������?";
};


func int DIA_Fed_Snapper_Condition()
{
	if(MIS_Fajeth_Kill_Snapper == LOG_Running)
	{
		return TRUE;
	};
};

func void DIA_Fed_Snapper_Info()
{
	AI_Output(other,self,"DIA_Fed_Snapper_15_00");	//��� �� ������ � ���������?
	AI_Output(self,other,"DIA_Fed_Snapper_08_01");	//������ ������ �� ���� �����. ����� �� ������� � ����� ����� �� ������ ������.
	AI_Output(self,other,"DIA_Fed_Snapper_08_02");	//� ������ ��������� ����� ��� ���� - �� ������� ����� �����. ��� ������ ��������, ����� � ��� �������� ����.
	AI_Output(self,other,"DIA_Fed_Snapper_08_03");	//��� ������� ��� �����. � ����� ��� ������� �� ��� ������ - ��� ����� ��� ��������...
	AI_Output(other,self,"DIA_Fed_Snapper_15_04");	//�������.
};


instance DIA_Fed_Perm(C_Info)
{
	npc = STRF_1106_Fed;
	nr = 5;
	condition = DIA_Fed_Perm_Condition;
	information = DIA_Fed_Perm_Info;
	permanent = TRUE;
	description = "� ����� ��� � �������?";
};


func int DIA_Fed_Perm_Condition()
{
	return TRUE;
};

func void DIA_Fed_Perm_Info()
{
	AI_Output(other,self,"DIA_Fed_Perm_15_00");	//� ����� ��� � �������?
	if(MIS_Fajeth_Kill_Snapper != LOG_Success)
	{
		AI_Output(self,other,"DIA_Fed_Perm_08_01");	//��� ��������! �� ���������� �� �����? � ��������...
	}
	else
	{
		AI_Output(self,other,"DIA_Fed_Perm_08_02");	//��������, ������, ���������. �� ��� ������ �� ������. ��� �������� - ��� �����, ��� �����, ��� ����.
		AI_Output(self,other,"DIA_Fed_Perm_08_03");	//� ���� ��� ������ ��� ������ ���...
	};
	AI_StopProcessInfos(self);
};


instance DIA_Fed_PICKPOCKET(C_Info)
{
	npc = STRF_1106_Fed;
	nr = 900;
	condition = DIA_Fed_PICKPOCKET_Condition;
	information = DIA_Fed_PICKPOCKET_Info;
	permanent = TRUE;
	description = Pickpocket_40;
};


func int DIA_Fed_PICKPOCKET_Condition()
{
	return C_Beklauen(32,8);
};

func void DIA_Fed_PICKPOCKET_Info()
{
	Info_ClearChoices(DIA_Fed_PICKPOCKET);
	Info_AddChoice(DIA_Fed_PICKPOCKET,Dialog_Back,DIA_Fed_PICKPOCKET_BACK);
	Info_AddChoice(DIA_Fed_PICKPOCKET,DIALOG_PICKPOCKET,DIA_Fed_PICKPOCKET_DoIt);
};

func void DIA_Fed_PICKPOCKET_DoIt()
{
	B_Beklauen();
	Info_ClearChoices(DIA_Fed_PICKPOCKET);
};

func void DIA_Fed_PICKPOCKET_BACK()
{
	Info_ClearChoices(DIA_Fed_PICKPOCKET);
};

