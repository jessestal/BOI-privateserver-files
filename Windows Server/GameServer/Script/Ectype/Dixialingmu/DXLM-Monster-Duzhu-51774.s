	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2011/07/31
	//		Author�����쳽����ϸ������������
	//		TaskName����ԯ��رջ���591�Ĺ���Ѹ�����
	//		TaskID��DXLM-Monster-Duzhu-51774.s
	//
	//****************************************

	function OnDead(){
	
	$count = GetEctypeVar(-1, 97)
	$count = $count + 1
	SetEctypeVar(97, $count )
	
}