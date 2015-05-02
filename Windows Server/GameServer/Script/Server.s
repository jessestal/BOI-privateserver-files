

	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/08/11
	//		Author:??
	//		TaskName:Server.s
	//		TaskID:?????
	//
	//****************************************


function OnServerStartup(){

	$LineID = GetServerLineID()
//	if $LineID > 8
//		return
//	endif

	//????????
	//??
	$Now_Minute =  GetSystemTime( "minute")
	//??
	$Now_Hour =  GetSystemTime( "hour" )
	//??
	$Now_Mday =  GetSystemTime( "mday" )
	//??
	$Now_Month =  GetSystemTime( "month" )
	//???.2008????
	$Now_Year =  GetSystemTime( "year" )
	//???.0-6
	$Now_Week =  GetSystemTime( "week" )
	//??????.0-365
	$Now_Yday =  GetSystemTime( "yday" )
	//??????
	$Line = GetServerLineID()
	//?????,?????????????????
	SetServerVar(28 ,0)
	//?????,????????
	SetServerVar(40,0)
	SetServerVar(41,0)
	SetServerVar(42,0)
	SetServerVar(43,0)
	SetServerVar(44,0)
	SetServerVar(45,0)
	SetServerVar(46,0)
	SetServerVar(47,0)
	SetServerVar(96,0)
	SetServerVar(98,0)
	//?????????
	SetGlobalVar(91,0)
	SetGlobalVar(92,0)
	SetGlobalVar(93,0)
	//?????,????????
	SetServerVar(61, 0)
	SetServerVar(62, 0)
	SetServerVar(63, 0)
	//BOSS??????
	SetServerVar( 100, 0 )
	SetServerVar( 101, 0 )
	SetServerVar( 102, 0 )
	SetServerVar( 103, 0 )
	//????????????
	SetServerVar( 70, 0 )
	SetServerVar( 71, 0 )
	SetServerVar( 72, 0 )
	SetServerVar( 73, 0 )
	SetServerVar( 74, 0 )
	SetServerVar( 75, 0 )
	SetServerVar( 76, 0 )
	SetServerVar( 77, 0 )
	SetServerVar( 78, 0 )
	SetServerVar( 79, 0 )
	SetServerVar( 81, 0 )
	SetServerVar( 82, 0 )
	SetServerVar( 83, 0 )
	SetServerVar( 84, 0 )
	//??NPC
	DeleteNPC( 1809 )
	DeleteNPC( 1810 )
	DeleteNPC( 1811 )
	DeleteNPC( 1812 )
	DeleteNPC( 1813 )
	DeleteNPC( 1814 )
	DeleteNPC( 1815 )
	DeleteNPC( 1816 )
	DeleteNPC( 1817 )
	DeleteNPC( 1818 )
	DeleteNPC( 1819 )
	DeleteNPC( 1820 )
	DeleteNPC( 1821 )
	DeleteNPC( 1822 )
	DeleteNPC( 1823 )
	DeleteNPC( 1824 )
	DeleteNPC( 1793 )
	DeleteNPC( 1797 )
	DeleteNPC( 1802 )
	DeleteNPC( 1806 )
	//??????NPC
	DeleteNPC( 1936 )
	DeleteNPC( 1937 )
	DeleteNPC( 1938 )
	DeleteNPC( 1939 )
	DeleteNPC( 1940 )
	DeleteNPC( 1941 )
	DeleteNPC( 1942 )
	DeleteNPC( 1943 )
	DeleteNPC( 1944 )
	DeleteNPC( 1945 )
	DeleteNPC( 1946 )
	DeleteNPC( 1947 )
	DeleteNPC( 1948 )
	DeleteNPC( 1949 )
	DeleteNPC( 1950 )
	DeleteNPC( 1951 )
	DeleteNPC( 1952 )
	DeleteNPC( 1953 )
	DeleteNPC( 1954 )
	DeleteNPC( 1955 )
	DeleteNPC( 1956 )
	DeleteNPC( 1957 )
	DeleteNPC( 1958 )
	DeleteNPC( 1959 )
	DeleteNPC( 1960 )
	DeleteNPC( 1961 )
	DeleteNPC( 1962 )
	DeleteNPC( 1963 )
	DeleteNPC( 1964 )
	DeleteNPC( 1965 )
	//?????????NPC
	DeleteNPC( 891 )
	DeleteNPC( 892 )
	DeleteNPC( 893 )
	DeleteNPC( 894 )
	DeleteNPC( 895 )
	DeleteNPC( 896 )
	DeleteNPC( 897 )
	DeleteNPC( 898 )
	DeleteNPC( 899 )
	DeleteNPC( 900 )
	DeleteNPC( 901 )
	DeleteNPC( 902 )
	//2013?????????npc
	DeleteNPC( 1131 )
	DeleteNPC( 1132 )
	DeleteNPC( 1133 )
	DeleteNPC( 1134 )
	DeleteNPC( 1135 )
	DeleteNPC( 1136 )
	DeleteNPC( 1137 )
	DeleteNPC( 1138 )
	DeleteNPC( 1139 )
	DeleteNPC( 1140 )
	DeleteNPC( 1141 )
	DeleteNPC( 1142 )
	DeleteNPC( 1143 )
	DeleteNPC( 1144 )
	DeleteNPC( 1145 )
	DeleteNPC( 1146 )
	DeleteNPC( 1147 )
	DeleteNPC( 1148 )
	DeleteNPC( 1149 )
	DeleteNPC( 1150 )
	DeleteNPC( 1151 )
	DeleteNPC( 1152 )
	DeleteNPC( 1153 )
	DeleteNPC( 1154 )
	DeleteNPC( 1155 )
	DeleteNPC( 1156 )
	DeleteNPC( 1157 )
	DeleteNPC( 1158 )
	//?????NPC
		DeleteNPC( 932 )

	call bawangzhangNPC()

//	if $Now_Year == 2012
//		$monthadd = $Now_Month * 100
//		$dayadd = $monthadd + $Now_Mday
//		if $dayadd < 925
				//????????
				//920-925
				DeleteNPC( 920 )
				DeleteNPC( 921 )
				DeleteNPC( 922 )
				DeleteNPC( 923 )
				DeleteNPC( 924 )
				DeleteNPC( 925 )
//		endif
//	endif


	//???????????
	SetServerVar( 141, 0 )
	SetServerVar( 142, 0 )
	SetServerVar( 143, 0 )
	SetServerVar( 144, 0 )
	SetServerVar( 145, 0 )
	SetServerVar( 146, 0 )

	//????????0
	//SetServerVar(286,0)
	//SetServerVar(287,0)


	//????
	DeleteNPC( 1866 )
	SetServerVar( 59, 0 )
	SetServerVar( 93, 0 )
	SetServerVar( 90, 0 )
	//???????
	$OsiVar = GetServerVar( 99 )
	if $OsiVar == 0
		DeleteNPC( 1885 )
	endif
	//???
	SetServerVar( 97, 0 )
	//????
	DeleteNPC( 154 )
	DeleteNPC( 169 )
	//????
	$AskVar = GetServerVar( 999 )
	$AskVar = $AskVar + 1
	SetServerVar( 999, $AskVar )

	//??????NPC??????
	$Now_Hour =  GetSystemTime( "hour" )
	if $Now_Hour == 20
		//??  55??????????   57?????????
		SetServerVar(55,0)
		SetServerVar(56,0)
		SetServerVar(57,0)
		//????????????NPC????
		SetServerVar( 121 , 0 )
		SetServerVar( 122 , 0 )
		SetServerVar( 123 , 0 )
		SetServerVar( 124 , 0 )
		SetServerVar( 125 , 0 )
		SetServerVar( 126 , 0 )
		SetServerVar( 127 , 0 )
		SetServerVar( 128 , 0 )
		SetServerVar( 129 , 0 )
		SetServerVar( 130 , 0 )
		SetServerVar( 131 , 0 )
		SetServerVar( 132 , 0 )
		SetServerVar( 133 , 0 )
	endif
	//?????????????,??????????????,?????????????,???????????????
	if $Now_Week == 4
		if $Now_Hour >= 21
			SetServerVar(23, 0)
			SetServerVar(30 ,0)
		endif
	endif
	if  $Now_Hour > 19
		if $Now_Hour < 22
			SetServerVar( 190 , 0 )
			SetServerVar( 191 , 0 )
			SetServerVar( 192 , 0 )
			SetServerVar( 193 , 0 )
			SetServerVar( 194 , 0 )
			SetServerVar( 195 , 0 )
		endif
	endif
	if  $Now_Hour == 20
		if $Now_Minute <= 30
			SetServerVar( 139, 0 )
		endif
	endif

//	------------????????----------------------
			AddMonsterByFloat( 55173, 1, 59, 100, 206,0 )
			AddMonsterByFloat( 55173, 1, 59, 98, 206,0 )
			AddMonsterByFloat( 55173, 1, 59, 96, 206,0 )
			AddMonsterByFloat( 55173, 1, 59, 94, 206,0 )
			AddMonsterByFloat( 55173, 1, 59, 92, 206,0 )
			AddMonsterByFloat( 55173, 1, 59, 90, 206,0 )
			AddMonsterByFloat( 55173, 1, 59, 100, 204,0 )
			AddMonsterByFloat( 55173, 1, 59, 98, 204,0 )
			AddMonsterByFloat( 55173, 1, 59, 96, 204,0 )
			AddMonsterByFloat( 55173, 1, 59, 94, 204,0 )
			AddMonsterByFloat( 55173, 1, 59, 92, 204,0 )
			AddMonsterByFloat( 55173, 1, 59, 90, 204,0 )
			AddMonsterByFloat( 55173, 1, 59, 100, 202,0 )
			AddMonsterByFloat( 55173, 1, 59, 98, 202,0 )
			AddMonsterByFloat( 55173, 1, 59, 96, 202,0 )
			AddMonsterByFloat( 55173, 1, 59, 94, 202,0 )
			AddMonsterByFloat( 55173, 1, 59, 92, 202,0 )
			AddMonsterByFloat( 55173, 1, 59, 90, 202,0 )
			AddMonsterByFloat( 55173, 1, 59, 100, 200,0 )
			AddMonsterByFloat( 55173, 1, 59, 98, 200,0 )
			AddMonsterByFloat( 55173, 1, 59, 96, 200,0 )
			AddMonsterByFloat( 55173, 1, 59, 94, 200,0 )
			AddMonsterByFloat( 55173, 1, 59, 92, 200,0 )
			AddMonsterByFloat( 55173, 1, 59, 90, 200,0 )
			AddMonsterByFloat( 55173, 1, 59, 100, 198,0 )
			AddMonsterByFloat( 55173, 1, 59, 98, 198,0 )
			AddMonsterByFloat( 55173, 1, 59, 96, 198,0 )
			AddMonsterByFloat( 55173, 1, 59, 94, 198,0 )
			AddMonsterByFloat( 55173, 1, 59, 92, 198,0 )
			AddMonsterByFloat( 55173, 1, 59, 90, 198,0 )
			AddMonsterByFloat( 55173, 1, 59, 100, 196,0 )
			AddMonsterByFloat( 55173, 1, 59, 98, 196,0 )
			AddMonsterByFloat( 55173, 1, 59, 96, 196,0 )
			AddMonsterByFloat( 55173, 1, 59, 94, 196,0 )
			AddMonsterByFloat( 55173, 1, 59, 92, 196,0 )
			AddMonsterByFloat( 55173, 1, 59, 90, 196,0 )
//--------------------------------------------------

//???????????
		AddMonsterByFloat(30250, 1, 2, 150, 245, 0, 0, 0)
		AddMonsterByFloat(30250, 1, 2, 140, 206, 0, 0, 45)
		AddMonsterByFloat(30250, 1, 2, 160, 206, 0, 0, 135)
		AddMonsterByFloat(30250, 1, 2, 157, 185, 0, 0, 45)
		AddMonsterByFloat(30250, 1, 2, 142, 185, 0, 0, 135)
		AddMonsterByFloat(30250, 1, 2, 109, 206, 0, 0, 0)
		AddMonsterByFloat(30250, 1, 2, 109, 192, 0, 0, 0)
		AddMonsterByFloat(30250, 1, 2, 202, 193, 0, 0, 0)
		AddMonsterByFloat(30250, 1, 2, 212, 193, 0, 0, 0)
		AddMonsterByFloat(30250, 1, 2, 146, 154, 0, 0, 45)
		AddMonsterByFloat(30250, 1, 2, 156, 154, 0, 0, 135)
		AddMonster(30251, 1, 2, 32, 91, 0)
		AddMonsterByFloat(30252, 1, 2, 153, 199, 0, 0, 0)

		AddMonsterByFloat(30250, 1, 111, 153, 247, 0, 0, 0)
		AddMonsterByFloat(30250, 1, 111, 154, 236, 0, 0, 0)
		AddMonsterByFloat(30250, 1, 111, 144, 202, 0, 0, 45)
		AddMonsterByFloat(30250, 1, 111, 164, 202, 0, 0, 135)
		AddMonsterByFloat(30250, 1, 111, 164, 183, 0, 0, 45)
		AddMonsterByFloat(30250, 1, 111, 144, 183, 0, 0, 135)
		AddMonsterByFloat(30250, 1, 111, 209, 177, 0, 0, 0)
		AddMonsterByFloat(30250, 1, 111, 209, 163, 0, 0, 0)
		AddMonsterByFloat(30252, 1, 111, 157, 194, 0, 0, 0)
		AddMonster(30251, 1, 111, 33, 55, 0)

//??????
			AddMonsterByFloat( 32233, 1, 2, 80, 181, 0 )


			DeleteNPC( 2098 )
			DeleteNPC( 2099 )
			DeleteNPC( 2100 )
			DeleteNPC( 2101 )
			DeleteNPC( 2102 )
			DeleteNPC( 2103 )
			DeleteNPC( 2104 )
			DeleteNPC( 2105 )
			DeleteNPC( 2106 )
			DeleteNPC( 2107 )
			DeleteNPC( 2108 )
			DeleteNPC( 2109 )
			DeleteNPC( 2110 )
			DeleteNPC( 2111 )
			DeleteNPC( 2112 )
			DeleteNPC( 2113 )
			DeleteNPC( 2114 )
			DeleteNPC( 2115 )
			DeleteNPC( 2116 )
			DeleteNPC( 2117 )

//?????
	SetGlobalVar( 6, 0 )
	SetGlobalVar( 7, 0 )
////2010????
//	SetGlobalVar(60,0)
//	SetGlobalVar(61,0)
//2011????
//	SetGlobalVar(60,0)
	DeleteNPC(2319)
	DeleteNPC(2320)
	DeleteNPC(2321)
//	if $Now_Year == 2011
//		if $Now_Month == 12
//			if $Now_Mday >= 20
//				if $Now_Mday <= 26
//					call Xmas2011grow()
//				endif
//			endif
//		endif
//	endif
//2012????
	SetGlobalVar(65,0)
	DeleteNPC(2322)
	DeleteNPC(2323)
	DeleteNPC(2324)
	DeleteNPC(2325)
	DeleteNPC(2326)
	DeleteNPC(2327)
	DeleteNPC(2328)
	DeleteNPC(2329)
	if $Now_Year == 2012
		if $Now_Month == 1
			if $Now_Mday >= 21
				if $Now_Mday <= 31
					AddNPC(2322)
					AddNPC(2323)
					AddNPC(2324)
					AddNPC(2325)
					AddNPC(2326)
					AddNPC(2327)
					AddNPC(2328)
					AddNPC(2329)
				endif
			endif
		endif
	endif
//2012-8???????????
	DeleteNPC(910)
	DeleteNPC(911)
	DeleteNPC(912)
	DeleteNPC(913)
	DeleteNPC(914)
	DeleteNPC(915)
	DeleteNPC(916)
	DeleteNPC(917)
	DeleteNPC(918)
	DeleteNPC(919)
	if $Now_Year == 2012
		if $Now_Month == 9
			if $Now_Mday >= 10
				if $Now_Mday <= 20
					AddNPC(919)
				endif
			endif
		endif
	endif
	DeleteNPC(1129)

}

function OnTimer() {
	$LineID = GetServerLineID()
//	if $LineID > 8
//		return
//	endif
	//????????
	//??
	$Now_Minute =  GetSystemTime( "minute")
	//??
	$Now_Hour =  GetSystemTime( "hour" )
	//??
	$Now_Mday =  GetSystemTime( "mday" )
	//??
	$Now_Month =  GetSystemTime( "month" )
	//???.2008????
	$Now_Year =  GetSystemTime( "year" )
	//???.0-6
	$Now_Week =  GetSystemTime( "week" )
	//??????.0-365
	$Now_Yday =  GetSystemTime( "yday" )
	//??????
	$Line = GetServerLineID()
	$lingtu = DomainIsOpen()
	//2013???????
	if $Now_Year == 2013
		if $Now_Month == 2
			if $Now_Mday == 19
				if $Now_Hour == 20
					if $Now_Minute == 0
						AddNPC(1131)
						AddNPC(1132)
						AddNPC(1133)
						AddNPC(1134)
						BC("screen", "server", -1 , "N/A????????????????????165,150?,??????????!")
						BC("chat", "server", -1 , "N/A????????????????????165,150?,??????????!")
					endif
				endif
			endif
		endif
	endif
	if $Now_Year == 2013
		if $Now_Month == 2
			if $Now_Mday == 20
				if $Now_Hour == 20
					if $Now_Minute == 0
						AddNPC(1135)
						AddNPC(1136)
						AddNPC(1137)
						AddNPC(1138)
						DeleteNPC(1131)
						DeleteNPC(1132)
						DeleteNPC(1133)
						DeleteNPC(1134)
						BC("screen", "server", -1 , "N/A????????????????????????165,150?,??????????!")
						BC("chat", "server", -1 , "N/A????????????????????????165,150?,??????????!")
					endif
				endif
			endif
		endif
	endif
	if $Now_Year == 2013
		if $Now_Month == 2
			if $Now_Mday == 21
				if $Now_Hour == 20
					if $Now_Minute == 0
						AddNPC(1139)
						AddNPC(1140)
						AddNPC(1141)
						AddNPC(1142)
						DeleteNPC(1135)
						DeleteNPC(1136)
						DeleteNPC(1137)
						DeleteNPC(1138)
						BC("screen", "server", -1 , "N/A????????????????????????165,150?,??????????!")
						BC("chat", "server", -1 , "N/A????????????????????????165,150?,??????????!")
					endif
				endif
			endif
		endif
	endif
	if $Now_Year == 2013
		if $Now_Month == 2
			if $Now_Mday == 22
				if $Now_Hour == 20
					if $Now_Minute == 0
						AddNPC(1143)
						AddNPC(1144)
						AddNPC(1145)
						AddNPC(1146)
						DeleteNPC(1139)
						DeleteNPC(1140)
						DeleteNPC(1141)
						DeleteNPC(1142)
						BC("screen", "server", -1 , "N/A????????????????????????165,150?,??????????!")
						BC("chat", "server", -1 , "N/A????????????????????????165,150?,??????????!")
					endif
				endif
			endif
		endif
	endif
	if $Now_Year == 2013
		if $Now_Month == 2
			if $Now_Mday == 23
				if $Now_Hour == 20
					if $Now_Minute == 0
						AddNPC(1147)
						AddNPC(1148)
						AddNPC(1149)
						AddNPC(1150)
						DeleteNPC(1143)
						DeleteNPC(1144)
						DeleteNPC(1145)
						DeleteNPC(1146)
						BC("screen", "server", -1 , "N/A????????????????????????165,150?,??????????!")
						BC("chat", "server", -1 , "N/A????????????????????????165,150?,??????????!")
					endif
				endif
			endif
		endif
	endif
	if $Now_Year == 2013
		if $Now_Month == 2
			if $Now_Mday == 24
				if $Now_Hour == 20
					if $Now_Minute == 0
						AddNPC(1151)
						AddNPC(1152)
						AddNPC(1153)
						AddNPC(1154)
						DeleteNPC(1147)
						DeleteNPC(1148)
						DeleteNPC(1149)
						DeleteNPC(1150)
						BC("screen", "server", -1 , "N/A????????????????????????165,150?,??????????!")
						BC("chat", "server", -1 , "N/A????????????????????????165,150?,??????????!")
					endif
				endif
			endif
		endif
	endif
	if $Now_Year == 2013
		if $Now_Month == 2
			if $Now_Mday == 25
				if $Now_Hour == 20
					if $Now_Minute == 0
						AddNPC(1155)
						AddNPC(1156)
						AddNPC(1157)
						AddNPC(1158)
						DeleteNPC(1151)
						DeleteNPC(1152)
						DeleteNPC(1153)
						DeleteNPC(1154)
						BC("screen", "server", -1 , "N/A????????????????????????165,150?,??????????!")
						BC("chat", "server", -1 , "N/A????????????????????????165,150?,??????????!")
					endif
				endif
			endif
		endif
	endif
		//2013???????1129

	if $Now_Year == 2013
		if $Now_Yday >= 36
			if $Now_Yday <= 120
				AddNPC(1129)
			endif
		endif
	endif

////2012-8???????????	??????
//	if $Now_Year == 2012
//		if $Now_Month == 9
//			if $Now_Mday >= 10
//				if $Now_Mday <= 16
//					AddNPC(9015)
//				endif
//			endif
//		endif
//	endif
////2012-8???????????	??????
//	if $Now_Year == 2012
//		if $Now_Month == 9
//			if $Now_Mday < 10
//					DeleteNPC(9015)
//			endif
//		endif
//	endif
//	if $Now_Year == 2012
//		if $Now_Month == 9
//			if $Now_Mday > 17
//					DeleteNPC(9015)
//			endif
//		endif
//	endif


	if $Now_Hour == 23
		if $Now_Minute == 59
			call SystemLog()
		endif
	endif
	call XiTongGongGao()
//------3???BOSS------
	call Bossthree()
//------4???BOSS------
	call BossFour()
//--------?????------
	call TwoHours()
//--------????------
	call Basaka()
//--------???------
	call zhuque()
//--------???------
	call qinglong()
//--------???------
	call baihu()
//--------???------
	call xuanwu()
//--------?????------
	call Pyramid()
//--------???--------
	call datanbao()
//--------????------
	call JuanXian()
//--------?????----
	call PetRefresh()
//--------??boss??---
	call Baituboss()
//BC("chat", "server", -1, "week:",$Now_Week,"mouth:",$Now_Month,"mday:",$Now_Mday,"hour:",$Now_Hour,"minute:",$Now_Minute)
//--------?????--------
//	call BiaoYan()
//---????---
//call HeiAnQinXi()
//---???---
//call shenlong()
//---??---
	call nimo()
//---???? 20????---
//	call angel()
//---??????----
//	call dayangel()
//---???????????
	call hunzhuaddexp()
//---2011??????
//	call guoqing2011()
//---2011???
//	call Xmas2011()
//---2012??
//	call SpringF2012()

//---2012???????
//	call TuiGuang2012()
//---????
	call diantai()
////---2012?????????? 7?10??10?30?---
//	call Summer2012()
//--------????----
//	call meiying()
//--------???????----
	call mingyunenci()
	//-------???????------
	call halloween()
	//-------?????????------
	call siegewar()
	//-------2013??????------
	call nianshou()
	//-------2013?????------
	call valentine()

//????????????
	call mingyuntanbao()
//??????????
	call longdinixi()
//?????????
	call mingjiezailin()
//???????????
	call bawangzhang()
////2012??????
//	call Shengmingzhishu()
//????
	call TMC()
//?????
	call GodofWater()
//????
	call TitanQuest()
//2012???????
//	call Autumn2012()
//2012?????
//	call NationDay2012()
//---2012?11?20?12?3???????---
	call OnNovember2012()
//-------------------------???????-----------------
	//???5???????
	$temp_time = $Now_Hour % 2
	if $temp_time == 1
		if $Now_Minute == 0
			SetServerVar( 50 , 0)
		endif
	endif
//-------------------------????-----------------
	if $Now_Week == 1
		SetServerVar( 147 , 0)
	endif
	if $Now_Week == 2
		SetServerVar( 147 , 0)
	endif
	if $Now_Week == 3
		SetServerVar( 147 , 0)
	endif
//-------------------------------------------------------------




	//------------??????----------------------
	$RankList = GetRankListValue( 1, 499 )
		if $RankList < 50
			DeleteNPC( 2098 )
			DeleteNPC( 2099 )
			DeleteNPC( 2100 )
			DeleteNPC( 2101 )
			DeleteNPC( 2102 )
			DeleteNPC( 2103 )
			DeleteNPC( 2104 )
			DeleteNPC( 2105 )
			DeleteNPC( 2106 )
			DeleteNPC( 2107 )
			DeleteNPC( 2108 )
			DeleteNPC( 2109 )
			DeleteNPC( 2110 )
			DeleteNPC( 2111 )
			DeleteNPC( 2112 )
			AddNPC( 2113 )
			AddNPC( 2114 )
			AddNPC( 2115 )
			AddNPC( 2116 )
			AddNPC( 2117 )
		endif
		if $RankList >= 50
			if $RankList <= 69
				DeleteNPC( 2098 )
				DeleteNPC( 2099 )
				DeleteNPC( 2100 )
				DeleteNPC( 2101 )
				DeleteNPC( 2102 )
				DeleteNPC( 2103 )
				DeleteNPC( 2104 )
				DeleteNPC( 2105 )
				DeleteNPC( 2106 )
				DeleteNPC( 2107 )
				DeleteNPC( 2113 )
				DeleteNPC( 2114 )
				DeleteNPC( 2115 )
				DeleteNPC( 2116 )
				DeleteNPC( 2117 )
				AddNPC( 2108 )
				AddNPC( 2109 )
				AddNPC( 2110 )
				AddNPC( 2111 )
				AddNPC( 2112 )
			endif
		endif
		if $RankList >= 70
			if $RankList <= 89
				DeleteNPC( 2098 )
				DeleteNPC( 2099 )
				DeleteNPC( 2100 )
				DeleteNPC( 2101 )
				DeleteNPC( 2102 )
				DeleteNPC( 2108 )
				DeleteNPC( 2109 )
				DeleteNPC( 2110 )
				DeleteNPC( 2111 )
				DeleteNPC( 2112 )
				DeleteNPC( 2113 )
				DeleteNPC( 2114 )
				DeleteNPC( 2115 )
				DeleteNPC( 2116 )
				DeleteNPC( 2117 )
				AddNPC( 2103 )
				AddNPC( 2104 )
				AddNPC( 2105 )
				AddNPC( 2106 )
				AddNPC( 2107 )
			endif
		endif
		if $RankList >= 90
			DeleteNPC( 2103 )
			DeleteNPC( 2104 )
			DeleteNPC( 2105 )
			DeleteNPC( 2106 )
			DeleteNPC( 2107 )
			DeleteNPC( 2108 )
			DeleteNPC( 2109 )
			DeleteNPC( 2110 )
			DeleteNPC( 2111 )
			DeleteNPC( 2112 )
			DeleteNPC( 2113 )
			DeleteNPC( 2114 )
			DeleteNPC( 2115 )
			DeleteNPC( 2116 )
			DeleteNPC( 2117 )
			AddNPC( 2098 )
			AddNPC( 2099 )
			AddNPC( 2100 )
			AddNPC( 2101 )
			AddNPC( 2102 )
		endif

//---------------------------------------------------------------------???????
//??????????   ??
	if $Now_Hour == 20
		if $Now_Minute == 1
			BC("screen", "server", -1 , "Achinoth the Giant has appeared on realm 6 in Soulbound Crypt Level 3!")
			BC("chat", "server", -1 , "Achinoth the Giant has appeared on realm 6 in Soulbound Crypt Level 3!")
			if $Line == 6
				$n = RandomNumber ( 0 , 4 )
				if $n == 0
					AddMonster( 30007 , 1 , 164 , 36 , 52 , 1 )
				endif
				if $n == 1
					AddMonster( 30007 , 1 , 164 , 74 , 60 , 1 )
				endif
				if $n == 2
					AddMonster( 30007 , 1 , 164 , 84 , 98 , 1 )
				endif
				if $n == 3
					AddMonster( 30007 , 1 , 164 , 33 , 97 , 1 )
				endif
				if $n == 4
					AddMonster( 30007 , 1 , 164 , 55 , 63 , 1 )
				endif
			endif
		endif
	endif
//---------------------------------------------------??????????   ??
//????????   ??
	if $Now_Hour == 20
		if $Now_Minute == 30
			BC("screen", "server", -1 , "The Destroy Source of Consumption Event is open in Sunken Atlantis on Realm 4! ")
			BC("chat", "server", -1 , "The Destroy Source of Consumption Event is open in Sunken Atlantis on Realm 4! ")
			if $Line == 4
				$n = RandomNumber ( 0 , 3 )
				if $n == 0
					AddMonster( 12049 , 1 , 537 , 19 , 19 , 0 )
				endif
				if $n == 1
					AddMonster( 12049 , 1 , 537 , 63 , 51 , 0 )
				endif
				if $n == 2
					AddMonster( 12049 , 1 , 537 , 59 , 97 , 0 )
				endif
				if $n == 3
					AddMonster( 12049 , 1 , 537 , 91 , 20 , 0 )
				endif
			endif
		endif
	endif
//---------------------------------------------------????????   ??

//-----------??????----??------------------------------
//-----------19?30??,??10??5??????-----------------------
		if $Now_Hour == 20
			if $Now_Minute == 1
				//??  55??????????   57?????????
				SetServerVar(55,0)
				SetServerVar(56,0)
				SetServerVar(57,0)
		//????????????NPC????
				SetServerVar( 121 , 0 )
				SetServerVar( 122 , 0 )
				SetServerVar( 123 , 0 )
				SetServerVar( 124 , 0 )
				SetServerVar( 125 , 0 )
				SetServerVar( 126 , 0 )
				SetServerVar( 127 , 0 )
				SetServerVar( 128 , 0 )
				SetServerVar( 129 , 0 )
				SetServerVar( 130 , 0 )
				SetServerVar( 131 , 0 )
				SetServerVar( 132 , 0 )
				SetServerVar( 133 , 0 )
			endif
//			if $Now_Minute == 5
//				BC("screen", "server", -1 , "GUID:08359000018")
//				BC("chat", "server", -1 , "GUID:08359000019")
//			endif
//			if $Now_Minute == 10
//				BC("screen", "server", -1 , "GUID:08359000020")
//				BC("chat", "server", -1 , "GUID:08359000021")
//			endif
			if $Now_Minute == 13
		//??  55??????????   57?????????
				SetServerVar(55,0)
				SetServerVar(56,0)
				SetServerVar(57,0)
		//????????????NPC????
				SetServerVar( 121 , 0 )
				SetServerVar( 122 , 0 )
				SetServerVar( 123 , 0 )
				SetServerVar( 124 , 0 )
				SetServerVar( 125 , 0 )
				SetServerVar( 126 , 0 )
				SetServerVar( 127 , 0 )
				SetServerVar( 128 , 0 )
				SetServerVar( 129 , 0 )
				SetServerVar( 130 , 0 )
				SetServerVar( 131 , 0 )
				SetServerVar( 132 , 0 )
				SetServerVar( 133 , 0 )
//				BC("screen", "server", -1 , "GUID:08359000022")
//				BC("chat", "server", -1 , "GUID:08359000023")
			endif
		endif
		if $Now_Hour == 20
			if $Now_Minute == 15
				BC("screen", "server", -1 , "The [Astral Feast] event is now open in even-numbered Realms. Talk to Outer Starway Teleporter in Atlantis to join the event.")
				BC("chat", "server", -1 , "The [Astral Feast] event is now open in even-numbered Realms. Talk to Outer Starway Teleporter in Atlantis to join the event.")
			endif
		endif
		if $Line == 2
			call RandomMonster()
		endif
		if $Line == 4
			call RandomMonster()
		endif
		if $Line == 6
			call RandomMonster()
		endif
		if $Line == 8
			call RandomMonster()
		endif
		if $Now_Hour == 21
			if $Now_Minute == 0
				MapPlayerFlyToMap( 186, 475 , 68, 48 )
				SetServerVar(55,0)
				SetServerVar(56,0)
				SetServerVar(57,0)
		//????????
				SetServerVar( 121 , 0 )
				SetServerVar( 122 , 0 )
				SetServerVar( 123 , 0 )
				SetServerVar( 124 , 0 )
				SetServerVar( 125 , 0 )
				SetServerVar( 126 , 0 )
				SetServerVar( 127 , 0 )
				SetServerVar( 128 , 0 )
				SetServerVar( 129 , 0 )
				SetServerVar( 130 , 0 )
				SetServerVar( 131 , 0 )
				SetServerVar( 132 , 0 )
				SetServerVar( 133 , 0 )
			endif
		endif
//---------------??????----------??--------------------------
//---------------?????--------??-------------------------
//		if $Now_Hour >= 15
//			if $Now_Hour <= 23
//				if $Now_Minute == 0
//					BC("scrollbar", "server", -1 , "GUID:08359000026")
//					BC("screen", "server", -1 , "GUID:08359000027")
//				endif
//			endif
//		endif

//---------------???????-------------------------??--------------------------
//--------------------------------------------------------?????start,??????????
	if $Now_Hour == 21
		if $Now_Minute == 0
			if $Now_Week == 4
				 SetServerVar(23, 0)
					//??????????????
				 SetServerVar(30 , 0)
			endif
		endif
	endif
	//????????,????,?????
	if $Now_Hour == 20
		if $Now_Minute == 0
			if $Now_Week == 5
				SetServerVar(40,0)
				SetServerVar(41,0)
				SetServerVar(42,0)
				SetServerVar(43,0)
				SetServerVar(44,0)
				SetServerVar(45,0)
				SetServerVar(46,0)
				SetServerVar(47,0)
				SetServerVar(98,0)
				SetServerVar(96,0)
				DeleteNPC( 1885 )
			endif
		endif
	endif
	//????,???????
	if $Line == 6
		if $Now_Hour == 0
			if $Now_Minute == 0
				if $Now_Week == 6
					MapPlayerFlyToMap( 123, 145, 60, 67 )
					MapPlayerFlyToMap( 124, 145, 60, 67 )
					MapPlayerFlyToMap( 125, 145, 60, 67 )
					MapPlayerFlyToMap( 126, 145, 60, 67 )
					MapPlayerFlyToMap( 127, 145, 60, 67 )
					MapPlayerFlyToMap( 195, 145, 60, 67 )
					MapPlayerFlyToMap( 196, 145, 60, 67 )
					MapPlayerFlyToMap( 197, 145, 60, 67 )
					MapPlayerFlyToMap( 198, 145, 60, 67 )
					BC("screen", "server", -1, "The sealed power of the Pyramid has been released. The adventurers will be teleported out.")
				endif
			endif
		endif
		//??????  ,???
		if $Now_Hour == 0
			if $Now_Minute == 1
				if $Now_Week == 6
					MapPlayerFlyToMap( 123, 145, 60, 67 )
					MapPlayerFlyToMap( 124, 145, 60, 67 )
					MapPlayerFlyToMap( 125, 145, 60, 67 )
					MapPlayerFlyToMap( 126, 145, 60, 67 )
					MapPlayerFlyToMap( 127, 145, 60, 67 )
					MapPlayerFlyToMap( 195, 145, 60, 67 )
					MapPlayerFlyToMap( 196, 145, 60, 67 )
					MapPlayerFlyToMap( 197, 145, 60, 67 )
					MapPlayerFlyToMap( 198, 145, 60, 67 )
				endif
			endif
		endif
	endif
	//?????10??????
	if $Line == 6
		if $Now_Hour == 23
			if $Now_Minute == 50
				if $Now_Week == 5
					BC("screen", "map", 123, "The sealed power of the Pyramid will soon be released and a new aura will be cast. All adventurers please evacuate immediately, or you will be teleported out in 10 minutes.")
					BC("screen", "map", 124, "The sealed power of the Pyramid will soon be released and a new aura will be cast. All adventurers please evacuate immediately, or you will be teleported out in 10 minutes.")
					BC("screen", "map", 125, "The sealed power of the Pyramid will soon be released and a new aura will be cast. All adventurers please evacuate immediately, or you will be teleported out in 10 minutes.")
					BC("screen", "map", 126, "The sealed power of the Pyramid will soon be released and a new aura will be cast. All adventurers please evacuate immediately, or you will be teleported out in 10 minutes.")
					BC("screen", "map", 127, "The sealed power of the Pyramid will soon be released and a new aura will be cast. All adventurers please evacuate immediately, or you will be teleported out in 10 minutes.")
					BC("screen", "map", 195, "The sealed power of the Pyramid will soon be released and a new aura will be cast. All adventurers please evacuate immediately, or you will be teleported out in 10 minutes.")
					BC("screen", "map", 196, "The sealed power of the Pyramid will soon be released and a new aura will be cast. All adventurers please evacuate immediately, or you will be teleported out in 10 minutes.")
					BC("screen", "map", 197, "The sealed power of the Pyramid will soon be released and a new aura will be cast. All adventurers please evacuate immediately, or you will be teleported out in 10 minutes.")
					BC("screen", "map", 198, "The sealed power of the Pyramid will soon be released and a new aura will be cast. All adventurers please evacuate immediately, or you will be teleported out in 10 minutes.")
				endif
			endif
		endif
	endif
//------------------------------------------------------------------------------------
//--------------------------------------------------------------------?????-??
	//CD???????
	$god_cd = GetServerVar(25)
	if $god_cd > 0
		$god_cd = $god_cd - 1
		//??CD???0,?????????????,?????0,?????0
		if $god_cd == 0
			SetServerVar(24, 0)
			SetServerVar(26, 0)
			SetServerVar(31, 0)
			SetServerVar(32, 0)
			//BOSS??????
			SetServerVar(34, 0)
			//??+1
			$temp_var = GetServerVar(33)
			$temp_var = $temp_var + 1
			SetServerVar(33, $temp_var)
			//??????,??????,?????

			$count_leishen = GetGlobalVar(924 )
			$count_leishen = $count_leishen + 1
			SetGlobalVar(924 , $count_leishen)

		endif
		SetServerVar(25, $god_cd)
	endif
	//???????
	$god_level = GetServerVar(26)
	$god_count = GetServerVar(24)
	if $god_count >= 10000
		if $god_level < 1
			BC("screen", "server", -1, "The altar begins to glow! Thor has heard the prayers of his followers!")
			BC("chat", "server", -1, "The altar begins to glow! Thor has heard the prayers of his followers!")
			SetServerVar(26, 1)
		endif
	endif
	if $god_count >= 20000
		if $god_level < 2
			BC("screen", "server", -1, "The altar begins to shake! Thor is almost upon us!")
			BC("chat", "server", -1, "The altar begins to shake! Thor is almost upon us!")
			SetServerVar(26, 2)
		endif
	endif
	if $god_count >= 30000
		if $god_level < 3
			//BC("screen", "server", -1, "GUID:08359000042")
			SetServerVar(26, 3)
			//????????,CD360??
			SetServerVar(25, 360)
			//??10?????,??????27=0????,???11
			SetServerVar(27, 11)
		endif
	endif
	//??10?????????
	$god_become = GetServerVar(27)
	//??????,??????????,???0,?????????
	if $god_become > 0
		//????1??0,?????????
		//if $god_become != 10
			$god_become = $god_become - 1
			SetServerVar(27, $god_become)

			if $god_become == 0
				//??!
				call OnLeiShengJiTan()
				BC("screen", "servergroup", -1, $Line ," - Realm: Khar's minions are attacking the ritual of Thor's arrival! Hurry to Thor's Altar and help defend it!")
				//?????????
				SetServerVar(28, 60)
				//????????0
				SetServerVar(29, 0)
			else
				BC("screen", "servergroup", -1, $Line ," - Realm: Thor will arrive in ",$god_become," minutes! Khar will soon send his minions to interrupt the ceremony. Hurry to Thor's Altar and help defend it!")
				BC("chat", "servergroup", -1,$Line, " - Realm: Thor will arrive in ",$god_become," minutes! Khar will soon send his minions to interrupt the ceremony. Hurry to Thor's Altar and help defend it!")
			endif
		//endif
	endif
	//?????????
	$god_monster_disappear = GetServerVar(28)
	if $god_monster_disappear > 0
		$god_monster_disappear = $god_monster_disappear - 1
		SetServerVar(28, $god_monster_disappear)
		if $god_monster_disappear == 10
			BC("screen", "map", 64, "Khar's minions will retreat in 10 minutes.")
			BC("chat", "map", 64, "Khar's minions will retreat in 10 minutes.")
		endif
		if $god_monster_disappear == 0
			BC("screen", "map", 64, "Khar's minions have sabotaged the ritual of Thor's arrival, and left the altar.")
			BC("chat", "map", 64, "Khar's minions have sabotaged the ritual of Thor's arrival, and left the altar.")
		endif
	endif
//--------------------------------------------------------------------------------?????-??
//--------------------------------------------------------------------------------????????
	if $Line == 6
		if $Now_Hour >= 21
			if $Now_Hour <= 22
				$player_count = GetMapPlayerCount(154)
				//????
				$ark_count = 0
				if $player_count < 20
					$ark_count = 20
				else
					if $player_count > 120
						$ark_count = 120
					else
						$ark_count = $player_count
					endif
				endif
				AddMonster(30161 ,$ark_count,154,64,64,60)
				//????
				$gold_count = $ark_count / 10
				AddMonster(30162 ,$gold_count,154,64,64,60)
				//BC("screen", "map", 154, "GUID:08359000052")
			endif
		endif
		if $Now_Hour == 23
			if $Now_Minute == 0

				MapPlayerFlyToMap( 154, 475, 83, 47 )
				BC("screen", "server", -1, "The Bountyhunter event has ended. All players in the Wonderland have been teleported out.")

			endif
		endif
	endif
//---------------------------????????----------------------
//--------------------------------------------------------------------------------  ??????? START
	//????
	if $Now_Week == 1
		if $Now_Hour == 0
			if $Now_Minute == 0
				BC("chat", "map", 112, "This week's Thor's Altar event has ended.")
				BC("screen", "map", 112, "This week's Thor's Altar event has ended.")
				MapPlayerFlyToMap( 112, 475 , 78, 47 )
			endif
		endif
	endif
//--------------------------------------------------------------------------------??????? END
//??????,????????
	if $lingtu == 1
		if $Now_Week == 5
			if $Now_Hour < 12
				if $Now_Minute == 1
					BC("screen", "server", -1, "Territory War bidding will open at 12:00 on Friday. Guild Leaders can talk to Farmoth to declare war.")
					BC("scrollbar", "server", -1 , "Territory War bidding will open at 12:00 on Friday. Guild Leaders can talk to Farmoth to declare war.")
				endif
			endif

			if $Now_Hour >= 12
				if $Now_Hour < 22
					if $Now_Minute == 1
						BC("screen", "server", -1, "Territory War bidding has started. Guild Leaders can talk to Farmoth to declare war.")
						BC("scrollbar", "server", -1 , "Territory War bidding has started. Guild Leaders can talk to Farmoth to declare war.")
					endif
				endif
			endif

			if $Now_Hour >= 22
				if $Now_Minute == 1
					BC("screen", "server", -1, "Territory War bidding has ended. Guild leaders should check their mail for the results.")
					BC("scrollbar", "server", -1, "Territory War bidding has ended. Guild leaders should check their mail for the results.")
				endif
			endif
		endif

		if $Now_Week == 6
			if $Now_Hour < 21
				if $Now_Minute == 1
					BC("screen", "server", -1, "The Territory War will begin at 21:00. Participants can talk to Farmoth to enter a battle.")
					BC("scrollbar", "server", -1, "The Territory War will begin at 21:00. Participants can talk to Farmoth to enter a battle.")
				endif
			endif

			if $Now_Hour >= 21
				if $Now_Minute == 1
					BC("screen", "server", -1, "The Territory War has begun. Participants can talk to Farmoth to enter a battle.")
					BC("scrollbar", "server", -1, "The Territory War has begun. Participants can talk to Farmoth to enter a battle.")
				endif
			endif
		endif

		if $Now_Week == 0
			if $Now_Hour < 1
				if $Now_Minute == 0
					BC("screen", "server", -1, "The Territory War has ended. The results can be observed on the World Map.")
					BC("scrollbar", "server", -1, "The Territory War has ended. The results can be observed on the World Map.")
				endif
			else
//				if $Now_Minute == 1
//					BC("screen", "server", -1, "The Territory War has ended. The results can be observed on the World Map.")
//					BC("scrollbar", "server", -1, "The Territory War has ended. The results can be observed on the World Map.")
//				endif
			endif
		endif
	endif

//--------------------------------------------------------------------------------  ???? START
	//???5??????? 3 10 16 22
	$temp_line = $Line % 2
	//?????
	if $temp_line == 1
		if $Now_Hour == 2
			if $Now_Minute == 55
				BC("screen", "server", -1, "Khar's Elite Guards will be spawned in 5 minutes.")
			endif
		endif
		if $Now_Hour == 9
			if $Now_Minute == 55
				BC("screen", "server", -1, "Khar's Elite Guards will be spawned in 5 minutes.")
			endif
		endif
		if $Now_Hour == 15
			if $Now_Minute == 55
				BC("screen", "server", -1, "Khar's Elite Guards will be spawned in 5 minutes.")
			endif
		endif
		if $Now_Hour == 22
			if $Now_Minute == 25
				BC("screen", "server", -1, "Khar's Elite Guards will be spawned in 5 minutes.")
			endif
		endif
		//?????
		if $Now_Hour == 3
			if $Now_Minute == 0
				call OnShuaBoss()
			endif
		endif
		if $Now_Hour == 10
			if $Now_Minute == 0
				call OnShuaBoss()
			endif
		endif
		if $Now_Hour == 16
			if $Now_Minute == 0
				call OnShuaBoss()
			endif
		endif
		if $Now_Hour == 22
			if $Now_Minute == 30
				call OnShuaBoss()
			endif
		endif
	endif

//--------------------------------------------------------------------------------  ???? END

////-------------------------------------------------------------------------------------------????start
//	//?????.??5??
//	if $Line == 5
//		if $Now_Hour == 11
//			if $Now_Minute == 59
//				if $Now_Week != 1
//					if $Now_Week != 2
//						if $Now_Week != 4
//							if $Now_Week != 5
//								if $Now_Week != 6
//									SetServerVar(61, 0)
//									SetServerVar(62, 0)
//								endif
//							endif
//						endif
//					endif
//				endif
//			endif
//		endif
//		if $Now_Hour == 12
//			if $Now_Minute == 0
//				$a = $Now_Mday + $Now_Month
//				$b = $Now_Week + $Now_Yday
//				$c = $a + $b
//				$random_number = $c % 8
//				if $Now_Week != 1
//					if $Now_Week != 2
//						if $Now_Week != 4
//							if $Now_Week != 5
//								if $Now_Week != 6
//									SetServerVar(61, 0)
//									SetServerVar(62, 0)
//									if $random_number == 0
//										BC("scrollbar", "server", -1, "GUID:08359000074")
//									endif
//									if $random_number == 1
//										BC("scrollbar", "server", -1, "GUID:08359000075")
//									endif
//									if $random_number == 2
//										BC("scrollbar", "server", -1, "GUID:08359000076")
//									endif
//									if $random_number == 3
//										BC("scrollbar", "server", -1, "GUID:08359000077")
//									endif
//									if $random_number == 4
//										BC("scrollbar", "server", -1, "GUID:08359000078")
//									endif
//									if $random_number == 5
//										BC("scrollbar", "server", -1, "GUID:08359000079")
//									endif
//									if $random_number == 6
//										BC("scrollbar", "server", -1, "GUID:08359000080")
//									endif
//									if $random_number == 7
//										BC("scrollbar", "server", -1, "GUID:08359000081")
//									endif
//								endif
//							endif
//						endif
//					endif
//				endif
//			endif
//		endif
//	endif
////--------------------------------------------------------------------------------------------------????end
//-----------------------------------------????-------------------------------start-----------
	if $Now_Hour == 12
		if $Now_Minute == 0
			call OnLong()
		endif
	endif
	if $Now_Hour == 15
		if $Now_Minute == 0
			call OnLong()
		endif
	endif
	if $Now_Hour == 18
		if $Now_Minute == 0
			call OnLong()
		endif
	endif
	if $Now_Hour == 21
		if $Now_Minute == 0
			call OnLong()
		endif
	endif
	if $Now_Hour == 0
		if $Now_Minute == 0
			call OnLong()
		endif
	endif
//-----------------------????-----------end-------------
//----------------------???????------begin-------------
	if $Now_Minute == 2
		AddMonster( 41022, 1, 169, 55, 67, 0 )
		BC("chat", "map", 169, "The Chrono Chest has appeared in Chrono Mirage. Hurry find it. You will get great rewards.")
		BC("screen", "map", 169, "The Chrono Chest has appeared in Chrono Mirage. Hurry find it. You will get great rewards.")
	endif



//----------------------?2010??????????------begin-------------

//	if  $Now_Hour == 0
//		if $Now_Minute == 1
//			SetGlobalVar(60,0)
//			SetGlobalVar(61,0)
//		endif
//	endif

//----------------------?2010??????????------end-------------

//----------------------2011boss??------begin-------------
	if  $Now_Hour == 0
		if $Now_Minute == 1
			SetServerVar(283,0)
			SetServerVar(284,0)
			SetServerVar(285,0)
		endif
	endif
//----------------------2011boss??------end-------------

//----------------------4??????????---------begin------------
		 if $Now_Hour == 0
						if $Now_Minute == 0
							 if $Line == 1
									SetGlobalVar(78, 0 )
									SetGlobalVar(79, 0 )
							 endif
						endif
		 endif
//----------------------4??????????----------end--------------

}

//-----------------------???????----------end-------------
//-----------------------------------------????50?????------------------begin--------------
	function nimo(){
	$nimoop = GetGlobalVar( 1 )
		if $nimoop == 50
			BC("scrollbar", "server", -1 , "N/A????????,Atrium??Land of the Dead?????")
			$nimoop = $nimoop + 1
			SetGlobalVar( 1,$nimoop )
		endif
	}






////////////////////////////////////////////////////////////////////////////
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@??????@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
////////////////////////////////////////////////////////////////////////////

//-----------------------?????????-------------
//		function meiying(){
	//????????
//	$Now_Minute =  GetSystemTime( "minute")
//	$Now_Hour =  GetSystemTime( "hour" )
//	$Now_Mday =  GetSystemTime( "mday" )
//	$Now_Month =  GetSystemTime( "month" )
//	$Now_Year =  GetSystemTime( "year" )
//	$Line = GetServerLineID

//	if $Line == 7
//		if $Now_Year == 2012
//			if $Now_Month == 8
//				if $Now_Mday >= 3
//					if $Now_Mday <= 6
//						if $Now_Hour == 20
//							if $Now_Minute == 30
						//??????
//								AddMonsterByFloat( 32225 , 1 , 475 , 149 , 161 , 0 )
//								BC( "scrollbar" , "servergroup" , -1 , "GUID:08359000085")
//							endif
//						endif
//					endif
//				endif
//			endif
//		endif
//	endif

//--------------?????????---------------
function siegewar(){
	//????????

	$Now_Minute =  GetSystemTime( "minute")
	$Now_Hour =  GetSystemTime( "hour" )
	$Now_Mday =  GetSystemTime( "mday" )
	$Now_Month =  GetSystemTime( "month" )
	$Now_Year =  GetSystemTime( "year" )
	$Line = GetServerLineID
	$fuwuqi = GetServerGrade()
	if $Line == 6
		if $Now_Year == 2012
			if $Now_Month == 12

				if $Now_Mday > 17
					if $Now_Mday < 23

						$hour = GetSystemTime("hour")
						$minute = GetSystemTime("minute")
						$hour = $hour * 100
						$time = $hour + $minute
						if $time == 1205
							BC("screen", "servergroup", -1 , "(Realm 6) The Crisis in Atlantis event will start tonight at 20:30. Dysteri and her creatures from the abyss are aiming to ravage the city at that time, so prepare yourselves well!")
							BC("chat", "servergroup", -1 , "(Realm 6) The Crisis in Atlantis event will start tonight at 20:30. Dysteri and her creatures from the abyss are aiming to ravage the city at that time, so prepare yourselves well!")
						endif
						if $time == 1505
							BC("screen", "servergroup", -1 , "(Realm 6) The Crisis in Atlantis event will start tonight at 20:30. Dysteri and her creatures from the abyss are aiming to ravage the city at that time, so prepare yourselves well!")
							BC("chat", "servergroup", -1 , "(Realm 6) The Crisis in Atlantis event will start tonight at 20:30. Dysteri and her creatures from the abyss are aiming to ravage the city at that time, so prepare yourselves well!")
						endif
						if $time == 1805
							BC("screen", "servergroup", -1 , "(Realm 6) The Crisis in Atlantis event will start tonight at 20:30. Dysteri and her creatures from the abyss are aiming to ravage the city at that time, so prepare yourselves well!")
							BC("chat", "servergroup", -1 , "(Realm 6) The Crisis in Atlantis event will start tonight at 20:30. Dysteri and her creatures from the abyss are aiming to ravage the city at that time, so prepare yourselves well!")
						endif
						if $time == 2005
							BC("screen", "servergroup", -1 , "(Realm 6) The Crisis in Atlantis event will start tonight at 20:30. Dysteri and her creatures from the abyss are aiming to ravage the city at that time, so prepare yourselves well!")
							BC("chat", "servergroup", -1 , "(Realm 6) The Crisis in Atlantis event will start tonight at 20:30. Dysteri and her creatures from the abyss are aiming to ravage the city at that time, so prepare yourselves well!")
						endif
						if $time == 1205
							BC("screen", "servergroup", -1 , "(Realm 6) The Crisis in Atlantis event will start tonight at 20:30. Dysteri and her creatures from the abyss are aiming to ravage the city at that time, so prepare yourselves well!")
							BC("chat", "servergroup", -1 , "(Realm 6) The Crisis in Atlantis event will start tonight at 20:30. Dysteri and her creatures from the abyss are aiming to ravage the city at that time, so prepare yourselves well!")
						endif

						if $Now_Hour == 20
							if $Now_Minute == 25
								BC( "chat" , "servergroup" , -1 , "(Realm 6) The Crisis in Atlantis - Dysteri and her abyssal creatures are preparing to ravage Atlantis, and the city needs your help! Get ready!")
								BC( "screen" , "servergroup" , -1 , "(Realm 6) The Crisis in Atlantis - Dysteri and her abyssal creatures are preparing to ravage Atlantis, and the city needs your help! Get ready!")
							endif
							if $Now_Minute == 30
							//??BOSS
								if $fuwuqi == 5
									AddMonsterByFloat( 32375 , 1 , 86 , 136 , 191 , 0 )
								endif
								if $fuwuqi == 4
									AddMonsterByFloat( 32375 , 1 , 86 , 136 , 191 , 0 )
								endif
								if $fuwuqi == 3
									AddMonsterByFloat( 32381 , 1 , 86 , 136 , 191 , 0 )
								endif
								if $fuwuqi == 2
									AddMonsterByFloat( 32381 , 1 , 86 , 136 , 191 , 0 )
								endif
								if $fuwuqi == 1
									AddMonsterByFloat( 32385 , 1 , 86 , 136 , 191 , 0 )
								endif
								if $fuwuqi == 0
									AddMonsterByFloat( 32385 , 1 , 86 , 136 , 191 , 0 )
								endif
								BC( "chat" , "servergroup" , -1 , "(Realm 6) Dysteri has appeared in the Sea of Atlantis (136, 191), threatening the Atlantis Defense Line! Atlantis's defenses are in peril!")
								BC( "screen" , "servergroup" , -1 , "(Realm 6) Dysteri has appeared in the Sea of Atlantis (136, 191), threatening the Atlantis Defense Line! Atlantis's defenses are in peril!")
							endif
						endif
					endif
				endif
				if $Now_Mday == 23

						$hour = GetSystemTime("hour")
						$minute = GetSystemTime("minute")
						$hour = $hour * 100
						$time = $hour + $minute
						if $time == 1205
							BC("screen", "servergroup", -1 , "(Realm 6) The Crisis in Atlantis event will start tonight at 20:30. The wrathful Death Knight, Dyse, is preparing an all-out attack against the city. The city is in dire straits!")
							BC("chat", "servergroup", -1 , "(Realm 6) The Crisis in Atlantis event will start tonight at 20:30. The wrathful Death Knight, Dyse, is preparing an all-out attack against the city. The city is in dire straits!")
						endif
						if $time == 1505
							BC("screen", "servergroup", -1 , "(Realm 6) The Crisis in Atlantis event will start tonight at 20:30. The wrathful Death Knight, Dyse, is preparing an all-out attack against the city. The city is in dire straits!")
							BC("chat", "servergroup", -1 , "(Realm 6) The Crisis in Atlantis event will start tonight at 20:30. The wrathful Death Knight, Dyse, is preparing an all-out attack against the city. The city is in dire straits!")
						endif
						if $time == 1805
							BC("screen", "servergroup", -1 , "(Realm 6) The Crisis in Atlantis event will start tonight at 20:30. The wrathful Death Knight, Dyse, is preparing an all-out attack against the city. The city is in dire straits!")
							BC("chat", "servergroup", -1 , "(Realm 6) The Crisis in Atlantis event will start tonight at 20:30. The wrathful Death Knight, Dyse, is preparing an all-out attack against the city. The city is in dire straits!")
						endif
						if $time == 2005
							BC("screen", "servergroup", -1 , "(Realm 6) The Crisis in Atlantis event will start tonight at 20:30. The wrathful Death Knight, Dyse, is preparing an all-out attack against the city. The city is in dire straits!")
							BC("chat", "servergroup", -1 , "(Realm 6) The Crisis in Atlantis event will start tonight at 20:30. The wrathful Death Knight, Dyse, is preparing an all-out attack against the city. The city is in dire straits!")
						endif
						if $time == 1205
							BC("screen", "servergroup", -1 , "(Realm 6) The Crisis in Atlantis event will start tonight at 20:30. The wrathful Death Knight, Dyse, is preparing an all-out attack against the city. The city is in dire straits!")
							BC("chat", "servergroup", -1 , "(Realm 6) The Crisis in Atlantis event will start tonight at 20:30. The wrathful Death Knight, Dyse, is preparing an all-out attack against the city. The city is in dire straits!")
						endif

					if $Now_Hour == 20
						if $Now_Minute == 25
							BC( "chat" , "servergroup" , -1 , "(Realm 6) The vengeful Death Knight Dyse is preparing for an all-out attack against the city of Atlantis. He and his minions will be appearing in the Sea of Atlantis. The city is in grave peril!")
							BC( "screen" , "servergroup" , -1 , "(Realm 6) The vengeful Death Knight Dyse is preparing for an all-out attack against the city of Atlantis. He and his minions will be appearing in the Sea of Atlantis. The city is in grave peril!")
						endif
						if $Now_Minute == 30
							//??BOSS
							if $fuwuqi == 5
								AddMonsterByFloat( 32376 , 1 , 86 , 136 , 191 , 0 )
							endif
							if $fuwuqi == 4
								AddMonsterByFloat( 32376 , 1 , 86 , 136 , 191 , 0 )
							endif
							if $fuwuqi == 3
								AddMonsterByFloat( 32382 , 1 , 86 , 136 , 191 , 0 )
							endif
							if $fuwuqi == 2
								AddMonsterByFloat( 32382 , 1 , 86 , 136 , 191 , 0 )
							endif
							if $fuwuqi == 1
								AddMonsterByFloat( 32386 , 1 , 86 , 136 , 191 , 0 )
							endif
							if $fuwuqi == 0
								AddMonsterByFloat( 32386 , 1 , 86 , 136 , 191 , 0 )
							endif
							BC( "chat" , "servergroup" , -1 , "(Realm 6) Death Knight Dyse has appeared in the Sea of Atlantis (136, 191). Atlantis's defenses are in danger!")
							BC( "screen" , "servergroup" , -1 , "(Realm 6) Death Knight Dyse has appeared in the Sea of Atlantis (136, 191). Atlantis's defenses are in danger!")
						endif
					endif
				endif

			endif
		endif
	endif

	}
	//--------------2013?????---------------
function valentine(){
	//????????

	$Now_Minute =  GetSystemTime( "minute")
	$Now_Hour =  GetSystemTime( "hour" )
	$Now_Mday =  GetSystemTime( "mday" )
	$Now_Month =  GetSystemTime( "month" )
	$Now_Year =  GetSystemTime( "year" )
	$hour = GetSystemTime("hour")
	$minute = GetSystemTime("minute")
	$hour = $hour * 100
	$time = $hour + $minute

		if $Now_Year == 2013
			if $Now_Month == 2
				if $Now_Mday == 14
						if $time == 1205
							BC("screen", "servergroup", -1 , "The Valentine's Day event is currently underway! The top three lovely ladies in the Charisma Ranking List by tomorrow morning will have the privilege of collecting a special Valentine's present from Skuld in the afternoon! So, be sure to share your flowers with the one you love best!")
							BC("chat", "servergroup", -1 , "The Valentine's Day event is currently underway! The top three lovely ladies in the Charisma Ranking List by tomorrow morning will have the privilege of collecting a special Valentine's present from Skuld in the afternoon! So, be sure to share your flowers with the one you love best!")
						endif
						if $time == 1505
							BC("screen", "servergroup", -1 , "The Valentine's Day event is currently underway! The top three lovely ladies in the Charisma Ranking List by 23:59 will have the privilege of collecting a special Valentine's present from Skuld tomorrow! So, be sure to share your flowers with the one you love best!")
							BC("chat", "servergroup", -1 , "The Valentine's Day event is currently underway! The top three lovely ladies in the Charisma Ranking List by 23:59 will have the privilege of collecting a special Valentine's present from Skuld tomorrow! So, be sure to share your flowers with the one you love best!")
						endif
						if $time == 1805
							BC("screen", "servergroup", -1 , "The Valentine's Day event is currently underway! The top three lovely ladies in the Charisma Ranking List by 23:59 will have the privilege of collecting a special Valentine's present from Skuld tomorrow! So, be sure to share your flowers with the one you love best!")
							BC("chat", "servergroup", -1 , "The Valentine's Day event is currently underway! The top three lovely ladies in the Charisma Ranking List by 23:59 will have the privilege of collecting a special Valentine's present from Skuld tomorrow! So, be sure to share your flowers with the one you love best!")
						endif
						if $time == 2005
							BC("screen", "servergroup", -1 , "The Valentine's Day event is currently underway! The top three lovely ladies in the Charisma Ranking List by tomorrow morning will have the privilege of collecting a special Valentine's present from Skuld in the afternoon! So, be sure to share your flowers with the one you love best!")
							BC("chat", "servergroup", -1 , "The Valentine's Day event is currently underway! The top three lovely ladies in the Charisma Ranking List by tomorrow morning will have the privilege of collecting a special Valentine's present from Skuld in the afternoon! So, be sure to share your flowers with the one you love best! :")
						endif
						if $time == 2205
							BC("screen", "servergroup", -1 , "The Valentine's Day event is currently underway! The top three lovely ladies in the Charisma Ranking List by tomorrow morning will have the privilege of collecting a special Valentine's present from Skuld in the afternoon! So, be sure to share your flowers with the one you love best! :")
							BC("chat", "servergroup", -1 , "The Valentine's Day event is currently underway! The top three lovely ladies in the Charisma Ranking List by tomorrow morning will have the privilege of collecting a special Valentine's present from Skuld in the afternoon! So, be sure to share your flowers with the one you love best!")
						endif

				endif
				if $Now_Mday == 15
					if $time == 5
							BC("screen", "servergroup", -1 , "The Valentine's Day event will be ending soon! The top three lovely ladies in the Charisma Ranking List will have the privilege of collecting a special Valentine's present from Skuld this afternoon! So, be sure to share your flowers with the one you love best!")
							BC("chat", "servergroup", -1 , "The Valentine's Day event will be ending soon! The top three lovely ladies in the Charisma Ranking List will have the privilege of collecting a special Valentine's present from Skuld this afternoon! So, be sure to share your flowers with the one you love best!")
					endif
					if $time == 1200

						  $var1 = GetRankPlayerID(22,0)
						  SetGlobalVar(91,$var1)
		         // BC("screen","servergroup",-1,"Player:",#name1,"earned first place in the Valentine's Day Charisma Rankings!")
		         // BC("chat","servergroup",-1,"Player:",#name1,"earned first place in the Valentine's Day Charisma Rankings!")
		          $var2 = GetRankPlayerID(22,1)
		          SetGlobalVar(92,$var2)
		         // BC("screen","servergroup",-1,"Player:",#name2,"earned second place in the Valentine's Day Charisma Rankings!")
		         // BC("chat","servergroup",-1,"Player:",#name2,"earned second place in the Valentine's Day Charisma Rankings!")
		          $var3 = GetRankPlayerID(22,2)
		          SetGlobalVar(93,$var3)
		        //  BC("screen","servergroup",-1,"Player:",#name3,"earned third place in the Valentine's Day Charisma Rankings!")
		         // BC("chat","servergroup",-1,"Player:",#name3,"earned third place in the Valentine's Day Charisma Rankings!")
		          BC("screen","servergroup",-1,"The final results of the Valentine's Day Charisma Rankings have been announced! The top-ranked three may collect a special prize from Skuld!")
		          BC("chat","servergroup",-1,"The final results of the Valentine's Day Charisma Rankings have been announced! The top-ranked three may collect a special prize from Skuld!")
		          $playervar1 = GetPlayerVar($var1,347)
		          #name1 = GetPlayerInfo($var1,"name")
		          $lv1 = GetPlayerInfo($var1,"level")
		          if $lv1 > 0
		          	if $playervar1 == 0
		          		BC("chat","servergroup",-1,"Player:",#name1,"earned first place in the Valentine's Day Charisma Rankings!")
									SendMail($var1,"Drop-dead Gorgeous","Congratulations for earning first place on the Valentine's Day Charisma rankings! Hurry over to Skuld in Atlantis to accept your special prize!",0,0)
									SetPlayerVar($var1,347,1)
								endif
							endif
							$playervar2 = GetPlayerVar($var2,347)
							#name2 = GetPlayerInfo($var2,"name")
		          $lv2 = GetPlayerInfo($var2,"level")
		          if $lv2 > 0
		          	if $playervar2 == 0
		          		BC("screen","servergroup",-1,"Player:",#name2,"earned second place in the Valentine's Day Charisma Rankings!")
									SendMail($var2,"Rouged and Rarin'","Congratulations for earning second place in the Valentine's Day Charisma rankings! Hurry over to Skuld in Atlantis to accept your special prize!",0,0)
									SetPlayerVar($var2,347,1)
								endif
							endif
							$playervar3 = GetPlayerVar($var3,347)
							#name3 = GetPlayerInfo($var3,"name")
		          $lv3 = GetPlayerInfo($var3,"level")
		          if $lv3 > 0
		          	if $playervar3 == 0
		          		BC("chat","servergroup",-1,"Player:",#name3,"earned third place in the Valentine's Day Charisma Rankings!")
									SendMail($var3,"Love Boat","Congratulations for earning third place in the Valentine's Day Charisma rankings! Hurry over to Skuld in Atlantis to accept your special prize!",0,0)
									SetPlayerVar($var3,347,1)
								endif
							endif
					endif
				endif
		endif
	endif

	}
//--------------2013??????---------------
function nianshou(){
	//????????

	$Now_Minute =  GetSystemTime( "minute")
	$Now_Hour =  GetSystemTime( "hour" )
	$Now_Mday =  GetSystemTime( "mday" )
	$Now_Month =  GetSystemTime( "month" )
	$Now_Year =  GetSystemTime( "year" )
	$Line = GetServerLineID
	$fuwuqi = GetServerGrade()
	if $Line == 7
		if $Now_Year == 2013
			if $Now_Month == 2

				if $Now_Mday > 8
					if $Now_Mday < 19

						$hour = GetSystemTime("hour")
						$minute = GetSystemTime("minute")
						$hour = $hour * 100
						$time = $hour + $minute
						if $time == 1205
							BC("screen", "servergroup", -1 , "(Realm 7) The Festival Beast Event will begin tonight at 20:00. At that time, countless New Year's Beasts will appear at the Bermuda Islands, the Sea of Atlantis, the Grand Rift, the Khufu Desert, and at Nile River West! Make sure to come and participate!")
							BC("chat", "servergroup", -1 , "(Realm 7) The Festival Beast Event will begin tonight at 20:00. At that time, countless New Year's Beasts will appear at the Bermuda Islands, the Sea of Atlantis, the Grand Rift, the Khufu Desert, and at Nile River West! Make sure to come and participate!")
						endif
						if $time == 1505
							BC("screen", "servergroup", -1 , "(Realm 7) The Festival Beast Event will begin tonight at 20:00. At that time, countless New Year's Beasts will appear at the Bermuda Islands, the Sea of Atlantis, the Grand Rift, the Khufu Desert, and at Nile River West! Make sure to come and participate!")
							BC("chat", "servergroup", -1 , "(Realm 7) The Festival Beast Event will begin tonight at 20:00. At that time, countless New Year's Beasts will appear at the Bermuda Islands, the Sea of Atlantis, the Grand Rift, the Khufu Desert, and at Nile River West! Make sure to come and participate!")
						endif
						if $time == 1805
							BC("screen", "servergroup", -1 , "(Realm 7) The Festival Beast Event will begin tonight at 20:00. At that time, countless New Year's Beasts will appear at the Bermuda Islands, the Sea of Atlantis, the Grand Rift, the Khufu Desert, and at Nile River West! Make sure to come and participate!")
							BC("chat", "servergroup", -1 , "(Realm 7) The Festival Beast Event will begin tonight at 20:00. At that time, countless New Year's Beasts will appear at the Bermuda Islands, the Sea of Atlantis, the Grand Rift, the Khufu Desert, and at Nile River West! Make sure to come and participate!")
						endif
						if $time == 1905
							BC("screen", "servergroup", -1 , "(Realm 7) The Festival Beast Event will begin tonight at 20:00. At that time, countless New Year's Beasts will appear at the Bermuda Islands, the Sea of Atlantis, the Grand Rift, the Khufu Desert, and at Nile River West! Make sure to come and participate!")
							BC("chat", "servergroup", -1 , "(Realm 7) The Festival Beast Event will begin tonight at 20:00. At that time, countless New Year's Beasts will appear at the Bermuda Islands, the Sea of Atlantis, the Grand Rift, the Khufu Desert, and at Nile River West! Make sure to come and participate!")
						endif


						if $Now_Hour == 19
							if $Now_Minute == 55
								BC("screen", "servergroup", -1 , "(Realm 7) The Festival Beast Event will begin in just 5 minutes. At that time, countless New Year's Beasts will appear at the Bermuda Islands, the Sea of Atlantis, the Grand Rift, the Khufu Desert, and at Nile River West! Make sure to come and participate!")
							  BC("chat", "servergroup", -1 , "(Realm 7) The Festival Beast Event will begin in just 5 minutes. At that time, countless New Year's Beasts will appear at the Bermuda Islands, the Sea of Atlantis, the Grand Rift, the Khufu Desert, and at Nile River West! Make sure to come and participate!")
						endif
						endif
					  if $time == 2000
					  		BC("screen", "servergroup", -1 , "(Realm 7) Countless New Year's Beasts have appeared at the Bermuda Islands, the Sea of Atlantis, the Grand Rift, the Khufu Desert, and at Nile River West!")
					  		BC("chat", "servergroup", -1 , "(Realm 7) Countless New Year's Beasts have appeared at the Bermuda Islands, the Sea of Atlantis, the Grand Rift, the Khufu Desert, and at Nile River West!")
					  		if $fuwuqi == 5
					  			AddMonsterByFloat( 32418 , 1 , 7  , 150 , 150 , 0 )
					  			AddMonsterByFloat( 32418 , 1 , 86 , 150 , 150 , 0 )
					  			AddMonsterByFloat( 32418 , 1 , 6  , 150 , 150 , 0 )
					  			AddMonsterByFloat( 32418 , 1 , 14 , 150 , 150 , 0 )
					  			AddMonsterByFloat( 32418 , 1 , 90 , 150 , 150 , 0 )
					  		endif
					  		if $fuwuqi == 4
					  			AddMonsterByFloat( 32417 , 1 , 7  , 150 , 150 , 0 )
					  			AddMonsterByFloat( 32417 , 1 , 86 , 150 , 150 , 0 )
					  			AddMonsterByFloat( 32417 , 1 , 6  , 150 , 150 , 0 )
					  			AddMonsterByFloat( 32417 , 1 , 14 , 150 , 150 , 0 )
					  			AddMonsterByFloat( 32417 , 1 , 90 , 150 , 150 , 0 )
					  		endif
					  		if $fuwuqi == 3
					  			AddMonsterByFloat( 32416 , 1 , 7  , 150 , 150 , 0 )
					  			AddMonsterByFloat( 32416 , 1 , 86 , 150 , 150 , 0 )
					  			AddMonsterByFloat( 32416 , 1 , 6  , 150 , 150 , 0 )
					  			AddMonsterByFloat( 32416 , 1 , 14 , 150 , 150 , 0 )
					  			AddMonsterByFloat( 32416 , 1 , 90 , 150 , 150 , 0 )
					  		endif
					  		if $fuwuqi == 2
					  			AddMonsterByFloat( 32415 , 1 , 7  , 150 , 150 , 0 )
					  			AddMonsterByFloat( 32415 , 1 , 86 , 150 , 150 , 0 )
					  			AddMonsterByFloat( 32415 , 1 , 6  , 150 , 150 , 0 )
					  			AddMonsterByFloat( 32415 , 1 , 14 , 150 , 150 , 0 )
					  			AddMonsterByFloat( 32415 , 1 , 90 , 150 , 150 , 0 )
					  		endif
					  		if $fuwuqi == 1
					  			AddMonsterByFloat( 32414 , 1 , 7  , 150 , 150 , 0 )
					  			AddMonsterByFloat( 32414 , 1 , 86 , 150 , 150 , 0 )
					  			AddMonsterByFloat( 32414 , 1 , 6  , 150 , 150 , 0 )
					  			AddMonsterByFloat( 32414 , 1 , 14 , 150 , 150 , 0 )
					  			AddMonsterByFloat( 32414 , 1 , 90 , 150 , 150 , 0 )
					  		endif
					  		if $fuwuqi == 0
					  			AddMonsterByFloat( 32414 , 1 , 7  , 150 , 150 , 0 )
					  			AddMonsterByFloat( 32414 , 1 , 86 , 150 , 150 , 0 )
					  			AddMonsterByFloat( 32414 , 1 , 6  , 150 , 150 , 0 )
					  			AddMonsterByFloat( 32414 , 1 , 14 , 150 , 150 , 0 )
					  			AddMonsterByFloat( 32414 , 1 , 90 , 150 , 150 , 0 )
					  		endif
					  endif
					  if $time == 2005
					  		BC("screen", "servergroup", -1 , "(Realm 7) Countless New Year's Beasts have appeared at the Bermuda Islands, the Sea of Atlantis, the Grand Rift, the Khufu Desert, and at Nile River West!")
					  		BC("chat", "servergroup", -1 , "(Realm 7) Countless New Year's Beasts have appeared at the Bermuda Islands, the Sea of Atlantis, the Grand Rift, the Khufu Desert, and at Nile River West!")
					  endif
					  if $time == 2010
					  		BC("screen", "servergroup", -1 , "(Realm 7) Countless New Year's Beasts have appeared at the Bermuda Islands, the Sea of Atlantis, the Grand Rift, the Khufu Desert, and at Nile River West!")
					  		BC("chat", "servergroup", -1 , "(Realm 7) Countless New Year's Beasts have appeared at the Bermuda Islands, the Sea of Atlantis, the Grand Rift, the Khufu Desert, and at Nile River West!")
					  endif
					  if $time == 2015
					  		BC("screen", "servergroup", -1 , "(Realm 7) Countless New Year's Beasts have appeared at the Bermuda Islands, the Sea of Atlantis, the Grand Rift, the Khufu Desert, and at Nile River West!")
					  		BC("chat", "servergroup", -1 , "(Realm 7) Countless New Year's Beasts have appeared at the Bermuda Islands, the Sea of Atlantis, the Grand Rift, the Khufu Desert, and at Nile River West!")
					  endif
				endif

			endif
		endif
	endif
	endif

	}
//--------???????--------------
function halloween(){
//????????

	$Now_Minute =  GetSystemTime( "minute")
	$Now_Hour =  GetSystemTime( "hour" )
	$Now_Mday =  GetSystemTime( "mday" )
	$Now_Month =  GetSystemTime( "month" )
	$Now_Year =  GetSystemTime( "year" )
	$Line = GetServerLineID
if $Now_Year == 2012
		if $Now_Month == 11
			if $Now_Mday == 1
				if $Now_Hour == 0
							if $Now_Minute == 0
								 AddNpcByPos(928,475,151,218 ,86400,0)
								 AddNpcByPos(929,475,98 ,206 ,86400,0)
								 AddNpcByPos(930,475,168,154 ,86400,0)
								 AddNpcByPos(931,475,131,102 ,86400,0)
							endif
					endif
				else
				 DeleteNPC( 928 )
				 DeleteNPC( 929 )
				 DeleteNPC( 930 )
				 DeleteNPC( 931 )
			endif
		endif
		if $Now_Month == 10
			if $Now_Mday == 31
			 if $Now_Hour == 0
				if $Now_Minute == 0
						AddNPC( 932 )
					endif
				 endif
				endif
		endif
	endif
	$date = $Now_Month * 100
	$date = $date + $Now_Mday
	if $date != 1031
		if $date != 1101
			DeleteNPC( 932 )
		 endif
	endif

	if $Line == 7
		if $Now_Year == 2012
			if $Now_Month == 10
				if $Now_Mday == 31
						if $Now_Hour == 12
							if $Now_Minute == 30
							BC( "screen" , "server" , -1 , "The Halloween Parade will begin tonight at 20:30 in the Sea of Atlantis. We hope to see you there!")
							endif
						endif
						if $Now_Hour == 14
							if $Now_Minute == 30
							BC( "screen" , "server" , -1 , "The Halloween Parade will begin tonight at 20:30 in the Sea of Atlantis. We hope to see you there!")
							endif
						endif
						if $Now_Hour == 16
							if $Now_Minute == 30
							BC( "screen" , "server" , -1 , "The Halloween Parade will begin tonight at 20:30 in the Sea of Atlantis. We hope to see you there!")
							endif
						endif
						if $Now_Hour == 18
							if $Now_Minute == 30
							BC( "screen" , "server" , -1 , "The Halloween Parade will begin tonight at 20:30 in the Sea of Atlantis. We hope to see you there!")
							endif
						endif
						if $Now_Hour == 20
							if $Now_Minute == 25
							BC( "scrollbar" , "servergroup" , -1 , "The Halloween Parade will be starting in 5 minutes in the Sea of Atlantis. Hurry over to Papa Pumpkin in the Sea of Atlantis to obtain a special Transformation status. You need to be Transformed if you want to collect special Halloween prizes!")
							endif
						endif
						if $Now_Hour == 20
							if $Now_Minute == 28
							BC( "scrollbar" , "servergroup" , -1 , "The Halloween Parade will be starting in 2 minutes in the Sea of Atlantis. Hurry over to Papa Pumpkin in the Sea of Atlantis to obtain a special Transformation status. You need to be Transformed if you want to collect special Halloween prizes!")
							endif
						endif
						if $Now_Hour == 20
							if $Now_Minute == 30
						//??????
							 BC( "scrollbar" , "servergroup" , -1 , "The Halloween Parade has begun! Hurry to visit Papa Pumpkin in the Sea of Atlantis, then go and join in on the festivities!")
								AddMonsterByFloat( 32325 , 1 , 86 , 178 , 113 , 0 )

							endif
						endif
						if $Now_Hour == 20
							if $Now_Minute == 40

							 BC( "screen" , "server" , -1 , "The Halloween Parade has nearly reached its end. Those who participated in the Parade can collect their prize from Papa Pumpkin. If you missed your chance to participate, you still have 5 minutes to visit Papa Pumpkin to collect a special Transformation status, and participate in the Parade!")

							endif
						endif
						if $Now_Hour == 20
							if $Now_Minute == 42

							 BC( "screen" , "server" , -1 , "The Halloween Parade has nearly reached its end. Those who participated in the Parade can collect their prize from Papa Pumpkin. If you missed your chance to participate, you still have 3 minutes to visit Papa Pumpkin to collect a special Transformation status, and participate in the Parade!")

							endif
						endif
				endif
			endif
		endif
	endif
	if $Line == 7
		if $Now_Year == 2012
			if $Now_Month == 11
				if $Now_Mday == 1
					if $Now_Hour == 12
							if $Now_Minute == 30
							BC( "screen" , "server" , -1 , "The Halloween Parade will begin tonight at 20:30 in the Sea of Atlantis. We hope to see you there!")
							endif
						endif
						if $Now_Hour == 14
							if $Now_Minute == 30
							BC( "screen" , "server" , -1 , "The Halloween Parade will begin tonight at 20:30 in the Sea of Atlantis. We hope to see you there!")
							endif
						endif
						if $Now_Hour == 16
							if $Now_Minute == 30
							BC( "screen" , "server" , -1 , "The Halloween Parade will begin tonight at 20:30 in the Sea of Atlantis. We hope to see you there!")
							endif
						endif
						if $Now_Hour == 18
							if $Now_Minute == 30
							BC( "screen" , "server" , -1 , "The Halloween Parade will begin tonight at 20:30 in the Sea of Atlantis. We hope to see you there!")
							endif
						endif
						if $Now_Hour == 20
							if $Now_Minute == 25
							BC( "scrollbar" , "servergroup" , -1 , "The Halloween Parade will be starting in 5 minutes in the Sea of Atlantis. Hurry over to Papa Pumpkin in the Sea of Atlantis to obtain a special Transformation status. You need to be Transformed if you want to collect special Halloween prizes!")
							endif
						endif
						if $Now_Hour == 20
							if $Now_Minute == 28
							BC( "scrollbar" , "servergroup" , -1 , "The Halloween Parade will be starting in 2 minutes in the Sea of Atlantis. Hurry over to Papa Pumpkin in the Sea of Atlantis to obtain a special Transformation status. You need to be Transformed if you want to collect special Halloween prizes!")
							endif
						endif
						if $Now_Hour == 20
							if $Now_Minute == 30
						//??????
							 BC( "scrollbar" , "servergroup" , -1 , "The Halloween Parade has begun! Hurry to visit Papa Pumpkin in the Sea of Atlantis, then go and join in on the festivities!")
								AddMonsterByFloat( 32325 , 1 , 86 , 178 , 113 , 0 )

							endif
						endif
						if $Now_Hour == 20
							if $Now_Minute == 40

							 BC( "screen" , "server" , -1 , "The Halloween Parade has nearly reached its end. Those who participated in the Parade can collect their prize from Papa Pumpkin. If you missed your chance to participate, you still have 5 minutes to visit Papa Pumpkin to collect a special Transformation status, and participate in the Parade!")

							endif
						endif
						if $Now_Hour == 20
							if $Now_Minute == 42

							 BC( "screen" , "server" , -1 , "The Halloween Parade has nearly reached its end. Those who participated in the Parade can collect their prize from Papa Pumpkin. If you missed your chance to participate, you still have 3 minutes to visit Papa Pumpkin to collect a special Transformation status, and participate in the Parade!")

							endif
						endif
				endif
			endif
		endif
	endif

	}
//-----------------------???????-------------
		function mingyunenci(){
	//????????
		$Now_Minute =  GetSystemTime( "minute")
		$Now_Hour =  GetSystemTime( "hour" )
		$Now_Year =  GetSystemTime( "year" )
		$Now_yday = GetSystemTime( "yday" )

		if $Now_Year == 2012
			if $Now_yday > 241
				if $Now_yday < 274
					if $Now_Hour == 11
						if $Now_Minute == 50
							BC( "chat" , "server" , -1 , "Come one, come all! The Goddess of Fate is handing out fortunes to everyone! Go see the event NPC Misha in Atlantis if you want a special gift!")
						endif
					endif
				endif
			endif
		endif

		if $Now_Year == 2012
			if $Now_yday > 241
				if $Now_yday < 274
					if $Now_Hour == 19
						if $Now_Minute == 50
							BC( "chat" , "server" , -1 , "Come one, come all! The Goddess of Fate is handing out fortunes to everyone! Go see the event NPC Misha in Atlantis if you want a special gift!")
						endif
					endif
				endif
			endif
		endif

		}

//-----------------------????????????-------------
		function mingyuntanbao(){
	//????????
		$Now_Minute =  GetSystemTime( "minute")
		$Now_Hour =  GetSystemTime( "hour" )
		$Now_Mday =  GetSystemTime( "mday" )
		$Now_Month =  GetSystemTime( "month" )
		$Line = GetServerLineID
		$Now_Year =  GetSystemTime( "year" )
		if $Line != 7
			return
		endif
		if $Now_Year != 2012
			return
		endif
		//???????????

		if $Now_Month == 9
			if $Now_Mday == 23
				if $Now_Hour == 0
					if $Now_Minute == 0
						SetServerVar( 141, 0 )
						SetServerVar( 142, 0 )
						SetServerVar( 143, 0 )
						SetServerVar( 144, 0 )
						SetServerVar( 145, 0 )
						SetServerVar( 146, 0 )
					endif
				endif
			endif
		endif

//////////////--------9.23new
		if $Now_Month == 9
			if $Now_Mday == 23

			//----------------------NPC_start---
				if $Now_Hour == 13
					if $Now_Minute == 30
						BC( "screen" , "servergroup" , -1 , "(Realm 7) The Fate Ceremony's Treasure of The Goddess of Luck event will begin at 14:00. Keep your eye out for the special treasure location hints!")
						BC( "chat" , "servergroup" , -1 , "(Realm 7) The Fate Ceremony's Treasure of The Goddess of Luck event will begin at 14:00. Keep your eye out for the special treasure location hints!")
					endif
				endif
				if $Now_Hour == 13
					if $Now_Minute == 45
						BC( "screen" , "servergroup" , -1 , "(Realm 7) The Fate Ceremony's Treasure of The Goddess of Luck event will begin at 14:00. Keep your eye out for the special treasure location hints!")
						BC( "chat" , "servergroup" , -1 , "(Realm 7) The Fate Ceremony's Treasure of The Goddess of Luck event will begin at 14:00. Keep your eye out for the special treasure location hints!")
					endif
				endif
				if $Now_Hour == 13
					if $Now_Minute == 55
						BC( "screen" , "servergroup" , -1 , "(Realm 7) The Fate Ceremony's Treasure of The Goddess of Luck event will begin at 14:00. Keep your eye out for the special treasure location hints!")
						BC( "chat" , "servergroup" , -1 , "(Realm 7) The Fate Ceremony's Treasure of The Goddess of Luck event will begin at 14:00. Keep your eye out for the special treasure location hints!")
					endif
				endif
			//----------------------NPC_end---
			//----------------------NPC_start---
				if $Now_Hour == 14
					if $Now_Minute == 0
						AddNPC( 891 )
						BC( "screen" , "servergroup" , -1 , "(Realm 7) The Fate Ceremony's Treasure of the Goddess of Fate event has begun! Here's the first hint for the first treasure: the first treasure is hidden in an imperial mausoleum.")
						BC( "chat" , "servergroup" , -1 , "(Realm 7) The Fate Ceremony's Treasure of the Goddess of Fate event has begun! Here's the first hint for the first treasure: the first treasure is hidden in an imperial mausoleum.")
					endif
				endif
				if $Now_Hour == 14
					if $Now_Minute == 3
						BC( "screen" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess' second hint for the first Treasure: the first treasure is hidden in an imperial mausoleum, before a slumbering god.")
						BC( "chat" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess' second hint for the first Treasure: the first treasure is hidden in an imperial mausoleum, before a slumbering god.")
					endif
				endif
				if $Now_Hour == 14
					if $Now_Minute == 6
						BC( "screen" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess' third hint for the first treasure: the first treasure is hidden in the southeast of the Dragon Emperor's Catacomb, before a slumbering god.")
						BC( "chat" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess' third hint for the first treasure: the first treasure is hidden in the southeast of the Dragon Emperor's Catacomb, before a slumbering god.")
					endif
				endif
				if $Now_Hour == 14
					if $Now_Minute == 9
						BC( "screen" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess' fourth hint for the first treasure: the first treasure is hidden at 44, 234, in the Dragon Emperor's Catacomb.")
						BC( "chat" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess' fourth hint for the first treasure: the first treasure is hidden at 44, 234, in the Dragon Emperor's Catacomb.")
					endif
				endif
			//----------------------NPC_end---
			//----------------------NPC_start---
				if $Now_Hour == 14
					if $Now_Minute == 12
						AddNPC( 892 )
						BC( "screen" , "servergroup" , -1 , "(Realm 7) The Fate Ceremony's Treasure of the Goddess of Fate event has begun again! Here's the first hint for the second treasure: the second treasure is hidden in a forest, before a large and mysterious gate.")
						BC( "chat" , "servergroup" , -1 , "(Realm 7) The Fate Ceremony's Treasure of the Goddess of Fate event has begun again! Here's the first hint for the second treasure: the second treasure is hidden in a forest, before a large and mysterious gate.")
					endif
				endif
				if $Now_Hour == 14
					if $Now_Minute == 15
						BC( "screen" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's second hint for the second Treasure: the second treasure is hidden in a forest camp on the Maya continent, before a large and mysterious gate.")
						BC( "chat" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's second hint for the second Treasure: the second treasure is hidden in a forest camp on the Maya continent, before a large and mysterious gate.")
					endif
				endif
				if $Now_Hour == 14
					if $Now_Minute == 18
						BC( "screen" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's third hint for the second Treasure: the second treasure is hidden in the north of the Angkor Encampment, before a large and mysterious gate.")
						BC( "chat" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's third hint for the second Treasure: the second treasure is hidden in the north of the Angkor Encampment, before a large and mysterious gate.")
					endif
				endif
				if $Now_Hour == 14
					if $Now_Minute == 21
						BC( "screen" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's fourth hint for the second treasure: the second treasure is hidden at 176, 39 in the Angkor Encampment.")
						BC( "chat" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's fourth hint for the second treasure: the second treasure is hidden at 176, 39 in the Angkor Encampment.")
					endif
				endif
			//----------------------NPC_end---
			//----------------------NPC_start---
				if $Now_Hour == 14
					if $Now_Minute == 24
						AddNPC( 893 )
						BC( "screen" , "servergroup" , -1 , "(Realm 7) The Fate Ceremony's Treasure of the Goddess of Fate event has begun again! Here's the first hint for the third treasure: the third treasure is hidden at the base of an ancient tree, near a graveyard.")
						BC( "chat" , "servergroup" , -1 , "(Realm 7) The Fate Ceremony's Treasure of the Goddess of Fate event has begun again! Here's the first hint for the third treasure: the third treasure is hidden at the base of an ancient tree, near a graveyard.")
					endif
				endif
				if $Now_Hour == 14
					if $Now_Minute == 27
						BC( "screen" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's second hint for the third treasure: the third treasure is hidden at the base of an ancient tree near a graveyard at the bottom of a gorge.")
						BC( "chat" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's second hint for the third treasure: the third treasure is hidden at the base of an ancient tree near a graveyard at the bottom of a gorge.")
					endif
				endif
				if $Now_Hour == 14
					if $Now_Minute == 30
						BC( "screen" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's third hint for the third treasure: the third treasure is hidden in the King's Gorge, under an old tree that's next to a graveyard.")
						BC( "chat" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's third hint for the third treasure: the third treasure is hidden in the King's Gorge, under an old tree that's next to a graveyard.")
					endif
				endif
				if $Now_Hour == 14
					if $Now_Minute == 33
						BC( "screen" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's fourth hint for the third treasure: the third treasure is hidden at 119, 122, in King's Gorge.")
						BC( "chat" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's fourth hint for the third treasure: the third treasure is hidden at 119, 122, in King's Gorge.")
					endif
				endif
			//----------------------NPC_end---
			//----------------------NPC_start---
				if $Now_Hour == 14
					if $Now_Minute == 36
						AddNPC( 894 )
						BC( "screen" , "servergroup" , -1 , "(Realm 7) The Fate Ceremony's Treasure of the Goddess of Fate event has begun again! Here's the first hint for the fourth treasure: the fourth treasure is hidden at the bottom of the sea, where merfolk reside.")
						BC( "chat" , "servergroup" , -1 , "(Realm 7) The Fate Ceremony's Treasure of the Goddess of Fate event has begun again! Here's the first hint for the fourth treasure: the fourth treasure is hidden at the bottom of the sea, where merfolk reside.")
					endif
				endif
				if $Now_Hour == 14
					if $Now_Minute == 39
						BC( "screen" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's second hint for the fourth treasure: the fourth treasure is hidden before a stone statue at the bottom of the sea, in the Aegean where the mermaid princess lives.")
						BC( "chat" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's second hint for the fourth treasure: the fourth treasure is hidden before a stone statue at the bottom of the sea, in the Aegean where the mermaid princess lives.")
					endif
				endif
				if $Now_Hour == 14
					if $Now_Minute == 42
						BC( "screen" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's third hint for the fourth treasure: the fourth treasure is hidden in an unmarked place in the east of Aegean, beside the stone statue of the mermaid princess.")
						BC( "chat" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's third hint for the fourth treasure: the fourth treasure is hidden in an unmarked place in the east of Aegean, beside the stone statue of the mermaid princess.")
					endif
				endif
				if $Now_Hour == 14
					if $Now_Minute == 45
						BC( "screen" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's fourth hint for the fourth treasure: the fourth treasure is hidden at 68,174, in Aegean North.")
						BC( "chat" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's fourth hint for the fourth treasure: the fourth treasure is hidden at 68,174, in Aegean North.")
					endif
				endif
			//----------------------NPC_end---
			//----------------------NPC_start---
				if $Now_Hour == 14
					if $Now_Minute == 48
						AddNPC( 895 )
						BC( "screen" , "servergroup" , -1 , "(Realm 7) The Fate Ceremony's Treasure of the Goddess of Fate event has begun! Here's the first hint for the fifth treasure: the fifth treasure is hidden before a stone tablet.")
						BC( "chat" , "servergroup" , -1 , "(Realm 7) The Fate Ceremony's Treasure of the Goddess of Fate event has begun! Here's the first hint for the fifth treasure: the fifth treasure is hidden before a stone tablet.")
					endif
				endif
				if $Now_Hour == 14
					if $Now_Minute == 51
						BC( "screen" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's second hint for the fifth treasure: the fifth treasure is hidden before a stone tablet, with red lanterns hanging nearby.")
						BC( "chat" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's second hint for the fifth treasure: the fifth treasure is hidden before a stone tablet, with red lanterns hanging nearby.")
					endif
				endif
				if $Now_Hour == 14
					if $Now_Minute == 54
						BC( "screen" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's third hint for the fifth treasure: the fifth treasure is hidden in the Dragon Emperor's Catacomb, before a stone tablet, with red lanterns hanging nearby.")
						BC( "chat" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's third hint for the fifth treasure: the fifth treasure is hidden in the Dragon Emperor's Catacomb, before a stone tablet, with red lanterns hanging nearby.")
					endif
				endif
				if $Now_Hour == 14
					if $Now_Minute == 57
						BC( "screen" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's fourth hint for the fifth treasure: the fifth treasure is hidden at 246, 250, in the Dragon Emperor's Catacomb.")
						BC( "chat" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's fourth hint for the fifth treasure: the fifth treasure is hidden at 246, 250, in the Dragon Emperor's Catacomb.")
					endif
				endif
			//----------------------NPC_end---
			//----------------------NPC_start---
				if $Now_Hour == 15
					if $Now_Minute == 0
						AddNPC( 896 )
						BC( "screen" , "servergroup" , -1 , "(Realm 7) The Fate Ceremony's Treasure of the Goddess of Fate event has begun again! Here's the first hint for the sixth treasure: the sixth treasure is hidden in a place that's glowing with energy.")
						BC( "chat" , "servergroup" , -1 , "(Realm 7) The Fate Ceremony's Treasure of the Goddess of Fate event has begun again! Here's the first hint for the sixth treasure: the sixth treasure is hidden in a place that's glowing with energy.")
					endif
				endif
				if $Now_Hour == 15
					if $Now_Minute == 3
						BC( "screen" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's second hint for the sixth treasure: the sixth treasure is hidden at the bottom of the sea, in a place that's glowing with energy, watched over by the shadow of a goddess.")
						BC( "chat" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's second hint for the sixth treasure: the sixth treasure is hidden at the bottom of the sea, in a place that's glowing with energy, watched over by the shadow of a goddess.")
					endif
				endif
				if $Now_Hour == 15
					if $Now_Minute == 6
						BC( "screen" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's third hint for the sixth treasure: the sixth treasure is hidden in the Sea of Atlantis, in a place that's glowing with energy, watched over by the shadow of a goddess.")
						BC( "chat" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's third hint for the sixth treasure: the sixth treasure is hidden in the Sea of Atlantis, in a place that's glowing with energy, watched over by the shadow of a goddess.")
					endif
				endif
				if $Now_Hour == 15
					if $Now_Minute == 9
						BC( "screen" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's fourth hint for the sixth treasure: the sixth treasure is hidden at 113, 81, in the Sea of Atlantis.")
						BC( "chat" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's fourth hint for the sixth treasure: the sixth treasure is hidden at 113, 81, in the Sea of Atlantis.")
					endif
				endif
			//----------------------NPC_end---
				if $Now_Hour == 14
					BC( "screen" , "servergroup" , -1 , "(Realm 7) The Treasure of The Goddess of Luck event is underway! Make sure to carefully read each treasure location's hints!")
					BC( "chat" , "servergroup" , -1 , "(Realm 7) The Treasure of The Goddess of Luck event is underway! Make sure to carefully read each treasure location's hints!")
				endif
				if $Now_Hour == 15
					if $Now_Minute < 9
						BC( "screen" , "servergroup" , -1 , "(Realm 7) The Treasure of The Goddess of Luck event is underway! Make sure to carefully read each treasure location's hints!")
						BC( "chat" , "servergroup" , -1 , "(Realm 7) The Treasure of The Goddess of Luck event is underway! Make sure to carefully read each treasure location's hints!")
					endif
				endif
			endif
		endif


		}

//---------------??????????call------------------------------
function longdinixi1(){
		AddMonsterByFloat( 11963 , 1 , 119 , 105 , 162 , 0 )
		AddMonsterByFloat( 11964 , 1 , 119 , 105 , 149 , 0 )
		AddMonsterByFloat( 11965 , 1 , 119 , 120 , 149 , 0 )
		AddMonsterByFloat( 11966 , 1 , 119 , 120 , 163 , 0 )
		BC( "scrollbar" , "server" , -1 , "The Dragon Emperor has awakened again! He's returning to his Catacomb to prepare for an assault on the mortal world. Go and stop him, before it's too late!")
}
function longdinixi2(){
		AddMonsterByFloat( 11965 , 1 , 119 , 105 , 162 , 0 )
		AddMonsterByFloat( 11966 , 1 , 119 , 105 , 149 , 0 )
		AddMonsterByFloat( 11967 , 1 , 119 , 112 , 156 , 0 )
		AddMonsterByFloat( 11968 , 1 , 119 , 120 , 149 , 0 )
		AddMonsterByFloat( 11969 , 1 , 119 , 120 , 163 , 0 )
		BC( "scrollbar" , "server" , -1 , "The Dragon Emperor is mad with rage! Despite his somewhat weakened state, he is hell-bent on reclaiming the Dragon Emperor's Catacomb! Go and stop him!")
}

	function bawangzhangNPC(){
		//????????
		$Now_Minute =  GetSystemTime( "minute")
		$Now_Hour =  GetSystemTime( "hour" )
		$Now_Mday =  GetSystemTime( "mday" )
		$Now_Month =  GetSystemTime( "month" )
		$Line = GetServerLineID
		$Now_Year =  GetSystemTime( "year" )
		$hour = GetSystemTime("hour")
		$minute = GetSystemTime("minute")
		$hour = $hour * 100
		$time = $hour + $minute
//		????? [color=ff96918a]??[/color]
//		DeleteNPC(938)
//1	2330	????
//3	2331	??
//3	2332	??-??
//3	2333	??-??
//3	2334	??-??
//3	2335	??-??
//4	2336	??
//4	2337	??
//4	2338	??
//4	2339	??
//4	2340	??
//4	2341	??
			DeleteNPC(2330)
			DeleteNPC(2331)
			DeleteNPC(2332)
			DeleteNPC(2333)
			DeleteNPC(2334)
			DeleteNPC(2335)
			DeleteNPC(2336)
			DeleteNPC(2337)
			DeleteNPC(2338)
			DeleteNPC(2339)
			DeleteNPC(2340)
			DeleteNPC(2341)
			if $Now_Year == 2012

				if $Now_Month == 12

					if $Now_Mday >= 15
						if $Now_Mday <= 30
							AddNPC(2330)
						endif
					endif
					if $Now_Mday >= 28
						if $Now_Mday <= 31
							$Line = GetServerLineID()
							if $Line == 7
								AddNPC(2331)
								AddNPC(2332)
								AddNPC(2333)
								AddNPC(2334)
								AddNPC(2335)
							endif
							//--------------???????
							AddNPC(2336)
							AddNPC(2337)
							AddNPC(2338)
							AddNPC(2339)
							AddNPC(2340)
							AddNPC(2341)
						endif
					endif

				endif

			endif

			if $Now_Year == 2013
				if $Now_Month == 1

					if $Now_Mday >= 1
						if $Now_Mday <= 6
							AddNPC(2336)
							AddNPC(2337)
							AddNPC(2338)
							AddNPC(2339)
							AddNPC(2340)
							AddNPC(2341)
						endif
					endif
					if $Now_Mday >= 1
						if $Now_Mday <= 31
							AddNPC(2331)
						endif
					endif

				endif
			endif

	}

	function DEL_bawangzhangNPC(){
		//????????
		$Now_Minute =  GetSystemTime( "minute")
		$Now_Hour =  GetSystemTime( "hour" )
		$Now_Mday =  GetSystemTime( "mday" )
		$Now_Month =  GetSystemTime( "month" )
		$Line = GetServerLineID
		$Now_Year =  GetSystemTime( "year" )
		$hour = GetSystemTime("hour")
		$minute = GetSystemTime("minute")
		$hour = $hour * 100
		$time = $hour + $minute
//			DeleteNPC(2330)????
//			DeleteNPC(2331)??
//			DeleteNPC(2332)??-??
//			DeleteNPC(2333)??-??
//			DeleteNPC(2334)??-??
//			DeleteNPC(2335)??-??
//			DeleteNPC(2336)??
//			DeleteNPC(2337)??
//			DeleteNPC(2338)??
//			DeleteNPC(2339)??
//			DeleteNPC(2340)??
//			DeleteNPC(2341)??


			if $Now_Year == 2012

				if $Now_Month == 12
					if $Now_Mday == 15
						AddNPC(2330)
					endif
					if $Now_Mday == 28
							$Line = GetServerLineID()
							if $Line == 7
								AddNPC(2331)
								AddNPC(2332)
								AddNPC(2333)
								AddNPC(2334)
								AddNPC(2335)
							endif
							//--------------???????
							AddNPC(2336)
							AddNPC(2337)
							AddNPC(2338)
							AddNPC(2339)
							AddNPC(2340)
							AddNPC(2341)
					endif
				endif

			endif
			if $Now_Year == 2013
				if $Now_Month == 1
					if $Now_Mday == 1
						AddNPC(2336)
						AddNPC(2337)
						AddNPC(2338)
						AddNPC(2339)
						AddNPC(2340)
						AddNPC(2341)
					endif
				endif
			endif
//---=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
			if $Now_Year == 2012

				if $Now_Mday >= 28
					if $Now_Mday <= 31
						$Line = GetServerLineID()
						if $Line != 7
//			DeleteNPC(2331)??
//			DeleteNPC(2332)??-??
//			DeleteNPC(2333)??-??
//			DeleteNPC(2334)??-??
//			DeleteNPC(2335)??-??
							DeleteNPC(2331)
							DeleteNPC(2332)
							DeleteNPC(2333)
							DeleteNPC(2334)
							DeleteNPC(2335)
						endif
					endif
				endif

			endif

			if $Now_Year == 2013
//			DeleteNPC(2330)????
//			DeleteNPC(2332)??-??
//			DeleteNPC(2333)??-??
//			DeleteNPC(2334)??-??
//			DeleteNPC(2335)??-??
					DeleteNPC(2330)
					DeleteNPC(2332)
					DeleteNPC(2333)
					DeleteNPC(2334)
					DeleteNPC(2335)

				if $Now_Month > 1
//			DeleteNPC(2336)??
						DeleteNPC(2336)
						DeleteNPC(2337)
						DeleteNPC(2338)
						DeleteNPC(2339)
						DeleteNPC(2340)
						DeleteNPC(2341)
				else
					if $Now_Mday > 6
//			DeleteNPC(2336)??
						DeleteNPC(2336)
						DeleteNPC(2337)
						DeleteNPC(2338)
						DeleteNPC(2339)
						DeleteNPC(2340)
						DeleteNPC(2341)
					endif
				endif

				if $Now_Month >= 2
					DeleteNPC(2331)
//			DeleteNPC(2331)??
				endif

			endif

	}


		function bawangzhang(){

		//????????
		$Now_Minute =  GetSystemTime( "minute")
		$Now_Hour =  GetSystemTime( "hour" )
		$Now_Mday =  GetSystemTime( "mday" )
		$Now_Month =  GetSystemTime( "month" )
		$Line = GetServerLineID
		$Now_Year =  GetSystemTime( "year" )
		$hour = GetSystemTime("hour")
		$minute = GetSystemTime("minute")
		$hour = $hour * 100
		$time = $hour + $minute
		$Now_Week = GetSystemTime("week")

		if $time == 0
			$key = 367
			while $key <= 386
				SetServerVar($key,0)
				$key += 1
			endwhile
		endif

		if $Now_Week == 6
			if $time == 1608
				BC("screen", "server", -1 , "(Realm 6) The Pursuit of Rapture event has already started! Form a party to participate in this event. Then talk to Dhocky in Atlantis.")
				BC("chat", "server", -1 , "(Realm 6) The Pursuit of Rapture event has already started! Form a party to participate in this event. Then talk to Dhocky in Atlantis.")
			endif
			if $time == 1538
				BC("screen", "server", -1 , "(Realm 6) The Pursuit of Rapture event has already started! Form a party to participate in this event. Then talk to Dhocky in Atlantis.")
				BC("chat", "server", -1 , "(Realm 6) The Pursuit of Rapture event has already started! Form a party to participate in this event. Then talk to Dhocky in Atlantis.")
			endif
			if $time == 1500
				BC("screen", "server", -1 , "(Realm 6) The Pursuit of Rapture event is starting. Talk to Dhocky in Atlantis and form a party to participate in this event. Whose party will be able to win first place?")
				BC("chat", "server", -1 , "(Realm 6) The Pursuit of Rapture event is starting. Talk to Dhocky in Atlantis and form a party to participate in this event. Whose party will be able to win first place?")
			endif
			if $time == 1455
				BC("screen", "server", -1 , "(Realm 6) The Pursuit of Rapture event is starting. Talk to Dhocky in Atlantis and form a party to participate. The faster a party in this server is able to complete this event, the better the presents they'll receive!")
				BC("chat", "server", -1 , "(Realm 6) The Pursuit of Rapture event is starting. Talk to Dhocky in Atlantis and form a party to participate. The faster a party in this server is able to complete this event, the better the presents they'll receive!")
			endif
			if $time == 1438
				BC("screen", "server", -1 , "(Realm 6) The Pursuit of Rapture event is starting. Talk to Dhocky in Atlantis and form a party to participate. The faster a party in this server is able to complete this event, the better the presents they'll receive!")
				BC("chat", "server", -1 , "(Realm 6) The Pursuit of Rapture event is starting. Talk to Dhocky in Atlantis and form a party to participate. The faster a party in this server is able to complete this event, the better the presents they'll receive!")
			endif
			if $time == 1408
				BC("screen", "server", -1 , "(Realm 6) The Pursuit of Rapture event is starting. Talk to Dhocky in Atlantis and form a party to participate. The faster a party in this server is able to complete this event, the better the presents they'll receive!")
				BC("chat", "server", -1 , "(Realm 6) The Pursuit of Rapture event is starting. Talk to Dhocky in Atlantis and form a party to participate. The faster a party in this server is able to complete this event, the better the presents they'll receive!")
			endif
			if $time == 1208
				BC("screen", "server", -1 , "(Realm 6) The Pursuit of Rapture event is starting. Talk to Dhocky in Atlantis and form a party to participate. The faster a party in this server is able to complete this event, the better the presents they'll receive!")
				BC("chat", "server", -1 , "(Realm 6) The Pursuit of Rapture event is starting. Talk to Dhocky in Atlantis and form a party to participate. The faster a party in this server is able to complete this event, the better the presents they'll receive!")
			endif
			if $time == 1008
				BC("screen", "server", -1 , "(Realm 6) The Pursuit of Rapture event is starting. Talk to Dhocky in Atlantis and form a party to participate. The faster a party in this server is able to complete this event, the better the presents they'll receive!")
				BC("chat", "server", -1 , "(Realm 6) The Pursuit of Rapture event is starting. Talk to Dhocky in Atlantis and form a party to participate. The faster a party in this server is able to complete this event, the better the presents they'll receive!")
			endif
		endif

		//*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
		if $Now_Hour == 0
			call DEL_bawangzhangNPC()
		endif
		//*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
			if $Now_Year == 2013
				if $Now_Month == 1
					if $Now_Mday >= 1
						if $Now_Mday <= 6
							if $time == 1148
								BC("screen", "server", -1 , "The Thunderguns event is starting. Please see the holiday event page for details.")
								BC("chat", "server", -1 , "The Thunderguns event is starting. Please see the holiday event page for details.")
							endif
							if $time == 1248
								BC("screen", "server", -1 , "The Thunderguns event is starting. Please see the holiday event page for details.")
								BC("chat", "server", -1 , "The Thunderguns event is starting. Please see the holiday event page for details.")
							endif
							if $time == 1948
								BC("screen", "server", -1 , "The Thunderguns event is starting. Please see the holiday event page for details.")
								BC("chat", "server", -1 , "The Thunderguns event is starting. Please see the holiday event page for details.")
							endif
						endif
					endif
				endif
			endif
		//*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-

		$Line = GetServerLineID()
		if $Line != 7
			return
		endif

		if $Now_Year != 2012
			return
		endif

//		if $Now_Month == 12
//			if $Now_Mday >= 25
//				if $Now_Mday <= 27
//					$hour = GetSystemTime("hour")
//					$minute = GetSystemTime("minute")
//					$hour = $hour * 100
//					$time = $hour + $minute
//					if $time == 2025
//						BC("screen", "servergroup", -1 , "GUID:08359000272")
//						BC("chat", "servergroup", -1 , "GUID:08359000273")
//					endif
//					if $time == 2029
//						BC("screen", "servergroup", -1 , "GUID:08359000274")
//						BC("chat", "servergroup", -1 , "GUID:08359000275")
//					endif
//					if $time == 2030
////					32362	??
//						AddMonsterByFloat(32362,1,475,124,208,0)
//						BC("screen", "servergroup", -1 , "GUID:08359000276")
//						BC("chat", "servergroup", -1 , "GUID:08359000277")
//					endif
//				endif
//			endif
//		endif

		if $Now_Month == 12
			//---------------------
			if $Now_Mday == 28
				if $Now_Hour == 0
					$indexW = 291
					while $indexW <= 299
						SetGlobalVar($indexW,0)
						$indexW += 1
					endwhile
					SetServerVar(299,0)
					SetServerVar(358,0)
					SetServerVar(359,0)
					SetServerVar(360,0)
					SetServerVar(361,0)
				endif
			endif
			//---------------------
			if $Now_Mday == 29
				if $Now_Hour < 20
//					$indexW = 291
//					while $indexW <= 299
//						SetGlobalVar($indexW,0)
//						$indexW += 1
//					endwhile
					SetGlobalVar(299,2)
					SetGlobalVar(291,9)
					SetGlobalVar(292,9)
//					BC("chat","server",-1,"var=299-2",$var)
				endif
			endif
			//---------------------
			if $Now_Mday >= 28
				if $Now_Mday <= 31
					$hour = GetSystemTime("hour")
					$minute = GetSystemTime("minute")
					$hour = $hour * 100
					$time = $hour + $minute

					if $time == 1205
						BC("screen", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The New Year's Race event will begin tonight at 8:30. Join for a chance to win great prizes! Come place your bets - or Blessings - on the New Year's Beast that you think will win!")
						BC("scrollbar", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The New Year's Race event will begin tonight at 8:30. Join for a chance to win great prizes! Come place your bets - or Blessings - on the New Year's Beast that you think will win!")
						AddMonsterByFloat(32389,1,475,196,141,0)
					endif
					if $time == 1405
						BC("screen", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The New Year's Race event will begin tonight at 8:30. Join for a chance to win great prizes! Come place your bets - or Blessings - on the New Year's Beast that you think will win!")
						BC("scrollbar", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The New Year's Race event will begin tonight at 8:30. Join for a chance to win great prizes! Come place your bets - or Blessings - on the New Year's Beast that you think will win!")
					endif
					if $time == 1605
						BC("screen", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The New Year's Race event will begin tonight at 8:30. Join for a chance to win great prizes! Come place your bets - or Blessings - on the New Year's Beast that you think will win!")
						BC("scrollbar", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The New Year's Race event will begin tonight at 8:30. Join for a chance to win great prizes! Come place your bets - or Blessings - on the New Year's Beast that you think will win!")
					endif
					if $time == 1805
						BC("screen", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The New Year's Race event will begin tonight at 8:30. Join for a chance to win great prizes! Come place your bets - or Blessings - on the New Year's Beast that you think will win!")
						BC("scrollbar", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The New Year's Race event will begin tonight at 8:30. Join for a chance to win great prizes! Come place your bets - or Blessings - on the New Year's Beast that you think will win!")
					endif
					if $time == 1905
						BC("screen", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The New Year's Race event will begin tonight at 8:30. Join for a chance to win great prizes! Come place your bets - or Blessings - on the New Year's Beast that you think will win!")
						BC("scrollbar", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The New Year's Race event will begin tonight at 8:30. Join for a chance to win great prizes! Come place your bets - or Blessings - on the New Year's Beast that you think will win!")
					endif
					if $time == 2005
						BC("screen", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The New Year's Race event will begin tonight at 8:30. Join for a chance to win great prizes! Come place your bets - or Blessings - on the New Year's Beast that you think will win!")
						BC("scrollbar", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The New Year's Race event will begin tonight at 8:30. Join for a chance to win great prizes! Come place your bets - or Blessings - on the New Year's Beast that you think will win!")
					endif
					if $time == 2020
						BC("screen", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The first round of Blessings for the New Year's Race will end in just 10 minutes! The race will take place in the main city. If you haven't yet Blessed your race candidate of choice, you have until 20:30 to do so!")
						BC("scrollbar", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The first round of Blessings for the New Year's Race will end in just 10 minutes! The race will take place in the main city. If you haven't yet Blessed your race candidate of choice, you have until 20:30 to do so!")
					endif
					if $time == 2025
						BC("screen", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The first round of Blessings for the New Year's Race will end in just 5 minutes! The race will take place in the main city. If you haven't yet Blessed your race candidate of choice, you have until 20:30 to do so!")
						BC("scrollbar", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The first round of Blessings for the New Year's Race will end in just 5 minutes! The race will take place in the main city. If you haven't yet Blessed your race candidate of choice, you have until 20:30 to do so!")
					endif
					if $time == 2028
						BC("screen", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The first round of the New Year's Race will begin in the main city in just 2 minutes! If you haven't yet Blessed your race candidate of choice, you have until 20:30 to do so!")
						BC("chat", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The first round of the New Year's Race will begin in the main city in just 2 minutes! If you haven't yet Blessed your race candidate of choice, you have until 20:30 to do so!")
					endif
					if $time == 2029
						BC("screen", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The first round of the New Year's Race will begin in the main city in just 1 minute! If you haven't yet Blessed your race candidate of choice, you have until 20:30 to do so!")
						BC("chat", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The first round of the New Year's Race will begin in the main city in just 1 minute! If you haven't yet Blessed your race candidate of choice, you have until 20:30 to do so!")
					endif
					if $time == 2035
						BC("screen", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The second round of Blessings for the New Year's Race will end in 10 minutes! If you haven't yet Blessed your race candidate of choice, you have until 20:45 to do so!")
						BC("scrollbar", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The second round of Blessings for the New Year's Race will end in 10 minutes! If you haven't yet Blessed your race candidate of choice, you have until 20:45 to do so!")
					endif
					if $time == 2040
						BC("screen", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The second round of Blessings for the New Year's Race will end in 5 minutes! If you haven't yet Blessed your race candidate of choice, you have until 20:45 to do so!")
						BC("scrollbar", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The second round of Blessings for the New Year's Race will end in 5 minutes! If you haven't yet Blessed your race candidate of choice, you have until 20:45 to do so!")
					endif
					if $time == 2043
						BC("screen", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The second round of the New Year's Race will begin in the main city in just 2 minutes! If you haven't yet Blessed your race candidate of choice, you have until 20:45 to do so!")
						BC("chat", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The second round of the New Year's Race will begin in the main city in just 2 minutes! If you haven't yet Blessed your race candidate of choice, you have until 20:45 to do so!")
					endif
					if $time == 2044
						BC("screen", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The second round of the New Year's Race will begin in the main city in just 1 minute! If you haven't yet Blessed your race candidate of choice, you have until 20:45 to do so!")
						BC("chat", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The second round of the New Year's Race will begin in the main city in just 1 minute! If you haven't yet Blessed your race candidate of choice, you have until 20:45 to do so!")
					endif

					if $time == 2030
						$indexW = 32365
						while $indexW <= 32372
							DeleteMonster($mapid,$indexW)
							$indexW += 1
						endwhile
						$monsterID1 = RandomNumber(0,1)
						$monsterID1 += 32365
						$monsterID2 = RandomNumber(0,1)
						$monsterID2 += 32367
						$monsterID3 = RandomNumber(0,1)
						$monsterID3 += 32369
						$monsterID4 = RandomNumber(0,1)
						$monsterID4 += 32371
						DeleteNPC(2332)
						DeleteNPC(2333)
						DeleteNPC(2334)
						DeleteNPC(2335)
						AddMonsterByFloat($monsterID1,1,475,127,144,0)
						AddMonsterByFloat($monsterID2,1,475,127,140,0)
						AddMonsterByFloat($monsterID3,1,475,127,138,0)
						AddMonsterByFloat($monsterID4,1,475,127,142,0)
						AddMonsterByFloat(32373,1,475,187,141,0,0,90)
						AddMonsterByFloat(32374,1,475,187,138,0,0,0)
						AddMonsterByFloat(32374,1,475,187,145,0,0,0)
						SetServerVar(299,1)
						SetServerVar(358,0)
						SetServerVar(359,0)
						SetServerVar(360,0)
						SetServerVar(361,0)
						BC("screen", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The first round of the New Year's Race is starting! 3... 2... 1... and they're off!")
						BC("scrollbar", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The first round of the New Year's Race is starting! 3... 2... 1... and they're off!")
					endif

					if $time == 2045
						$indexW = 32365
						while $indexW <= 32372
							DeleteMonster($mapid,$indexW)
							$indexW += 1
						endwhile
						$monsterID1 = RandomNumber(0,1)
						$monsterID1 += 32365
						$monsterID2 = RandomNumber(0,1)
						$monsterID2 += 32367
						$monsterID3 = RandomNumber(0,1)
						$monsterID3 += 32369
						$monsterID4 = RandomNumber(0,1)
						$monsterID4 += 32371
						DeleteNPC(2332)
						DeleteNPC(2333)
						DeleteNPC(2334)
						DeleteNPC(2335)
						AddMonsterByFloat($monsterID1,1,475,127,144,0)
						AddMonsterByFloat($monsterID2,1,475,127,140,0)
						AddMonsterByFloat($monsterID3,1,475,127,138,0)
						AddMonsterByFloat($monsterID4,1,475,127,142,0)
						AddMonsterByFloat(32373,1,475,187,141,0,0,90)
						AddMonsterByFloat(32374,1,475,187,138,0,0,0)
						AddMonsterByFloat(32374,1,475,187,145,0,0,0)
						SetServerVar(299,1)
						SetServerVar(358,0)
						SetServerVar(359,0)
						SetServerVar(360,0)
						SetServerVar(361,0)
						BC("screen", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The second round of the New Year's Race is starting! 3... 2... 1... and they're off!")
						BC("scrollbar", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The second round of the New Year's Race is starting! 3... 2... 1... and they're off!")
					endif

				endif
			endif
			//---------------------
		endif

		}
//-----------------------??????????------------
		function longdinixi(){
	//????????
		$Now_Minute =  GetSystemTime( "minute")
		$Now_Hour =  GetSystemTime( "hour" )
		$Now_Mday =  GetSystemTime( "mday" )
		$Now_Month =  GetSystemTime( "month" )
		$Line = GetServerLineID
		$Now_Year =  GetSystemTime( "year" )

		if $Line != 7
			return
		endif

		if $Now_Year != 2012
			return
		endif

		if $Now_Month == 9
			if $Now_Mday >= 7
				if $Now_Mday <= 9
					$hour = GetSystemTime("hour")
					$minute = GetSystemTime("minute")
					$hour = $hour * 100
					$time = $hour + $minute
					if $time == 1131
						BC("screen", "servergroup", -1 , "The Dragon Emperor's Revenge event has been so popular that it will be held for 3 whole days in this server, from Sept. 7th - 9th! The event will happen every day during that time, at 12:00, 1:30PM, 3:00PM, 5:30PM, and 7:00PM.")
						BC("chat", "servergroup", -1 , "The Dragon Emperor's Revenge event has been so popular that it will be held for 3 whole days in this server, from Sept. 7th - 9th! The event will happen every day during that time, at 12:00, 1:30PM, 3:00PM, 5:30PM, and 7:00PM.")
					endif
					if $time == 1146
						BC("screen", "servergroup", -1 , "The Dragon Emperor's Revenge event has been so popular that it will be held for 3 whole days in this server, from Sept. 7th - 9th! The event will happen every day during that time, at 12:00, 1:30PM, 3:00PM, 5:30PM, and 7:00PM.")
						BC("chat", "servergroup", -1 , "The Dragon Emperor's Revenge event has been so popular that it will be held for 3 whole days in this server, from Sept. 7th - 9th! The event will happen every day during that time, at 12:00, 1:30PM, 3:00PM, 5:30PM, and 7:00PM.")
					endif
					if $time == 1135
						BC("screen", "servergroup", -1 , "The Dragon Emperor's Revenge event has been so popular that it will be held for 3 whole days in this server, from Sept. 7th - 9th! The event will happen every day during that time, at 12:00, 1:30PM, 3:00PM, 5:30PM, and 7:00PM.")
						BC("chat", "servergroup", -1 , "The Dragon Emperor's Revenge event has been so popular that it will be held for 3 whole days in this server, from Sept. 7th - 9th! The event will happen every day during that time, at 12:00, 1:30PM, 3:00PM, 5:30PM, and 7:00PM.")
					endif
					if $time == 1301
						BC("screen", "servergroup", -1 , "The Dragon Emperor's Revenge event has been so popular that it will be held for 3 whole days in this server, from Sept. 7th - 9th! The event will happen every day during that time, at 12:00, 1:30PM, 3:00PM, 5:30PM, and 7:00PM.")
						BC("chat", "servergroup", -1 , "The Dragon Emperor's Revenge event has been so popular that it will be held for 3 whole days in this server, from Sept. 7th - 9th! The event will happen every day during that time, at 12:00, 1:30PM, 3:00PM, 5:30PM, and 7:00PM.")
					endif
					if $time == 1316
						BC("screen", "servergroup", -1 , "The Dragon Emperor's Revenge event has been so popular that it will be held for 3 whole days in this server, from Sept. 7th - 9th! The event will happen every day during that time, at 12:00, 1:30PM, 3:00PM, 5:30PM, and 7:00PM.")
						BC("chat", "servergroup", -1 , "The Dragon Emperor's Revenge event has been so popular that it will be held for 3 whole days in this server, from Sept. 7th - 9th! The event will happen every day during that time, at 12:00, 1:30PM, 3:00PM, 5:30PM, and 7:00PM.")
					endif
					if $time == 1431
						BC("screen", "servergroup", -1 , "The Dragon Emperor's Revenge event has been so popular that it will be held for 3 whole days in this server, from Sept. 7th - 9th! The event will happen every day during that time, at 12:00, 1:30PM, 3:00PM, 5:30PM, and 7:00PM.")
						BC("chat", "servergroup", -1 , "The Dragon Emperor's Revenge event has been so popular that it will be held for 3 whole days in this server, from Sept. 7th - 9th! The event will happen every day during that time, at 12:00, 1:30PM, 3:00PM, 5:30PM, and 7:00PM.")
					endif
					if $time == 1446
						BC("screen", "servergroup", -1 , "The Dragon Emperor's Revenge event has been so popular that it will be held for 3 whole days in this server, from Sept. 7th - 9th! The event will happen every day during that time, at 12:00, 1:30PM, 3:00PM, 5:30PM, and 7:00PM.")
						BC("chat", "servergroup", -1 , "The Dragon Emperor's Revenge event has been so popular that it will be held for 3 whole days in this server, from Sept. 7th - 9th! The event will happen every day during that time, at 12:00, 1:30PM, 3:00PM, 5:30PM, and 7:00PM.")
					endif
					if $time == 1701
						BC("screen", "servergroup", -1 , "The Dragon Emperor's Revenge event has been so popular that it will be held for 3 whole days in this server, from Sept. 7th - 9th! The event will happen every day during that time, at 12:00, 1:30PM, 3:00PM, 5:30PM, and 7:00PM.")
						BC("chat", "servergroup", -1 , "The Dragon Emperor's Revenge event has been so popular that it will be held for 3 whole days in this server, from Sept. 7th - 9th! The event will happen every day during that time, at 12:00, 1:30PM, 3:00PM, 5:30PM, and 7:00PM.")
					endif
					if $time == 1716
						BC("screen", "servergroup", -1 , "The Dragon Emperor's Revenge event has been so popular that it will be held for 3 whole days in this server, from Sept. 7th - 9th! The event will happen every day during that time, at 12:00, 1:30PM, 3:00PM, 5:30PM, and 7:00PM.")
						BC("chat", "servergroup", -1 , "The Dragon Emperor's Revenge event has been so popular that it will be held for 3 whole days in this server, from Sept. 7th - 9th! The event will happen every day during that time, at 12:00, 1:30PM, 3:00PM, 5:30PM, and 7:00PM.")
					endif
					if $time == 1831
						BC("screen", "servergroup", -1 , "The Dragon Emperor's Revenge event has been so popular that it will be held for 3 whole days in this server, from Sept. 7th - 9th! The event will happen every day during that time, at 12:00, 1:30PM, 3:00PM, 5:30PM, and 7:00PM.")
						BC("chat", "servergroup", -1 , "The Dragon Emperor's Revenge event has been so popular that it will be held for 3 whole days in this server, from Sept. 7th - 9th! The event will happen every day during that time, at 12:00, 1:30PM, 3:00PM, 5:30PM, and 7:00PM.")
					endif
					if $time == 1846
						BC("screen", "servergroup", -1 , "The Dragon Emperor's Revenge event has been so popular that it will be held for 3 whole days in this server, from Sept. 7th - 9th! The event will happen every day during that time, at 12:00, 1:30PM, 3:00PM, 5:30PM, and 7:00PM.")
						BC("chat", "servergroup", -1 , "The Dragon Emperor's Revenge event has been so popular that it will be held for 3 whole days in this server, from Sept. 7th - 9th! The event will happen every day during that time, at 12:00, 1:30PM, 3:00PM, 5:30PM, and 7:00PM.")
					endif

				endif
			endif
		endif







		if $Now_Month == 9
			if $Now_Mday == 4
				if $Now_Hour == 12
					if $Now_Minute == 0
						call longdinixi1()
					endif
				endif
			endif
		endif

		if $Now_Month == 9
			if $Now_Mday == 4
				if $Now_Hour == 15
					if $Now_Minute == 30
						call longdinixi1()
					endif
				endif
			endif
		endif

		if $Now_Month == 9
			if $Now_Mday == 4
				if $Now_Hour == 19
					if $Now_Minute == 00
						call longdinixi1()
					endif
				endif
			endif
		endif

		if $Now_Month == 9
			if $Now_Mday == 5
				if $Now_Hour == 12
					if $Now_Minute == 0
						call longdinixi1()
					endif
				endif
			endif
		endif

		if $Now_Month == 9
			if $Now_Mday == 5
				if $Now_Hour == 15
					if $Now_Minute == 30
						call longdinixi1()
					endif
				endif
			endif
		endif

		if $Now_Month == 9
			if $Now_Mday == 5
				if $Now_Hour == 19
					if $Now_Minute == 00
						call longdinixi1()
					endif
				endif
			endif
		endif

		if $Now_Month == 9
			if $Now_Mday == 6
				if $Now_Hour == 12
					if $Now_Minute == 0
						call longdinixi1()
					endif
				endif
			endif
		endif

		if $Now_Month == 9
			if $Now_Mday == 6
				if $Now_Hour == 15
					if $Now_Minute == 30
						call longdinixi1()
					endif
				endif
			endif
		endif

		if $Now_Month == 9
			if $Now_Mday == 6
				if $Now_Hour == 19
					if $Now_Minute == 00
						call longdinixi1()
					endif
				endif
			endif
		endif
///------------------------------------------------
		if $Now_Month == 9
			if $Now_Mday == 7
				if $Now_Hour == 12
					if $Now_Minute == 00
						call longdinixi2()
					endif
				endif
			endif
		endif

		if $Now_Month == 9
			if $Now_Mday == 7
				if $Now_Hour == 13
					if $Now_Minute == 30
						call longdinixi2()
					endif
				endif
			endif
		endif

		if $Now_Month == 9
			if $Now_Mday == 7
				if $Now_Hour == 15
					if $Now_Minute == 00
						call longdinixi2()
					endif
				endif
			endif
		endif

		if $Now_Month == 9
			if $Now_Mday == 7
				if $Now_Hour == 17
					if $Now_Minute == 30
						call longdinixi2()
					endif
				endif
			endif
		endif

		if $Now_Month == 9
			if $Now_Mday == 7
				if $Now_Hour == 19
					if $Now_Minute == 00
						call longdinixi2()
					endif
				endif
			endif
		endif
///------------------------------------------------
		if $Now_Month == 9
			if $Now_Mday == 8
				if $Now_Hour == 12
					if $Now_Minute == 00
						call longdinixi2()
					endif
				endif
			endif
		endif

		if $Now_Month == 9
			if $Now_Mday == 8
				if $Now_Hour == 13
					if $Now_Minute == 30
						call longdinixi2()
					endif
				endif
			endif
		endif

		if $Now_Month == 9
			if $Now_Mday == 8
				if $Now_Hour == 15
					if $Now_Minute == 00
						call longdinixi2()
					endif
				endif
			endif
		endif

		if $Now_Month == 9
			if $Now_Mday == 8
				if $Now_Hour == 17
					if $Now_Minute == 30
						call longdinixi2()
					endif
				endif
			endif
		endif

		if $Now_Month == 9
			if $Now_Mday == 8
				if $Now_Hour == 19
					if $Now_Minute == 00
						call longdinixi2()
					endif
				endif
			endif
		endif
///------------------------------------------------
		if $Now_Month == 9
			if $Now_Mday == 9
				if $Now_Hour == 12
					if $Now_Minute == 00
						call longdinixi2()
					endif
				endif
			endif
		endif

		if $Now_Month == 9
			if $Now_Mday == 9
				if $Now_Hour == 13
					if $Now_Minute == 30
						call longdinixi2()
					endif
				endif
			endif
		endif

		if $Now_Month == 9
			if $Now_Mday == 9
				if $Now_Hour == 15
					if $Now_Minute == 00
						call longdinixi2()
					endif
				endif
			endif
		endif

		if $Now_Month == 9
			if $Now_Mday == 9
				if $Now_Hour == 17
					if $Now_Minute == 30
						call longdinixi2()
					endif
				endif
			endif
		endif

		if $Now_Month == 9
			if $Now_Mday == 9
				if $Now_Hour == 19
					if $Now_Minute == 00
						call longdinixi2()
					endif
				endif
			endif
		endif

		}

//---------------?????????------------------------------
	function mingjiezailin(){
	//????????
		$Now_Minute =  GetSystemTime( "minute")
		$Now_Hour =  GetSystemTime( "hour" )
		$second = GetSystemTime("second")
		$Now_Mday =  GetSystemTime( "mday" )
		$Now_Month =  GetSystemTime( "month" )
		$Line = GetServerLineID
		$Now_Year =  GetSystemTime( "year" )
		$fuwuqi = GetServerGrade()

		if $Line != 7
			return
		endif

		if $Now_Year != 2012
			return
		endif

		if $Now_Month == 9
			if $Now_Mday == 16
				if $Now_Hour == 19
					if $Now_Minute == 30
						if $fuwuqi == 0
							AddMonsterByFloat( 11901 , 1 , 86 , 131 , 167 , 0 )
						endif
						if $fuwuqi == 1
							AddMonsterByFloat( 11911 , 1 , 86 , 131 , 167 , 0 )
						endif
						if $fuwuqi == 2
							AddMonsterByFloat( 11921 , 1 , 86 , 131 , 167 , 0 )
						endif
						if $fuwuqi == 3
							AddMonsterByFloat( 11931 , 1 , 86 , 131 , 167 , 0 )
						endif
						if $fuwuqi == 4
							AddMonsterByFloat( 11941 , 1 , 86 , 131 , 167 , 0 )
						endif
						if $fuwuqi == 5
							AddMonsterByFloat( 11951 , 1 , 86 , 131 , 167 , 0 )
						endif
						$time = $second
						$time_minute = $Now_Minute * 60
						$time += $time_minute
						$time_hour = $Now_Hour * 3600
						$time += $time_hour
						SetGlobalVar(83,$time)
						SetGlobalVar(81,0)
						BC( "scrollbar" , "server" , -1 , "(Realm 7) Hades' netherworld forces have invaded the Sea of Atlantis (131, 167). It's a crisis for mortals, and the entire world!")
						BC("screen" , "server" , -1 , "(Realm 7) Hades' netherworld forces have invaded the Sea of Atlantis (131, 167). It's a crisis for mortals, and the entire world!")
					endif
				endif
			endif
		endif

	}

//---------------???BOSS??------------------------------
function ChongwudaoBoss(){
	//?4??????
	//$a = $Now_Hour % 4
	//if $Now_Minute != 0
	//	if $a == 0
	//		$revalue = AddMonster(30013,1,79,57,93,5)
	//		if $revalue == 0
	//			BC("chat", "server", -1, "GUID:08359000334")
	//			BC("screen", "server", -1, "GUID:08359000335")
	//		endif
	//	endif
	//endif
}

//-------------------???BOSS??END-------------
//---------------------------????????------------
function OnShuaBoss(){
	//??30?BOSS1?
	$revalue = AddMonster(30101,1,86,95,53,5)
	if $revalue == 0
		BC("screen", "map", 86, "Near 240,134, Khar's Elite Guards have shown up. Please go kill them.")
		BC("chat", "map", 86, "Near 240,134, Khar's Elite Guards have shown up. Please go kill them.")
	endif
	//??45?BOSS1?
	$revalue = AddMonster(30102,1,1,103,66,5)
	if $revalue == 0
		BC("screen", "map", 1, "Near 260,166, Khar's Elite Guards have shown up. Please go kill them.")
		BC("chat", "map", 1, "Near 260,166, Khar's Elite Guards have shown up. Please go kill them.")
	endif
	//??60?BOSS1?
	$revalue = AddMonster(30103,1,88,33,81,5)
	if $revalue == 0
		BC("screen", "map", 88, "Near 83,204, Khar's Elite Guards have shown up. Please go kill them.")
		BC("chat", "map", 88, "Near 83,204, Khar's Elite Guards have shown up. Please go kill them.")
	endif
	//??75?BOSS1?
	$revalue = AddMonster(30104,1,14,26,29,5)
	if $revalue == 0
		BC("screen", "map", 14, "Near 65,73, Khar's Elite Guards have shown up. Please go kill them.")
		BC("chat", "map", 14 "Near 65,73, Khar's Elite Guards have shown up. Please go kill them.")
	endif
	//??90?BOSS1?
	$revalue = AddMonster(30105,1,21,37,17,5)
	if $revalue == 0
		BC("screen", "map", 21, "Near 93,43, Khar's Elite Guards have shown up. Please go kill them.")
		BC("chat", "map", 21, "Near 93,43, Khar's Elite Guards have shown up. Please go kill them.")
	endif
}

//-----------------????????-------------------------------
//-------------------????-------------------------------------
function OnLeiShengJiTan(){
	//?????????
	$level = GetServerVar(31)
	$player_number = GetServerVar(32)
	$monster_level = $level / $player_number
	$x = 64
	$y = 64
	$map_id = 64
	if $monster_level < 45
		AddMonster( 30121, 100, $map_id, $x, $y, 32)
		AddMonster( 30131, 5, $map_id, $x, $y, 32)
		AddMonster( 30141, 1, $map_id, $x, $y, 2)
	endif
	if $monster_level < 60
		if $monster_level >= 45
			AddMonster( 30122, 100, $map_id, $x, $y, 32)
			AddMonster( 30132, 5, $map_id, $x, $y, 32)
			AddMonster( 30142, 1, $map_id, $x, $y, 2)
		endif
	endif
	if $monster_level < 75
		if $monster_level >= 60
			AddMonster( 30123, 100, $map_id, $x, $y, 32)
			AddMonster( 30133, 5, $map_id, $x, $y, 32)
			AddMonster( 30143, 1, $map_id, $x, $y, 2)
		endif
	endif
	if $monster_level < 90
		if $monster_level >= 75
			AddMonster( 30124, 100, $map_id, $x, $y, 32)
			AddMonster( 30134, 5, $map_id, $x, $y, 32)
			AddMonster( 30144, 1, $map_id, $x, $y, 2)
		endif
	endif
	if $monster_level < 105
		if $monster_level >= 90
			AddMonster( 30125, 100, $map_id, $x, $y, 32)
			AddMonster( 30135, 5, $map_id, $x, $y, 32)
			AddMonster( 30145, 1, $map_id, $x, $y, 2)
		endif
	endif
	if $monster_level < 120
		if $monster_level >= 105
			AddMonster( 30126, 100, $map_id, $x, $y, 32)
			AddMonster( 30136, 5, $map_id, $x, $y, 32)
			AddMonster( 30146, 1, $map_id, $x, $y, 2)
		endif
	endif
	if $monster_level < 135
		if $monster_level >= 120
			AddMonster( 30127, 100, $map_id, $x, $y, 32)
			AddMonster( 30137, 5, $map_id, $x, $y, 32)
			AddMonster( 30147, 1, $map_id, $x, $y, 2)
		endif
	endif
	if $monster_level < 150
		if $monster_level >= 135
			AddMonster( 30128, 100, $map_id, $x, $y, 32)
			AddMonster( 30138, 5, $map_id, $x, $y, 32)
			AddMonster( 30148, 1, $map_id, $x, $y, 2)
		endif
	endif
	}

//-------------------------??????-----------------------

function XiTongGongGao(){

//------------------------------??????????----------------------------

//	//???5???????
//	if $Now_Hour == 2
//		if $Now_Minute == 0
//		//	BC("chat", "server", -1, "GUID:08359000346")
//			BC("scrollbar", "server", -1, "GUID:08359000347")
//		endif
//	endif
//	if $Now_Hour == 9
//		if $Now_Minute == 0
//		//	BC("chat", "server", -1, "GUID:08359000348")
//			BC("scrollbar", "server", -1, "GUID:08359000349")
//		endif
//	endif
//	if $Now_Hour == 15
//		if $Now_Minute == 0
//		//	BC("chat", "server", -1, "GUID:08359000350")
//			BC("scrollbar", "server", -1, "GUID:08359000351")
//		endif
//	endif
//	if $Now_Hour == 21
//		if $Now_Minute == 30
//		//	BC("chat", "server", -1, "GUID:08359000352")
//			BC("scrollbar", "server", -1, "GUID:08359000353")
//		endif
//	endif
//------------------------------????????????-------------------------
//--------------------------------------?????????-----------------------
	if $Now_Hour == 21
		if $Now_Minute == 0
			if $Now_Week == 4
			//	 BC("chat", "server", -1, "GUID:08359000354")
				 BC("scrollbar", "server", -1, "The Pyramid Qualification event has begun. Talk to Nyss on Realm 6 to get the quest. Good luck!")
			endif
		endif
	endif

//-------------------------?????????end-------------------
//-------------------------??????????---------------------
	if $Line == 6
		if $Now_Hour == 20
			if $Now_Minute == 0
				if $Now_Week == 3
					BC("screen", "server", -1, "Valhalla Commander Caspack: It is time! Our preparation for battle is done! The seal on the Pyramid is at its weakest moment. We will make Osiris pay!")
					BC("chat", "server", -1, "Valhalla Commander Caspack: It is time! Our preparation for battle is done! The seal on the Pyramid is at its weakest moment. We will make Osiris pay!")
				endif
				if $Now_Week == 6
					BC("screen", "server", -1, "Valhalla Commander Caspack: It is time! Our preparation for battle is done! The seal on the Pyramid is at its weakest moment. We will make Osiris pay!")
					BC("chat", "server", -1, "Valhalla Commander Caspack: It is time! Our preparation for battle is done! The seal on the Pyramid is at its weakest moment. We will make Osiris pay!")
				endif
			endif
		endif


	endif
//--------------------????????????----------------------------------
//--------------------???????-------------------------------------
//	if $Now_Week == 6
//		if $Now_Hour == 13
//			if $Now_Minute == 55
//			//	BC("chat", "server", -1, "GUID:08359000360")
//				BC("scrollbar", "server", -1, "GUID:08359000361")
//			endif
//		endif
//	endif
//	//
//	if $Now_Week == 6
//		if $Now_Hour == 14
//			if $Now_Minute == 0
//			//	BC("chat", "server", -1, "GUID:08359000362")
//
//				BC("scrollbar", "server", -1, "GUID:08359000363")
//			endif
//		endif
//	endif
//	if $Now_Week == 6
//		if $Now_Hour == 14
//			if $Now_Minute == 20
//				BC("scrollbar", "server", -1, "GUID:08359000364")
//			endif
//		endif
//	endif
//	if $Now_Week == 6
//		if $Now_Hour == 14
//			if $Now_Minute == 40
//				BC("scrollbar", "server", -1, "GUID:08359000365")
//			endif
//		endif
//	endif
//	if $Now_Week == 6
//		if $Now_Hour == 15
//			if $Now_Minute == 0
//				BC("scrollbar", "server", -1, "GUID:08359000366")
//			endif
//		endif
//	endif
//	if $Now_Week == 6
//		if $Now_Hour == 15
//			if $Now_Minute == 20
//				BC("scrollbar", "server", -1, "GUID:08359000367")
//			endif
//		endif
//	endif
//	if $Now_Week == 6
//		if $Now_Hour == 15
//			if $Now_Minute == 40
//				BC("scrollbar", "server", -1, "GUID:08359000368")
//			endif
//		endif
//	endif
//	if $Now_Week == 6
//		if $Now_Hour == 16
//			if $Now_Minute == 0
//				BC("scrollbar", "server", -1, "GUID:08359000369")
//			endif
//		endif
//	endif
//	if $Now_Week == 6
//		if $Now_Hour == 16
//			if $Now_Minute == 20
//				BC("scrollbar", "server", -1, "GUID:08359000370")
//			endif
//		endif
//	endif
//	if $Now_Week == 6
//		if $Now_Hour == 16
//			if $Now_Minute == 40
//				BC("scrollbar", "server", -1, "GUID:08359000371")
//			endif
//		endif
//	endif
//	if $Now_Week == 6
//		if $Now_Hour == 17
//			if $Now_Minute == 0
//				BC("scrollbar", "server", -1, "GUID:08359000372")
//			endif
//		endif
//	endif
//	if $Now_Week == 6
//		if $Now_Hour == 17
//			if $Now_Minute == 20
//				BC("scrollbar", "server", -1, "GUID:08359000373")
//			endif
//		endif
//	endif
//	if $Now_Week == 6
//		if $Now_Hour == 17
//			if $Now_Minute == 40
//				BC("scrollbar", "server", -1, "GUID:08359000374")
//			endif
//		endif
//	endif
//---------------------------------------------------------???????
//??????
	if $Now_Hour == 20
		if $Now_Minute == 55
		//	BC("chat", "server", -1, "GUID:08359000375")
			BC("scrollbar", "server", -1, "The Bountyhunter event will start in Realm 6 in 5 minutes. Please talk to Grogn in Atlantis while in Realm 6 to join!")
		endif
	endif


	if $Now_Hour == 21
		if $Now_Minute == 0
		//	BC("chat", "server", -1, "GUID:08359000377")
			BC("scrollbar", "server", -1, "The Bountyhunter event has begun. Please talk to Grogn in Atlantis while in Realm 6 to join!")
		endif
	endif
	if $Now_Hour == 21
		if $Now_Minute == 20
			BC("scrollbar", "server", -1, "The Bountyhunter event has begun. Please talk to Grogn in Atlantis while in Realm 6 to join!")
		endif
	endif
	if $Now_Hour == 21
		if $Now_Minute == 40
			BC("scrollbar", "server", -1, "The Bountyhunter event has begun. Please talk to Grogn in Atlantis while in Realm 6 to join!")
		endif
	endif
	if $Now_Hour == 22
		if $Now_Minute == 00
			BC("scrollbar", "server", -1, "The Bountyhunter event has begun. Please talk to Grogn in Atlantis while in Realm 6 to join!")
		endif
	endif
	if $Now_Hour == 22
		if $Now_Minute == 20
			BC("scrollbar", "server", -1, "The Bountyhunter event has begun. Please talk to Grogn in Atlantis while in Realm 6 to join!")
		endif
	endif
	if $Now_Hour == 22
		if $Now_Minute == 40
			BC("scrollbar", "server", -1, "The Bountyhunter event has begun. Please talk to Grogn in Atlantis while in Realm 6 to join!")
		endif
	endif


}

//-------3???BOSS-----
function Bossthree(){
	//???100
	//????101
	//??102
	//????103
$LineID = GetServerLineID()
if $LineID == 1
//-------??------
	$RandomID1 = RandomNumber( 1, 5 )
	if $Now_Hour == 3
		if $Now_Minute == 30
			if $RandomID1 == 1
				AddMonster( 30001, 1, 87, 17, 86, 0 )
				SetServerVar( 100, 1 )
			endif
			if $RandomID1 == 2
				AddMonster( 30001, 1, 87, 31, 50, 0 )
				SetServerVar( 100, 1 )
			endif
			if $RandomID1 == 3
				AddMonster( 30001, 1, 87, 47, 34, 0 )
				SetServerVar( 100, 1 )
			endif
			if $RandomID1 == 4
				AddMonster( 30001, 1, 87, 93, 74, 0 )
				SetServerVar( 100, 1 )
			endif
			if $RandomID1 == 5
				AddMonster( 30001, 1, 87, 57, 81, 0 )
				SetServerVar( 100, 1 )
			endif
		endif
	endif
	if $Now_Hour == 6
		if $Now_Minute == 30
			if $RandomID1 == 1
				AddMonster( 30001, 1, 87, 17, 86, 0 )
				SetServerVar( 100, 1 )
			endif
			if $RandomID1 == 2
				AddMonster( 30001, 1, 87, 31, 50, 0 )
				SetServerVar( 100, 1 )
			endif
			if $RandomID1 == 3
				AddMonster( 30001, 1, 87, 47, 34, 0 )
				SetServerVar( 100, 1 )
			endif
			if $RandomID1 == 4
				AddMonster( 30001, 1, 87, 93, 74, 0 )
				SetServerVar( 100, 1 )
			endif
			if $RandomID1 == 5
				AddMonster( 30001, 1, 87, 57, 81, 0 )
				SetServerVar( 100, 1 )
			endif
		endif
	endif
	if $Now_Hour == 9
		if $Now_Minute == 30
			if $RandomID1 == 1
				AddMonster( 30001, 1, 87, 17, 86, 0 )
				SetServerVar( 100, 1 )
			endif
			if $RandomID1 == 2
				AddMonster( 30001, 1, 87, 31, 50, 0 )
				SetServerVar( 100, 1 )
			endif
			if $RandomID1 == 3
				AddMonster( 30001, 1, 87, 47, 34, 0 )
				SetServerVar( 100, 1 )
			endif
			if $RandomID1 == 4
				AddMonster( 30001, 1, 87, 93, 74, 0 )
				SetServerVar( 100, 1 )
			endif
			if $RandomID1 == 5
				AddMonster( 30001, 1, 87, 57, 81, 0 )
				SetServerVar( 100, 1 )
			endif
		endif
	endif
	if $Now_Hour == 12
		if $Now_Minute == 30
			if $RandomID1 == 1
				AddMonster( 30001, 1, 87, 17, 86, 0 )
				SetServerVar( 100, 1 )
			endif
			if $RandomID1 == 2
				AddMonster( 30001, 1, 87, 31, 50, 0 )
				SetServerVar( 100, 1 )
			endif
			if $RandomID1 == 3
				AddMonster( 30001, 1, 87, 47, 34, 0 )
				SetServerVar( 100, 1 )
			endif
			if $RandomID1 == 4
				AddMonster( 30001, 1, 87, 93, 74, 0 )
				SetServerVar( 100, 1 )
			endif
			if $RandomID1 == 5
				AddMonster( 30001, 1, 87, 57, 81, 0 )
				SetServerVar( 100, 1 )
			endif
		endif
	endif
	if $Now_Hour == 15
		if $Now_Minute == 30
			if $RandomID1 == 1
				AddMonster( 30001, 1, 87, 17, 86, 0 )
				SetServerVar( 100, 1 )
			endif
			if $RandomID1 == 2
				AddMonster( 30001, 1, 87, 31, 50, 0 )
				SetServerVar( 100, 1 )
			endif
			if $RandomID1 == 3
				AddMonster( 30001, 1, 87, 47, 34, 0 )
				SetServerVar( 100, 1 )
			endif
			if $RandomID1 == 4
				AddMonster( 30001, 1, 87, 93, 74, 0 )
				SetServerVar( 100, 1 )
			endif
			if $RandomID1 == 5
				AddMonster( 30001, 1, 87, 57, 81, 0 )
				SetServerVar( 100, 1 )
			endif
		endif
	endif
	if $Now_Hour == 18
		if $Now_Minute == 30
			if $RandomID1 == 1
				AddMonster( 30001, 1, 87, 17, 86, 0 )
				SetServerVar( 100, 1 )
			endif
			if $RandomID1 == 2
				AddMonster( 30001, 1, 87, 31, 50, 0 )
				SetServerVar( 100, 1 )
			endif
			if $RandomID1 == 3
				AddMonster( 30001, 1, 87, 47, 34, 0 )
				SetServerVar( 100, 1 )
			endif
			if $RandomID1 == 4
				AddMonster( 30001, 1, 87, 93, 74, 0 )
				SetServerVar( 100, 1 )
			endif
			if $RandomID1 == 5
				AddMonster( 30001, 1, 87, 57, 81, 0 )
				SetServerVar( 100, 1 )
			endif
		endif
	endif
	if $Now_Hour == 21
		if $Now_Minute == 30
			if $RandomID1 == 1
				AddMonster( 30001, 1, 87, 17, 86, 0 )
				SetServerVar( 100, 1 )
			endif
			if $RandomID1 == 2
				AddMonster( 30001, 1, 87, 31, 50, 0 )
				SetServerVar( 100, 1 )
			endif
			if $RandomID1 == 3
				AddMonster( 30001, 1, 87, 47, 34, 0 )
				SetServerVar( 100, 1 )
			endif
			if $RandomID1 == 4
				AddMonster( 30001, 1, 87, 93, 74, 0 )
				SetServerVar( 100, 1 )
			endif
			if $RandomID1 == 5
				AddMonster( 30001, 1, 87, 57, 81, 0 )
				SetServerVar( 100, 1 )
			endif
		endif
	endif
	if $Now_Hour == 0
		if $Now_Minute == 30
			if $RandomID1 == 1
				AddMonster( 30001, 1, 87, 17, 86, 0 )
				SetServerVar( 100, 1 )
			endif
			if $RandomID1 == 2
				AddMonster( 30001, 1, 87, 31, 50, 0 )
				SetServerVar( 100, 1 )
			endif
			if $RandomID1 == 3
				AddMonster( 30001, 1, 87, 47, 34, 0 )
				SetServerVar( 100, 1 )
			endif
			if $RandomID1 == 4
				AddMonster( 30001, 1, 87, 93, 74, 0 )
				SetServerVar( 100, 1 )
			endif
			if $RandomID1 == 5
				AddMonster( 30001, 1, 87, 57, 81, 0 )
				SetServerVar( 100, 1 )
			endif
		endif
	endif


//-----????-----
	if $Now_Hour == 3
		if $Now_Minute == 30
			BC("screen", "server", -1, "Evil is spreading again. The Overlord Octopus has re-emerged.")
		endif
	endif
	if $Now_Hour == 6
		if $Now_Minute == 30
			BC("screen", "server", -1, "Evil is spreading again. The Overlord Octopus has re-emerged.")
		endif
	endif
	if $Now_Hour == 9
		if $Now_Minute == 30
			BC("screen", "server", -1, "Evil is spreading again. The Overlord Octopus has re-emerged.")
		endif
	endif
	if $Now_Hour == 12
		if $Now_Minute == 30
			BC("screen", "server", -1, "Evil is spreading again. The Overlord Octopus has re-emerged.")
		endif
	endif
	if $Now_Hour == 15
		if $Now_Minute == 30
			BC("screen", "server", -1, "Evil is spreading again. The Overlord Octopus has re-emerged.")
		endif
	endif
	if $Now_Hour == 18
		if $Now_Minute == 30
			BC("screen", "server", -1, "Evil is spreading again. The Overlord Octopus has re-emerged.")
		endif
	endif
	if $Now_Hour == 21
		if $Now_Minute == 30
			BC("screen", "server", -1, "Evil is spreading again. The Overlord Octopus has re-emerged.")
		endif
	endif
	if $Now_Hour == 0
		if $Now_Minute == 30
			BC("screen", "server", -1, "Evil is spreading again. The Overlord Octopus has re-emerged.")
		endif
	endif

//------????----
	$serverboss1 = GetServerVar( 100 )

	if $Now_Hour == 3
		if $Now_Minute == 10
			if $serverboss1 == 1
				BC("screen", "map", 87, "Evil is fading. The Overlord Octopus will vanish in 10 minutes.")
			endif
		endif
		if $Now_Minute == 19
			if $serverboss1 == 1
				BC("screen", "map", 87, "The Overlord Octopus will vanish in 1 minute.")
			endif
		endif
	endif
	if $Now_Hour == 6
		if $Now_Minute == 10
			if $serverboss1 == 1
				BC("screen", "map", 87, "Evil is fading. The Overlord Octopus will vanish in 10 minutes.")
			endif
		endif
		if $Now_Minute == 19
			if $serverboss1 == 1
				BC("screen", "map", 87, "The Overlord Octopus will vanish in 1 minute.")
			endif
		endif
	endif
	if $Now_Hour == 9
		if $Now_Minute == 10
			if $serverboss1 == 1
				BC("screen", "map", 87, "Evil is fading. The Overlord Octopus will vanish in 10 minutes.")
			endif
		endif
		if $Now_Minute == 19
			if $serverboss1 == 1
				BC("screen", "map", 87, "The Overlord Octopus will vanish in 1 minute.")
			endif
		endif
	endif
	if $Now_Hour == 12
		if $Now_Minute == 10
			if $serverboss1 == 1
				BC("screen", "map", 87, "Evil is fading. The Overlord Octopus will vanish in 10 minutes.")
			endif
		endif
		if $Now_Minute == 19
			if $serverboss1 == 1
				BC("screen", "map", 87, "The Overlord Octopus will vanish in 1 minute.")
			endif
		endif
	endif
	if $Now_Hour == 15
		if $Now_Minute == 10
			if $serverboss1 == 1
				BC("screen", "map", 87, "Evil is fading. The Overlord Octopus will vanish in 10 minutes.")
			endif
		endif
		if $Now_Minute == 19
			if $serverboss1 == 1
				BC("screen", "map", 87, "The Overlord Octopus will vanish in 1 minute.")
			endif
		endif
	endif
	if $Now_Hour == 18
		if $Now_Minute == 10
			if $serverboss1 == 1
				BC("screen", "map", 87, "Evil is fading. The Overlord Octopus will vanish in 10 minutes.")
			endif
		endif
		if $Now_Minute == 19
			if $serverboss1 == 1
				BC("screen", "map", 87, "The Overlord Octopus will vanish in 1 minute.")
			endif
		endif
	endif
	if $Now_Hour == 21
		if $Now_Minute == 10
			if $serverboss1 == 1
				BC("screen", "map", 87, "Evil is fading. The Overlord Octopus will vanish in 10 minutes.")
			endif
		endif
		if $Now_Minute == 19
			if $serverboss1 == 1
				BC("screen", "map", 87, "The Overlord Octopus will vanish in 1 minute.")
			endif
		endif
	endif
	if $Now_Hour == 0
		if $Now_Minute == 10
			if $serverboss1 == 1
				BC("screen", "map", 87, "Evil is fading. The Overlord Octopus will vanish in 10 minutes.")
			endif
		endif
		if $Now_Minute == 19
			if $serverboss1 == 1
				BC("screen", "map", 87, "The Overlord Octopus will vanish in 1 minute.")
			endif
		endif
	endif
endif

}

//------4??BOSS??-----
function BossFour(){
//------??-----
	$LineID = GetServerLineID()
	$RandomID2 = RandomNumber( 1, 5 )
	if $Now_Hour == 4
		if $Now_Minute == 30
			if $RandomID2 == 1
			if $LineID == 1
				AddMonster( 30002, 1, 93, 21, 105, 0 )
				SetServerVar( 101, 1 )
				AddMonster( 30012, 1, 7, 62, 14, 0 )
				SetServerVar( 103, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
			endif
				AddMonster( 30011, 1, 122, 64, 55, 0 )
				SetServerVar( 102, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
			endif
			if $RandomID2 == 2
			if $LineID == 1
				AddMonster( 30002, 1, 93, 71, 103, 0 )
				SetServerVar( 101, 1 )
				AddMonster( 30012, 1, 7, 9, 85, 0 )
				SetServerVar( 103, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
			endif
				AddMonster( 30011, 1, 122, 47, 54, 0 )
				SetServerVar( 102, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
			endif
			if $RandomID2 == 3
			if $LineID == 1
				AddMonster( 30002, 1, 93, 41, 71, 0 )
				SetServerVar( 101, 1 )
				AddMonster( 30012, 1, 7, 112, 60, 0 )
				SetServerVar( 103, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
			endif
				AddMonster( 30011, 1, 122, 77, 57, 0 )
				SetServerVar( 102, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
			endif
			if $RandomID2 == 4
			if $LineID == 1
				AddMonster( 30002, 1, 93, 59, 73, 0 )
				SetServerVar( 101, 1 )
				AddMonster( 30012, 1, 7, 87, 79, 0 )
				SetServerVar( 103, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
			endif
				AddMonster( 30011, 1, 122, 54, 62, 0 )
				SetServerVar( 102, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
			endif
			if $RandomID2 == 5
			if $LineID == 1
				AddMonster( 30002, 1, 93, 52, 85, 0 )
				SetServerVar( 101, 1 )
				AddMonster( 30012, 1, 7, 77, 12, 0 )
				SetServerVar( 103, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
			endif
				AddMonster( 30011, 1, 122, 81, 64, 0 )
				SetServerVar( 102, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
			endif
		endif
	endif
	if $Now_Hour == 8
		if $Now_Minute == 30
			if $RandomID2 == 1
			if $LineID == 1
				AddMonster( 30002, 1, 93, 21, 105, 0 )
				SetServerVar( 101, 1 )
				AddMonster( 30012, 1, 7, 62, 14, 0 )
				SetServerVar( 103, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
			endif
				AddMonster( 30011, 1, 122, 64, 55, 0 )
				SetServerVar( 102, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
			endif
			if $RandomID2 == 2
			if $LineID == 1
				AddMonster( 30002, 1, 93, 71, 103, 0 )
				SetServerVar( 101, 1 )
				AddMonster( 30012, 1, 7, 9, 85, 0 )
				SetServerVar( 103, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
			endif
				AddMonster( 30011, 1, 122, 47, 54, 0 )
				SetServerVar( 102, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
			endif
			if $RandomID2 == 3
			if $LineID == 1
				AddMonster( 30002, 1, 93, 41, 71, 0 )
				SetServerVar( 101, 1 )
				AddMonster( 30012, 1, 7, 112, 60, 0 )
				SetServerVar( 103, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
			endif
				AddMonster( 30011, 1, 122, 77, 57, 0 )
				SetServerVar( 102, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
			endif
			if $RandomID2 == 4
			if $LineID == 1
				AddMonster( 30002, 1, 93, 59, 73, 0 )
				SetServerVar( 101, 1 )
				AddMonster( 30012, 1, 7, 87, 79, 0 )
				SetServerVar( 103, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
			endif
				AddMonster( 30011, 1, 122, 54, 62, 0 )
				SetServerVar( 102, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
			endif
			if $RandomID2 == 5
			if $LineID == 1
				AddMonster( 30002, 1, 93, 52, 85, 0 )
				SetServerVar( 101, 1 )
				AddMonster( 30012, 1, 7, 77, 12, 0 )
				SetServerVar( 103, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
			endif
				AddMonster( 30011, 1, 122, 81, 64, 0 )
				SetServerVar( 102, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
			endif
		endif
	endif
	if $Now_Hour == 12
		if $Now_Minute == 30
			if $RandomID2 == 1
			if $LineID == 1
				AddMonster( 30002, 1, 93, 21, 105, 0 )
				SetServerVar( 101, 1 )
				AddMonster( 30012, 1, 7, 62, 14, 0 )
				SetServerVar( 103, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
			endif
				AddMonster( 30011, 1, 122, 64, 55, 0 )
				SetServerVar( 102, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
			endif
			if $RandomID2 == 2
			if $LineID == 1
				AddMonster( 30002, 1, 93, 71, 103, 0 )
				SetServerVar( 101, 1 )
				AddMonster( 30012, 1, 7, 9, 85, 0 )
				SetServerVar( 103, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
			endif
				AddMonster( 30011, 1, 122, 47, 54, 0 )
				SetServerVar( 102, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
			endif
			if $RandomID2 == 3
			if $LineID == 1
				AddMonster( 30002, 1, 93, 41, 71, 0 )
				SetServerVar( 101, 1 )
				AddMonster( 30012, 1, 7, 112, 60, 0 )
				SetServerVar( 103, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
			endif
				AddMonster( 30011, 1, 122, 77, 57, 0 )
				SetServerVar( 102, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
			endif
			if $RandomID2 == 4
			if $LineID == 1
				AddMonster( 30002, 1, 93, 59, 73, 0 )
				SetServerVar( 101, 1 )
				AddMonster( 30012, 1, 7, 87, 79, 0 )
				SetServerVar( 103, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
			endif
				AddMonster( 30011, 1, 122, 54, 62, 0 )
				SetServerVar( 102, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
			endif
			if $RandomID2 == 5
			if $LineID == 1
				AddMonster( 30002, 1, 93, 52, 85, 0 )
				SetServerVar( 101, 1 )
				AddMonster( 30012, 1, 7, 77, 12, 0 )
				SetServerVar( 103, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
			endif
				AddMonster( 30011, 1, 122, 81, 64, 0 )
				SetServerVar( 102, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
			endif
		endif
	endif
	if $Now_Hour == 16
		if $Now_Minute == 30
			if $RandomID2 == 1
			if $LineID == 1
				AddMonster( 30002, 1, 93, 21, 105, 0 )
				SetServerVar( 101, 1 )
				AddMonster( 30012, 1, 7, 62, 14, 0 )
				SetServerVar( 103, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
			endif
				AddMonster( 30011, 1, 122, 64, 55, 0 )
				SetServerVar( 102, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
			endif
			if $RandomID2 == 2
			if $LineID == 1
				AddMonster( 30002, 1, 93, 71, 103, 0 )
				SetServerVar( 101, 1 )
				AddMonster( 30012, 1, 7, 9, 85, 0 )
				SetServerVar( 103, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
			endif
				AddMonster( 30011, 1, 122, 47, 54, 0 )
				SetServerVar( 102, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
			endif
			if $RandomID2 == 3
			if $LineID == 1
				AddMonster( 30002, 1, 93, 41, 71, 0 )
				SetServerVar( 101, 1 )
				AddMonster( 30012, 1, 7, 112, 60, 0 )
				SetServerVar( 103, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
			endif
				AddMonster( 30011, 1, 122, 77, 57, 0 )
				SetServerVar( 102, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
			endif
			if $RandomID2 == 4
			if $LineID == 1
				AddMonster( 30002, 1, 93, 59, 73, 0 )
				SetServerVar( 101, 1 )
				AddMonster( 30012, 1, 7, 87, 79, 0 )
				SetServerVar( 103, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
			endif
				AddMonster( 30011, 1, 122, 54, 62, 0 )
				SetServerVar( 102, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
			endif
			if $RandomID2 == 5
			if $LineID == 1
				AddMonster( 30002, 1, 93, 52, 85, 0 )
				SetServerVar( 101, 1 )
				AddMonster( 30012, 1, 7, 77, 12, 0 )
				SetServerVar( 103, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
			endif
				AddMonster( 30011, 1, 122, 81, 64, 0 )
				SetServerVar( 102, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
			endif
		endif
	endif
	if $Now_Hour == 20
		if $Now_Minute == 30
			if $RandomID2 == 1
			if $LineID == 1
				AddMonster( 30002, 1, 93, 21, 105, 0 )
				SetServerVar( 101, 1 )
				AddMonster( 30012, 1, 7, 62, 14, 0 )
				SetServerVar( 103, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
			endif
				AddMonster( 30011, 1, 122, 64, 55, 0 )
				SetServerVar( 102, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
			endif
			if $RandomID2 == 2
			if $LineID == 1
				AddMonster( 30002, 1, 93, 71, 103, 0 )
				SetServerVar( 101, 1 )
				AddMonster( 30012, 1, 7, 9, 85, 0 )
				SetServerVar( 103, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
			endif
				AddMonster( 30011, 1, 122, 47, 54, 0 )
				SetServerVar( 102, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
			endif
			if $RandomID2 == 3
			if $LineID == 1
				AddMonster( 30002, 1, 93, 41, 71, 0 )
				SetServerVar( 101, 1 )
				AddMonster( 30012, 1, 7, 112, 60, 0 )
				SetServerVar( 103, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
			endif
				AddMonster( 30011, 1, 122, 77, 57, 0 )
				SetServerVar( 102, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
			endif
			if $RandomID2 == 4
			if $LineID == 1
				AddMonster( 30002, 1, 93, 59, 73, 0 )
				SetServerVar( 101, 1 )
				AddMonster( 30012, 1, 7, 87, 79, 0 )
				SetServerVar( 103, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
			endif
				AddMonster( 30011, 1, 122, 54, 62, 0 )
				SetServerVar( 102, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
			endif
			if $RandomID2 == 5
			if $LineID == 1
				AddMonster( 30002, 1, 93, 52, 85, 0 )
				SetServerVar( 101, 1 )
				AddMonster( 30012, 1, 7, 77, 12, 0 )
				SetServerVar( 103, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
			endif
				AddMonster( 30011, 1, 122, 81, 64, 0 )
				SetServerVar( 102, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
			endif
		endif
	endif
	if $Now_Hour == 0
		if $Now_Minute == 30
			if $RandomID2 == 1
			if $LineID == 1
				AddMonster( 30002, 1, 93, 21, 105, 0 )
				SetServerVar( 101, 1 )
				AddMonster( 30012, 1, 7, 62, 14, 0 )
				SetServerVar( 103, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
			endif
				AddMonster( 30011, 1, 122, 64, 55, 0 )
				SetServerVar( 102, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
			endif
			if $RandomID2 == 2
			if $LineID == 1
				AddMonster( 30002, 1, 93, 71, 103, 0 )
				SetServerVar( 101, 1 )
				AddMonster( 30012, 1, 7, 9, 85, 0 )
				SetServerVar( 103, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
			endif
				AddMonster( 30011, 1, 122, 47, 54, 0 )
				SetServerVar( 102, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
			endif
			if $RandomID2 == 3
			if $LineID == 1
				AddMonster( 30002, 1, 93, 41, 71, 0 )
				SetServerVar( 101, 1 )
				AddMonster( 30012, 1, 7, 112, 60, 0 )
				SetServerVar( 103, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
			endif
				AddMonster( 30011, 1, 122, 77, 57, 0 )
				SetServerVar( 102, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
			endif
			if $RandomID2 == 4
			if $LineID == 1
				AddMonster( 30002, 1, 93, 59, 73, 0 )
				SetServerVar( 101, 1 )
				AddMonster( 30012, 1, 7, 87, 79, 0 )
				SetServerVar( 103, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
			endif
				AddMonster( 30011, 1, 122, 54, 62, 0 )
				SetServerVar( 102, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
			endif
			if $RandomID2 == 5
			if $LineID == 1
				AddMonster( 30002, 1, 93, 52, 85, 0 )
				SetServerVar( 101, 1 )
				AddMonster( 30012, 1, 7, 77, 12, 0 )
				SetServerVar( 103, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
			endif
				AddMonster( 30011, 1, 122, 81, 64, 0 )
				SetServerVar( 102, 1 )
				BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
			endif
		endif
	endif
//------????------
	$serverboss2 = GetServerVar( 101 )
	$serverboss3 = GetServerVar( 102 )
	$serverboss4 = GetServerVar( 103 )

	if $Now_Hour == 4
		if $Now_Minute == 10
			if $serverboss2 == 1
			if $LineID == 1
				BC("screen", "map", 93, "Evil is fading. The Wolfking Karth will vanish in 10 minutes.")
				BC("chat", "map", 93, "Evil is fading. The Wolfking Karth will vanish in 10 minutes.")
			endif
			endif
			if $serverboss3 == 1
				BC("screen", "map", 122, "Evil is fading. The True Dragon Emperor will vanish in 10 minutes.")
				BC("chat", "map", 122, "Evil is fading. The True Dragon Emperor will vanish in 10 minutes.")
			endif
			if $serverboss4 == 1
			if $LineID == 1
				BC("screen", "map", 7, "Evil is fading. The Naga Queen will vanish in 10 minutes.")
				BC("chat", "map", 7, "Evil is fading. The Naga Queen will vanish in 10 minutes.")
			endif
			endif
		endif
		if $Now_Minute == 19
			if $serverboss2 == 1
			if $LineID == 1
				BC("screen", "map", 93, "The Wolfking Karth will vanish in 1 minute.")
				BC("chat", "map", 93, "The Wolfking Karth will vanish in 1 minute.")
			endif
			endif
			if $serverboss3 == 1
				BC("screen", "map", 122, "The True Dragon Emperor will vanish in 1 minute.")
				BC("chat", "map", 122, "The True Dragon Emperor will vanish in 1 minute.")
			endif
			if $serverboss4 == 1
			if $LineID == 1
				BC("screen", "map", 7, "The Naga Queen will vanish in 1 minute.")
				BC("chat", "map", 7, "The Naga Queen will vanish in 1 minute.")
			endif
			endif
		endif
	endif
	if $Now_Hour == 8
		if $Now_Minute == 10
			if $serverboss2 == 1
			if $LineID == 1
				BC("screen", "map", 93, "Evil is fading. The Wolfking Karth will vanish in 10 minutes.")
				BC("chat", "map", 93, "Evil is fading. The Wolfking Karth will vanish in 10 minutes.")
			endif
			endif
			if $serverboss3 == 1
				BC("screen", "map", 122, "Evil is fading. The True Dragon Emperor will vanish in 10 minutes.")
				BC("chat", "map", 122, "Evil is fading. The True Dragon Emperor will vanish in 10 minutes.")
			endif
			if $serverboss4 == 1
			if $LineID == 1
				BC("screen", "map", 7, "Evil is fading. The Naga Queen will vanish in 10 minutes.")
				BC("chat", "map", 7, "Evil is fading. The Naga Queen will vanish in 10 minutes.")
			endif
			endif
		endif
		if $Now_Minute == 19
			if $serverboss2 == 1
			if $LineID == 1
				BC("screen", "map", 93, "The Wolfking Karth will vanish in 1 minute.")
				BC("chat", "map", 93, "The Wolfking Karth will vanish in 1 minute.")
			endif
			endif
			if $serverboss3 == 1
				BC("screen", "map", 122, "The True Dragon Emperor will vanish in 1 minute.")
				BC("chat", "map", 122, "The True Dragon Emperor will vanish in 1 minute.")
			endif
			if $serverboss4 == 1
			if $LineID == 1
				BC("screen", "map", 7, "The Naga Queen will vanish in 1 minute.")
				BC("chat", "map", 7, "The Naga Queen will vanish in 1 minute.")
			endif
			endif
		endif
	endif
	if $Now_Hour == 12
		if $Now_Minute == 10
			if $serverboss2 == 1
			if $LineID == 1
				BC("screen", "map", 93, "Evil is fading. The Wolfking Karth will vanish in 10 minutes.")
				BC("chat", "map", 93, "Evil is fading. The Wolfking Karth will vanish in 10 minutes.")
			endif
			endif
			if $serverboss3 == 1
				BC("screen", "map", 122, "Evil is fading. The True Dragon Emperor will vanish in 10 minutes.")
				BC("chat", "map", 122, "Evil is fading. The True Dragon Emperor will vanish in 10 minutes.")
			endif
			if $serverboss4 == 1
			if $LineID == 1
				BC("screen", "map", 7, "Evil is fading. The Naga Queen will vanish in 10 minutes.")
				BC("chat", "map", 7, "Evil is fading. The Naga Queen will vanish in 10 minutes.")
			endif
			endif
		endif
		if $Now_Minute == 19
			if $serverboss2 == 1
			if $LineID == 1
				BC("screen", "map", 93, "The Wolfking Karth will vanish in 1 minute.")
				BC("chat", "map", 93, "The Wolfking Karth will vanish in 1 minute.")
			endif
			endif
			if $serverboss3 == 1
				BC("screen", "map", 122, "The True Dragon Emperor will vanish in 1 minute.")
				BC("chat", "map", 122, "The True Dragon Emperor will vanish in 1 minute.")
			endif
			if $serverboss4 == 1
			if $LineID == 1
				BC("screen", "map", 7, "The Naga Queen will vanish in 1 minute.")
				BC("chat", "map", 7, "The Naga Queen will vanish in 1 minute.")
			endif
			endif
		endif
	endif
	if $Now_Hour == 16
		if $Now_Minute == 10
			if $serverboss2 == 1
			if $LineID == 1
				BC("screen", "map", 93, "Evil is fading. The Wolfking Karth will vanish in 10 minutes.")
				BC("chat", "map", 93, "Evil is fading. The Wolfking Karth will vanish in 10 minutes.")
			endif
			endif
			if $serverboss3 == 1
				BC("screen", "map", 122, "Evil is fading. The True Dragon Emperor will vanish in 10 minutes.")
				BC("chat", "map", 122, "Evil is fading. The True Dragon Emperor will vanish in 10 minutes.")
			endif
			if $serverboss4 == 1
			if $LineID == 1
				BC("screen", "map", 7, "Evil is fading. The Naga Queen will vanish in 10 minutes.")
				BC("chat", "map", 7, "Evil is fading. The Naga Queen will vanish in 10 minutes.")
			endif
			endif
		endif
		if $Now_Minute == 19
			if $serverboss2 == 1
			if $LineID == 1
				BC("screen", "map", 93, "The Wolfking Karth will vanish in 1 minute.")
				BC("chat", "map", 93, "The Wolfking Karth will vanish in 1 minute.")
			endif
			endif
			if $serverboss3 == 1
				BC("screen", "map", 122, "The True Dragon Emperor will vanish in 1 minute.")
				BC("chat", "map", 122, "The True Dragon Emperor will vanish in 1 minute.")
			endif
			if $serverboss4 == 1
			if $LineID == 1
				BC("screen", "map", 7, "The Naga Queen will vanish in 1 minute.")
				BC("chat", "map", 7, "The Naga Queen will vanish in 1 minute.")
			endif
			endif
		endif
	endif
	if $Now_Hour == 20
		if $Now_Minute == 10
			if $serverboss2 == 1
			if $LineID == 1
				BC("screen", "map", 93, "Evil is fading. The Wolfking Karth will vanish in 10 minutes.")
				BC("chat", "map", 93, "Evil is fading. The Wolfking Karth will vanish in 10 minutes.")
			endif
			endif
			if $serverboss3 == 1
				BC("screen", "map", 122, "Evil is fading. The True Dragon Emperor will vanish in 10 minutes.")
				BC("chat", "map", 122, "Evil is fading. The True Dragon Emperor will vanish in 10 minutes.")
			endif
			if $serverboss4 == 1
			if $LineID == 1
				BC("screen", "map", 7, "Evil is fading. The Naga Queen will vanish in 10 minutes.")
				BC("chat", "map", 7, "Evil is fading. The Naga Queen will vanish in 10 minutes.")
			endif
			endif
		endif
		if $Now_Minute == 19
			if $serverboss2 == 1
			if $LineID == 1
				BC("screen", "map", 93, "The Wolfking Karth will vanish in 1 minute.")
				BC("chat", "map", 93, "The Wolfking Karth will vanish in 1 minute.")
			endif
			endif
			if $serverboss3 == 1
				BC("screen", "map", 122, "The True Dragon Emperor will vanish in 1 minute.")
				BC("chat", "map", 122, "The True Dragon Emperor will vanish in 1 minute.")
			endif
			if $serverboss4 == 1
			if $LineID == 1
				BC("screen", "map", 7, "The Naga Queen will vanish in 1 minute.")
				BC("chat", "map", 7, "The Naga Queen will vanish in 1 minute.")
			endif
			endif
		endif
	endif
	if $Now_Hour == 0
		if $Now_Minute == 10
			if $serverboss2 == 1
			if $LineID == 1
				BC("screen", "map", 93, "Evil is fading. The Wolfking Karth will vanish in 10 minutes.")
				BC("chat", "map", 93, "Evil is fading. The Wolfking Karth will vanish in 10 minutes.")
			endif
			endif
			if $serverboss3 == 1
				BC("screen", "map", 122, "Evil is fading. The True Dragon Emperor will vanish in 10 minutes.")
				BC("chat", "map", 122, "Evil is fading. The True Dragon Emperor will vanish in 10 minutes.")
			endif
			if $serverboss4 == 1
			if $LineID == 1
				BC("screen", "map", 7, "Evil is fading. The Naga Queen will vanish in 10 minutes.")
				BC("chat", "map", 7, "Evil is fading. The Naga Queen will vanish in 10 minutes.")
			endif
			endif
		endif
		if $Now_Minute == 19
			if $serverboss2 == 1
			if $LineID == 1
				BC("screen", "map", 93, "The Wolfking Karth will vanish in 1 minute.")
				BC("chat", "map", 93, "The Wolfking Karth will vanish in 1 minute.")
			endif
			endif
			if $serverboss3 == 1
				BC("screen", "map", 122, "The True Dragon Emperor will vanish in 1 minute.")
				BC("chat", "map", 122, "The True Dragon Emperor will vanish in 1 minute.")
			endif
			if $serverboss4 == 1
			if $LineID == 1
				BC("screen", "map", 7, "The Naga Queen will vanish in 1 minute.")
				BC("chat", "map", 7, "The Naga Queen will vanish in 1 minute.")
			endif
			endif
		endif
	endif

}

//------???-----
function Basaka(){

		if $Now_Hour == 12
			if $Now_Minute == 00
				AddMonster( 21208, 1, 280, 82, 40, 0 )
				BC("screen", "server", -1, "Headcrusher Basaka has led his Spirit Army to the Pantheon! Help us, heroes!")
				BC("chat", "server", -1, "Headcrusher Basaka has led his Spirit Army to the Pantheon! Help us, heroes!")
			endif
		endif
		if $Now_Hour == 16
			if $Now_Minute == 00
				AddMonster( 21208, 1, 280, 82, 40, 0 )
				BC("screen", "server", -1, "Headcrusher Basaka has led his Spirit Army to the Pantheon! Help us, heroes!")
				BC("chat", "server", -1, "Headcrusher Basaka has led his Spirit Army to the Pantheon! Help us, heroes!")
			endif
		endif
		if $Now_Hour == 20
			if $Now_Minute == 00
				AddMonster( 21208, 1, 280, 82, 40, 0 )
				BC("screen", "server", -1, "Headcrusher Basaka has led his Spirit Army to the Pantheon! Help us, heroes!")
				BC("chat", "server", -1, "Headcrusher Basaka has led his Spirit Army to the Pantheon! Help us, heroes!")
			endif
		endif
		if $Now_Hour == 00
			if $Now_Minute == 00
				AddMonster( 21208, 1, 280, 82, 40, 0 )
				BC("screen", "server", -1, "Headcrusher Basaka has led his Spirit Army to the Pantheon! Help us, heroes!")
				BC("chat", "server", -1, "Headcrusher Basaka has led his Spirit Army to the Pantheon! Help us, heroes!")
			endif
		endif

}
//------??-----
function zhuque(){

		if $Now_Hour == 15
			if $Now_Minute == 50
				BC("screen", "server", -1, "The energy of the Four Sacred Beasts has been combined. They will appear in 10 min.")
				BC("chat", "server", -1, "The energy of the Four Sacred Beasts has been combined. They will appear in 10 min.")
			endif
		endif
		if $Now_Week == 6
			if $Now_Hour == 22
				if $Now_Minute == 50
					BC("screen", "server", -1, "The energy of the Four Sacred Beasts has been combined. They will appear in 10 min.")
					BC("chat", "server", -1, "The energy of the Four Sacred Beasts has been combined. They will appear in 10 min.")
				endif
			endif
		else
			if $Now_Hour == 21
				if $Now_Minute == 50
					BC("screen", "server", -1, "The energy of the Four Sacred Beasts has been combined. They will appear in 10 min.")
					BC("chat", "server", -1, "The energy of the Four Sacred Beasts has been combined. They will appear in 10 min.")
				endif
			endif
		endif


		if $Now_Hour == 16
			if $Now_Minute == 00
				BC("screen", "server", -1, "Calling all warriors! The beast of the South, the Scarlet Phoenix, has appeared at the Killing Grounds in Realms 4 and 8!")
				BC("chat", "server", -1, "Calling all warriors! The beast of the South, the Scarlet Phoenix, has appeared at the Killing Grounds in Realms 4 and 8!")
				if $Line == 4
					AddMonster( 21257, 1, 99, 42, 84, 0 )
				endif
				if $Line == 8
					AddMonster( 21257, 1, 99, 42, 84, 0 )
				endif
			endif
		endif

		if $Now_Week == 6
			if $Now_Hour == 23
				if $Now_Minute == 00
					BC("screen", "server", -1, "Calling all warriors! The beast of the South, the Scarlet Phoenix, has appeared at the Killing Grounds in Realms 4 and 8!")
					BC("chat", "server", -1, "Calling all warriors! The beast of the South, the Scarlet Phoenix, has appeared at the Killing Grounds in Realms 4 and 8!")
					if $Line == 4
						AddMonster( 21257, 1, 99, 42, 84, 0 )
					endif
					if $Line == 8
						AddMonster( 21257, 1, 99, 42, 84, 0 )
					endif
				endif
			endif
		else
			if $Now_Hour == 22
				if $Now_Minute == 00
					BC("screen", "server", -1, "Calling all warriors! The beast of the South, the Scarlet Phoenix, has appeared at the Killing Grounds in Realms 4 and 8!")
					BC("chat", "server", -1, "Calling all warriors! The beast of the South, the Scarlet Phoenix, has appeared at the Killing Grounds in Realms 4 and 8!")
					if $Line == 4
						AddMonster( 21257, 1, 99, 42, 84, 0 )
					endif
					if $Line == 8
						AddMonster( 21257, 1, 99, 42, 84, 0 )
					endif
				endif
			endif
		endif
}

//------??-----
function qinglong(){

		if $Now_Hour == 16
			if $Now_Minute == 00
				BC("screen", "server", -1, "Calling all warriors! The beast of the East, the Emerald Dragon, has appeared at Emerald Dragon Island in Realms 1 and 5!")
				BC("chat", "server", -1, "Calling all warriors! The beast of the East, the Emerald Dragon, has appeared at Emerald Dragon Island in Realms 1 and 5!")
				if $Line == 1
					AddMonster( 21265, 1, 455, 85, 96, 0 )
				endif
				if $Line == 5
					AddMonster( 21265, 1, 455, 85, 96, 0 )
				endif
			endif
		endif
		if $Now_Week == 6
			if $Now_Hour == 23
				if $Now_Minute == 00
					BC("screen", "server", -1, "Calling all warriors! The beast of the East, the Emerald Dragon, has appeared at Emerald Dragon Island in Realms 1 and 5!")
					BC("chat", "server", -1, "Calling all warriors! The beast of the East, the Emerald Dragon, has appeared at Emerald Dragon Island in Realms 1 and 5!")
					if $Line == 1
						AddMonster( 21265, 1, 455, 85, 96, 0 )
					endif
					if $Line == 5
						AddMonster( 21265, 1, 455, 85, 96, 0 )
					endif
				endif
			endif
		else
			if $Now_Hour == 22
				if $Now_Minute == 00
					BC("screen", "server", -1, "Calling all warriors! The beast of the East, the Emerald Dragon, has appeared at Emerald Dragon Island in Realms 1 and 5!")
					BC("chat", "server", -1, "Calling all warriors! The beast of the East, the Emerald Dragon, has appeared at Emerald Dragon Island in Realms 1 and 5!")
					if $Line == 1
						AddMonster( 21265, 1, 455, 85, 96, 0 )
					endif
					if $Line == 5
						AddMonster( 21265, 1, 455, 85, 96, 0 )
					endif
				endif
			endif
		endif
}

function baihu(){

		if $Now_Hour == 16
			if $Now_Minute == 00
				BC("screen", "server", -1, "Calling all warriors! The beast of the West, the White Tiger, has appeared at White Tiger Den in Realms 2 and 6! ")
				BC("chat", "server", -1, "Calling all warriors! The beast of the West, the White Tiger, has appeared at White Tiger Den in Realms 2 and 6! ")
				if $Line == 2
					AddMonster( 21275, 1, 456, 57, 69, 0 )
				endif
				if $Line == 6
					AddMonster( 21275, 1, 456, 57, 69, 0 )
				endif
			endif
		endif
		if $Now_Week == 6
			if $Now_Hour == 23
				if $Now_Minute == 00
					BC("screen", "server", -1, "Calling all warriors! The beast of the West, the White Tiger, has appeared at White Tiger Den in Realms 2 and 6! ")
					BC("chat", "server", -1, "Calling all warriors! The beast of the West, the White Tiger, has appeared at White Tiger Den in Realms 2 and 6! ")
				if $Line == 2
					AddMonster( 21275, 1, 456, 57, 69, 0 )
				endif
				if $Line == 6
					AddMonster( 21275, 1, 456, 57, 69, 0 )
				endif
				endif
			endif
		else
			if $Now_Hour == 22
				if $Now_Minute == 00
					BC("screen", "server", -1, "Calling all warriors! The beast of the West, the White Tiger, has appeared at White Tiger Den in Realms 2 and 6! ")
					BC("chat", "server", -1, "Calling all warriors! The beast of the West, the White Tiger, has appeared at White Tiger Den in Realms 2 and 6! ")
				if $Line == 2
					AddMonster( 21275, 1, 456, 57, 69, 0 )
				endif
				if $Line == 6
					AddMonster( 21275, 1, 456, 57, 69, 0 )
				endif
				endif
			endif
		endif
}

function xuanwu(){

		if $Now_Hour == 16
			if $Now_Minute == 00
				BC("screen", "server", -1, "Calling all warriors! The beast of the North, the Dark Tortoise, has appeared at Obsidian Turtle Pool in Realms 3 and 7!")
				BC("chat", "server", -1, "Calling all warriors! The beast of the North, the Dark Tortoise, has appeared at Obsidian Turtle Pool in Realms 3 and 7!")
				if $Line == 3
					AddMonster( 21285, 1, 457, 66, 35, 0 )
				endif
				if $Line == 7
					AddMonster( 21285, 1, 457, 66, 35, 0 )
				endif
			endif
		endif


		if $Now_Week == 6
			if $Now_Hour == 23
				if $Now_Minute == 00
					BC("screen", "server", -1, "Calling all warriors! The beast of the North, the Dark Tortoise, has appeared at Obsidian Turtle Pool in Realms 3 and 7!")
					BC("chat", "server", -1, "Calling all warriors! The beast of the North, the Dark Tortoise, has appeared at Obsidian Turtle Pool in Realms 3 and 7!")
					if $Line == 3
						AddMonster( 21285, 1, 457, 66, 35, 0 )
					endif
					if $Line == 7
						AddMonster( 21285, 1, 457, 66, 35, 0 )
					endif
				endif
			endif
		else
			if $Now_Hour == 22
				if $Now_Minute == 00
					BC("screen", "server", -1, "Calling all warriors! The beast of the North, the Dark Tortoise, has appeared at Obsidian Turtle Pool in Realms 3 and 7!")
					BC("chat", "server", -1, "Calling all warriors! The beast of the North, the Dark Tortoise, has appeared at Obsidian Turtle Pool in Realms 3 and 7!")
					if $Line == 3
						AddMonster( 21285, 1, 457, 66, 35, 0 )
					endif
					if $Line == 7
						AddMonster( 21285, 1, 457, 66, 35, 0 )
					endif
				endif
			endif
		endif
}
//------baituboss??-----
//--2011.11.21 by??
//9:30,13:30,17:30,21:30
//6???
function Baituboss(){
		//????????
		//??
		$Now_Minute = GetSystemTime( "minute")
		//??
		$Now_Hour = GetSystemTime( "hour" )
		//??????
		$Line = GetServerLineID()
		if $Now_Hour == 21
			if $Now_Minute == 30
				BC("screen", "server", -1, "The Spider Queen appeared in Valley of Ashes on Realm 6. Please go to kill her!")
				BC("chat", "server", -1, "The Spider Queen appeared in Valley of Ashes on Realm 6. Please go to kill her!")
				BC("screen", "server", -1, "The Spider Queen appeared in Land of the Dead on Realm 7. Please go to kill her!")
				BC("chat", "server", -1, "The Spider Queen appeared in Land of the Dead on Realm 7. Please go to kill her!")
				if $Line == 6
					$random1 = RandomNumber( 1, 4 )
					if $random1 == 1
						AddMonsterByFloat( 14200, 1, 42, 205, 221, 2, 0 )
					endif
					if $random1 == 2
						AddMonsterByFloat( 14200, 1, 42, 101, 187, 2, 0 )
					endif
					if $random1 == 3
						AddMonsterByFloat( 14200, 1, 42, 90, 82, 2, 0 )
					endif
					if $random1 == 4
						AddMonsterByFloat( 14200, 1, 42, 201, 73, 2, 0 )
					endif
					$random2 = RandomNumber( 1, 4 )
					if $random2 == 1
						AddMonsterByFloat( 14201, 1, 227, 108, 122, 2, 0 )
					endif
					if $random2 == 2
						AddMonsterByFloat( 14201, 1, 227, 181, 174, 2, 0 )
					endif
					if $random2 == 3
						AddMonsterByFloat( 14201, 1, 227, 118, 279, 2, 0 )
					endif
					if $random2 == 4
						AddMonsterByFloat( 14201, 1, 227, 108, 122, 2, 0 )
					endif
				endif
			endif
		endif
		if $Now_Hour == 9
			if $Now_Minute == 30
				BC("screen", "server", -1, "The Spider Queen appeared in Valley of Ashes on Realm 6. Please go to kill her!")
				BC("chat", "server", -1, "The Spider Queen appeared in Valley of Ashes on Realm 6. Please go to kill her!")
				BC("screen", "server", -1, "The Spider Queen appeared in Land of the Dead on Realm 7. Please go to kill her!")
				BC("chat", "server", -1, "The Spider Queen appeared in Land of the Dead on Realm 7. Please go to kill her!")
				if $Line == 6
					$random1 = RandomNumber( 1, 4 )
					if $random1 == 1
						AddMonsterByFloat( 14200, 1, 42, 205, 221, 2, 0 )
					endif
					if $random1 == 2
						AddMonsterByFloat( 14200, 1, 42, 101, 187, 2, 0 )
					endif
					if $random1 == 3
						AddMonsterByFloat( 14200, 1, 42, 90, 82, 2, 0 )
					endif
					if $random1 == 4
						AddMonsterByFloat( 14200, 1, 42, 201, 73, 2, 0 )
					endif
					$random2 = RandomNumber( 1, 4 )
					if $random2 == 1
						AddMonsterByFloat( 14201, 1, 227, 108, 122, 2, 0 )
					endif
					if $random2 == 2
						AddMonsterByFloat( 14201, 1, 227, 181, 174, 2, 0 )
					endif
					if $random2 == 3
						AddMonsterByFloat( 14201, 1, 227, 118, 279, 2, 0 )
					endif
					if $random2 == 4
						AddMonsterByFloat( 14201, 1, 227, 108, 122, 2, 0 )
					endif
				endif
			endif
		endif
		if $Now_Hour == 13
			if $Now_Minute == 30
				BC("screen", "server", -1, "The Spider Queen appeared in Valley of Ashes on Realm 6. Please go to kill her!")
				BC("chat", "server", -1, "The Spider Queen appeared in Valley of Ashes on Realm 6. Please go to kill her!")
				BC("screen", "server", -1, "The Spider Queen appeared in Land of the Dead on Realm 7. Please go to kill her!")
				BC("chat", "server", -1, "The Spider Queen appeared in Land of the Dead on Realm 7. Please go to kill her!")
				if $Line == 6
					$random1 = RandomNumber( 1, 4 )
					if $random1 == 1
						AddMonsterByFloat( 14200, 1, 42, 205, 221, 2, 0 )
					endif
					if $random1 == 2
						AddMonsterByFloat( 14200, 1, 42, 101, 187, 2, 0 )
					endif
					if $random1 == 3
						AddMonsterByFloat( 14200, 1, 42, 90, 82, 2, 0 )
					endif
					if $random1 == 4
						AddMonsterByFloat( 14200, 1, 42, 201, 73, 2, 0 )
					endif
					$random2 = RandomNumber( 1, 4 )
					if $random2 == 1
						AddMonsterByFloat( 14201, 1, 227, 108, 122, 2, 0 )
					endif
					if $random2 == 2
						AddMonsterByFloat( 14201, 1, 227, 181, 174, 2, 0 )
					endif
					if $random2 == 3
						AddMonsterByFloat( 14201, 1, 227, 118, 279, 2, 0 )
					endif
					if $random2 == 4
						AddMonsterByFloat( 14201, 1, 227, 108, 122, 2, 0 )
					endif
				endif
			endif
		endif
		if $Now_Hour == 17
			if $Now_Minute == 30
				BC("screen", "server", -1, "The Spider Queen appeared in Valley of Ashes on Realm 6. Please go to kill her!")
				BC("chat", "server", -1, "The Spider Queen appeared in Valley of Ashes on Realm 6. Please go to kill her!")
				BC("screen", "server", -1, "The Spider Queen appeared in Land of the Dead on Realm 7. Please go to kill her!")
				BC("chat", "server", -1, "The Spider Queen appeared in Land of the Dead on Realm 7. Please go to kill her!")
				if $Line == 6
					$random1 = RandomNumber( 1, 4 )
					if $random1 == 1
						AddMonsterByFloat( 14200, 1, 42, 205, 221, 2, 0 )
					endif
					if $random1 == 2
						AddMonsterByFloat( 14200, 1, 42, 101, 187, 2, 0 )
					endif
					if $random1 == 3
						AddMonsterByFloat( 14200, 1, 42, 90, 82, 2, 0 )
					endif
					if $random1 == 4
						AddMonsterByFloat( 14200, 1, 42, 201, 73, 2, 0 )
					endif
					$random2 = RandomNumber( 1, 4 )
					if $random2 == 1
						AddMonsterByFloat( 14201, 1, 227, 108, 122, 2, 0 )
					endif
					if $random2 == 2
						AddMonsterByFloat( 14201, 1, 227, 181, 174, 2, 0 )
					endif
					if $random2 == 3
						AddMonsterByFloat( 14201, 1, 227, 118, 279, 2, 0 )
					endif
					if $random2 == 4
						AddMonsterByFloat( 14201, 1, 227, 108, 122, 2, 0 )
					endif
				endif
			endif
		endif
}
//?????,????
// 1????+1,50????+1000,90????+1000000
function PetRefresh(){
	//????????
	//??
	$Now_Minute = GetSystemTime( "minute")
	//??
	$Now_Hour = GetSystemTime( "hour" )
	//????
//	$a = $Now_Minute % 2
////	if $a == 0
////		BC("screen", "server", -1, "GUID:08359000654")
////		BC("chat", "server", -1, "GUID:08359000655")
////	endif
	//??????
	$numlow = 24
	$nummid = 18
	$numhigh = 27
	//????????
	$low = GetServerVar(288 )
	$mid = GetServerVar(289 )
	$high = GetServerVar(290 )
	//???????
	if $low == 0
		$low = 15
	endif
	if $mid == 0
		$mid = 60
	endif
	if $high == 0
		$high = 60
	endif
	//???????????????
	$kill1 = GetServerVar(291 )
	$kill1 = $kill1 % 1000
	$kill50 = GetServerVar(291 )
	$kill50 = $kill50 / 1000
	$kill50 = $kill50 % 1000
	$kill90 = GetServerVar(291 )
	$kill90 = $kill90 / 1000000
	$kill90 = $kill90 % 1000
	//1??????????
	//???15?????,????7min???,????????????,??1??????
	//????15min??
	if $low == 60
		if $Now_Minute == 0
				call PetRefreshLow()
				//????
				$chongzhi = GetServerVar(291 )
				$chongzhi1 = $kill1 % 1000
				$chongzhi = $chongzhi - $chongzhi1
				SetServerVar( 291, $chongzhi)
				//????
				$a = $numlow * 3
				$a = $a / 10
				if $kill1 < $a
					$low = $low * 2
					if $low > 60
						$low = 60
					endif
					SetServerVar( 288, $low)
				endif
				$a = $numlow * 8
				$a = $a / 10
				if $kill1 > $a
					$low = $low / 2
					if $low < 7
						$low = 7
					endif
					SetServerVar( 288, $low)
				endif
		endif
	else
			$a = $Now_Minute%$low
			if $a == 0
				call PetRefreshLow()
				//????
				$chongzhi = GetServerVar(291 )
				$chongzhi1 = $chongzhi % 1000
				$chongzhi = $chongzhi - $chongzhi1
				SetServerVar( 291, $chongzhi)
				//????
				$a = $numlow * 3
				$a = $a / 10
				if $kill1 < $a
					$low = $low * 2
					if $low > 60
						$low = 60
					endif
					SetServerVar( 288, $low)
				endif
				$a = $numlow * 8
				$a = $a / 10
				if $kill1 > $a
					$low = $low / 2
					if $low < 7
						$low = 7
					endif
					SetServerVar( 288, $low)
				endif
			endif
	endif
	//50??????????
	//???60?????,????30min???,????????????,??4??????
	//????30min??
	//??????59??,???????
	if $mid > 59
		$a = $mid / 60
		$a = $Now_Hour % $a
		//??????????????
		if $a == 0
			if $Now_Minute == 0
				call PetRefreshMid()
				//????
				$chongzhi = GetServerVar(291 )
				$chongzhi1 = $chongzhi / 1000
				$chongzhi1 = $chongzhi1 % 1000
				$chongzhi1 = $chongzhi1 * 1000
				$chongzhi = $chongzhi - $chongzhi1
				SetServerVar( 291, $chongzhi)
				//????
				$a = $nummid * 3
				$a = $a / 10
				if $kill50 < $a
					$mid = $mid * 2
					if $mid > 240
						$mid = 240
					endif
					SetServerVar( 289, $mid )
				endif
				$a = $nummid * 6
				$a = $a / 10
				if $kill50 > $a
					$mid = $mid / 2
					if $mid < 30
						$mid = 30
					endif
					SetServerVar( 289, $mid )
				endif
			endif
		endif
	else
		//????59,??0??30???
		if $Now_Minute == 0
				call PetRefreshMid()
				//????
				$chongzhi = GetServerVar(291 )
				$chongzhi1 = $chongzhi / 1000
				$chongzhi1 = $chongzhi1 % 1000
				$chongzhi1 = $chongzhi1 * 1000
				$chongzhi = $chongzhi - $chongzhi1
				SetServerVar( 291, $chongzhi)
				//????
				$a = $nummid * 3
				$a = $a / 10
				if $kill50 < $a
					$mid = $mid * 2
					if $mid > 240
						$mid = 240
					endif
					SetServerVar( 289, $mid )
				endif
				$a = $nummid * 6
				$a = $a / 10
				if $kill50 > $a
					$mid = $mid / 2
					if $mid < 30
						$mid = 30
					endif
					SetServerVar( 289, $mid )
				endif
		endif
		if $Now_Minute == 30
				call PetRefreshMid()
				//????
				$chongzhi = GetServerVar(291 )
				$chongzhi1 = $chongzhi / 1000
				$chongzhi1 = $chongzhi1 % 1000
				$chongzhi1 = $chongzhi1 * 1000
				$chongzhi = $chongzhi - $chongzhi1
				SetServerVar( 291, $chongzhi)
				//????
				$a = $nummid * 3
				$a = $a / 10
				if $kill50 < $a
					$mid = $mid * 2
					if $mid > 240
						$mid = 240
					endif
					SetServerVar( 289, $mid )
				endif
				$a = $nummid * 6
				$a = $a / 10
				if $kill50 > $a
					$mid = $mid / 2
					if $mid < 30
						$mid = 30
					endif
					SetServerVar( 289, $mid )
				endif
		endif
	endif
	//90??????????
	//???60?????,????30min???,????????????,??4??????
	//????30min??
	//??????59??,???????
	if $high > 59
		$a = $high / 60
		$a = $Now_Hour % $a
		//??????????????
		if $a == 0
			if $Now_Minute == 0
				call PetRefreshHigh()
				//????
				$chongzhi = GetServerVar(291 )
				$chongzhi1 = $chongzhi / 1000000
				$chongzhi1 = $chongzhi1 % 1000
				$chongzhi1 = $chongzhi1 * 1000000
				$chongzhi = $chongzhi - $chongzhi1
				SetServerVar( 291, $chongzhi)
				//????
				$a = $numhigh * 3
				$a = $a / 10
				if $kill90 < $a
					$high = $high * 2
					if $high > 240
						$high = 240
					endif
					SetServerVar( 290, $high )
				endif
				$a = $numhigh * 6
				$a = $a / 10
				if $kill90 > $a
					$high = $high / 2
					if $high < 30
						$high = 30
					endif
					SetServerVar( 290, $high )
				endif
			endif
		endif
	else
		//????59,??0??30???
		if $Now_Minute == 0
				call PetRefreshHigh()
				//????
				$chongzhi = GetServerVar(291 )
				$chongzhi1 = $chongzhi / 1000000
				$chongzhi1 = $chongzhi1 % 1000
				$chongzhi1 = $chongzhi1 * 1000000
				$chongzhi = $chongzhi - $chongzhi1
				SetServerVar( 291, $chongzhi)
				//????
				$a = $numhigh * 3
				$a = $a / 10
				if $kill90 < $a
					$high = $high * 2
					if $high > 240
						$high = 240
					endif
					SetServerVar( 290, $high )
				endif
				$a = $numhigh * 6
				$a = $a / 10
				if $kill90 > $a
					$high = $high / 2
					if $high < 30
						$high = 30
					endif
					SetServerVar( 290, $high )
				endif
		endif
		if $Now_Minute == 30
				call PetRefreshHigh()
				//????
				$chongzhi = GetServerVar(291 )
				$chongzhi1 = $chongzhi / 1000000
				$chongzhi1 = $chongzhi1 % 1000
				$chongzhi1 = $chongzhi1 * 1000000
				$chongzhi = $chongzhi - $chongzhi1
				SetServerVar( 291, $chongzhi)
				//????
				$a = $numhigh * 3
				$a = $a / 10
				if $kill90 < $a
					$high = $high * 2
					if $high > 240
						$high = 240
					endif
					SetServerVar( 290, $high )
				endif
				$a = $numhigh * 6
				$a = $a / 10
				if $kill90 > $a
					$high = $high / 2
					if $high < 30
						$high = 30
					endif
					SetServerVar( 290, $high )
				endif
		endif
	endif
}
//1-50??????
//?????,?????????????
function PetRefreshLow(){
//	BC("screen", "server", -1, "GUID:08359000656")
//	BC("chat", "server", -1, "GUID:08359000657")
	$random1 = RandomNumber( 1, 4 )
	if $random1 == 1
		 $random2 = 2
	else
		 $random2 = $random1 - 1
	endif
	if $random2 == 1
//		BC("screen", "server", -1, "GUID:08359000658")
//	  BC("chat", "server", -1, "GUID:08359000659")
		AddMonsterByFloat( 14072, 1, 128, 197, 178, 2, 0 )
		AddMonsterByFloat( 14073, 1, 129, 181, 124, 2, 0 )
		AddMonsterByFloat( 14074, 1, 119, 71, 193, 2, 0 )
		AddMonsterByFloat( 14075, 1, 0, 169, 130, 2, 0 )
		AddMonsterByFloat( 14076, 1, 87, 108, 81, 2, 0 )
		AddMonsterByFloat( 14077, 1, 106, 158, 183, 2, 0 )
		AddMonsterByFloat( 14078, 1, 86, 141, 168, 2, 0 )
		AddMonsterByFloat( 14079, 1, 3, 85, 58, 2, 0 )
		AddMonsterByFloat( 14080, 1, 4, 167, 144, 2, 0 )
		AddMonsterByFloat( 14081, 1, 5, 70, 67, 2, 0 )
		AddMonsterByFloat( 14082, 1, 6, 104, 127, 2, 0 )
		AddMonsterByFloat( 14083, 1, 1, 249, 251, 2, 0 )
	endif
	if $random1 == 1
//		BC("screen", "server", -1, "GUID:08359000660")
//	  BC("chat", "server", -1, "GUID:08359000661")
		AddMonsterByFloat( 14072, 1, 128, 197, 178, 2, 0 )
		AddMonsterByFloat( 14073, 1, 129, 181, 124, 2, 0 )
		AddMonsterByFloat( 14074, 1, 119, 71, 193, 2, 0 )
		AddMonsterByFloat( 14075, 1, 0, 169, 130, 2, 0 )
		AddMonsterByFloat( 14076, 1, 87, 108, 81, 2, 0 )
		AddMonsterByFloat( 14077, 1, 106, 158, 183, 2, 0 )
		AddMonsterByFloat( 14078, 1, 86, 141, 168, 2, 0 )
		AddMonsterByFloat( 14079, 1, 3, 85, 58, 2, 0 )
		AddMonsterByFloat( 14080, 1, 4, 167, 144, 2, 0 )
		AddMonsterByFloat( 14081, 1, 5, 70, 67, 2, 0 )
		AddMonsterByFloat( 14082, 1, 6, 104, 127, 2, 0 )
		AddMonsterByFloat( 14083, 1, 1, 249, 251, 2, 0 )
	endif
	if $random1 == 2
//	  BC("screen", "server", -1, "GUID:08359000662")
//	  BC("chat", "server", -1, "GUID:08359000663")
		AddMonsterByFloat( 14072, 1, 128, 209, 195, 2, 0 )
		AddMonsterByFloat( 14073, 1, 129, 170, 99, 2, 0 )
		AddMonsterByFloat( 14074, 1, 119, 145, 174, 2, 0 )
		AddMonsterByFloat( 14075, 1, 0, 157, 103, 2, 0 )
		AddMonsterByFloat( 14076, 1, 87, 75, 35, 2, 0 )
		AddMonsterByFloat( 14077, 1, 106, 122,1 84, 2, 0 )
		AddMonsterByFloat( 14078, 1, 86, 120, 225, 2, 0 )
		AddMonsterByFloat( 14079, 1, 3, 136, 115, 2, 0 )
		AddMonsterByFloat( 14080, 1, 4, 167, 67, 2, 0 )
		AddMonsterByFloat( 14081, 1, 5, 243, 202, 2, 0 )
		AddMonsterByFloat( 14082, 1, 6, 79, 168, 2, 0 )
		AddMonsterByFloat( 14083, 1, 1, 145, 250, 2, 0 )
	endif
	if $random2 == 2
//		BC("screen", "server", -1, "GUID:08359000664")
//	  BC("chat", "server", -1, "GUID:08359000665")
		AddMonsterByFloat( 14072, 1, 128, 209, 195, 2, 0 )
		AddMonsterByFloat( 14073, 1, 129, 170, 99, 2, 0 )
		AddMonsterByFloat( 14074, 1, 119, 145, 174, 2, 0 )
		AddMonsterByFloat( 14075, 1, 0, 157, 103, 2, 0 )
		AddMonsterByFloat( 14076, 1, 87, 75, 35, 2, 0 )
		AddMonsterByFloat( 14077, 1, 106, 122, 184, 2, 0 )
		AddMonsterByFloat( 14078, 1, 86, 120, 225, 2, 0 )
		AddMonsterByFloat( 14079, 1, 3, 136, 115, 2, 0 )
		AddMonsterByFloat( 14080, 1, 4, 167, 67, 2, 0 )
		AddMonsterByFloat( 14081, 1, 5, 243, 202, 2, 0 )
		AddMonsterByFloat( 14082, 1, 6, 79, 168, 2, 0 )
		AddMonsterByFloat( 14083, 1, 1, 145, 250, 2, 0 )
	endif
	if $random1 == 3
//		BC("screen", "server", -1, "GUID:08359000666")
//	  BC("chat", "server", -1, "GUID:08359000667")
		AddMonsterByFloat( 14072, 1, 128, 176, 162, 2, 0 )
		AddMonsterByFloat( 14073, 1, 129, 174, 175, 2, 0 )
		AddMonsterByFloat( 14074, 1, 119, 94, 155, 2, 0 )
		AddMonsterByFloat( 14075, 1, 0, 192, 112, 2, 0 )
		AddMonsterByFloat( 14076, 1, 87, 94, 218, 2, 0 )
		AddMonsterByFloat( 14077, 1, 106, 87, 136, 2, 0 )
		AddMonsterByFloat( 14078, 1, 86, 244, 126, 2, 0 )
		AddMonsterByFloat( 14079, 1, 3, 92, 275, 2, 0 )
		AddMonsterByFloat( 14080, 1, 4, 170, 285, 2, 0 )
		AddMonsterByFloat( 14081, 1, 5, 160, 225, 2, 0 )
		AddMonsterByFloat( 14082, 1, 6, 178, 230, 2, 0 )
		AddMonsterByFloat( 14083, 1, 1, 164, 188, 2, 0 )
	endif
	if $random2 == 3
//		BC("screen", "server", -1, "GUID:08359000668")
//	  BC("chat", "server", -1, "GUID:08359000669")
		AddMonsterByFloat( 14072, 1, 128, 176, 162, 2, 0 )
		AddMonsterByFloat( 14073, 1, 129, 174,1 75, 2, 0 )
		AddMonsterByFloat( 14074, 1, 119, 94, 155, 2, 0 )
		AddMonsterByFloat( 14075, 1, 0, 192, 112, 2, 0 )
		AddMonsterByFloat( 14076, 1, 87, 94, 218, 2, 0 )
		AddMonsterByFloat( 14077, 1, 106, 87, 136, 2, 0 )
		AddMonsterByFloat( 14078, 1, 86, 244, 126, 2, 0 )
		AddMonsterByFloat( 14079, 1, 3, 92, 275, 2, 0 )
		AddMonsterByFloat( 14080, 1, 4, 170, 285, 2, 0 )
		AddMonsterByFloat( 14081, 1, 5, 160, 225, 2, 0 )
		AddMonsterByFloat( 14082, 1, 6, 178, 230, 2, 0 )
		AddMonsterByFloat( 14083, 1, 1, 164, 188, 2, 0 )
	endif
	if $random1 == 4
//		BC("screen", "server", -1, "GUID:08359000670")
//	  BC("chat", "server", -1, "GUID:08359000671")
		AddMonsterByFloat( 14072, 1, 128, 216, 188, 2, 0 )
		AddMonsterByFloat( 14073, 1, 129, 183, 216, 2, 0 )
		AddMonsterByFloat( 14074, 1, 119, 144, 213, 2, 0 )
		AddMonsterByFloat( 14075, 1, 0, 180, 145, 2, 0 )
		AddMonsterByFloat( 14076, 1, 87, 219, 212, 2, 0 )
		AddMonsterByFloat( 14077, 1, 106, 135, 88, 2, 0 )
		AddMonsterByFloat( 14078, 1, 86, 194, 110, 2, 0 )
		AddMonsterByFloat( 14079, 1, 3, 224, 211, 2, 0 )
		AddMonsterByFloat( 14080, 1, 4, 158, 97, 2, 0 )
		AddMonsterByFloat( 14081, 1, 5, 214, 177, 2, 0 )
		AddMonsterByFloat( 14082, 1, 6, 112, 266, 2, 0 )
		AddMonsterByFloat( 14083, 1, 1, 270, 124, 2, 0 )
	endif
	if $random2 == 4
//		BC("screen", "server", -1, "GUID:08359000672")
//	  BC("chat", "server", -1, "GUID:08359000673")
		AddMonsterByFloat( 14072, 1, 128, 216, 188, 2, 0 )
		AddMonsterByFloat( 14073, 1, 129, 183, 216, 2, 0 )
		AddMonsterByFloat( 14074, 1, 119, 144, 213, 2, 0 )
		AddMonsterByFloat( 14075, 1, 0, 180, 145, 2, 0 )
		AddMonsterByFloat( 14076, 1, 87, 219, 212, 2, 0 )
		AddMonsterByFloat( 14077, 1, 106, 135, 88, 2, 0 )
		AddMonsterByFloat( 14078, 1, 86, 194, 110, 2, 0 )
		AddMonsterByFloat( 14079, 1, 3, 224, 211, 2, 0 )
		AddMonsterByFloat( 14080, 1, 4, 158, 97, 2, 0 )
		AddMonsterByFloat( 14081, 1, 5, 214, 177, 2, 0 )
		AddMonsterByFloat( 14082, 1, 6, 112, 266, 2, 0 )
		AddMonsterByFloat( 14083, 1, 1, 270, 124, 2, 0 )
	endif
}
//50-90??????
//?????,?????????????
function PetRefreshMid(){
//	BC("screen", "server", -1, "GUID:08359000674")
//	BC("chat", "server", -1, "GUID:08359000675")
	$random1 = RandomNumber( 1, 4 )
	if $random1 == 1
		 $random2 = 2
	else
		 $random2 = $random1 - 1
	endif
	if $random2 == 1
//		BC("screen", "server", -1, "GUID:08359000676")
//	  BC("chat", "server", -1, "GUID:08359000677")
		AddMonsterByFloat( 14084, 1, 88, 217, 101, 2, 0 )
		AddMonsterByFloat( 14085, 1, 7, 246, 146, 2, 0 )
		AddMonsterByFloat( 14086, 1, 13, 140, 247, 2, 0 )
		AddMonsterByFloat( 14087, 1, 20, 110, 156, 2, 0 )
		AddMonsterByFloat( 14088, 1, 8, 52, 239, 2, 0 )
		AddMonsterByFloat( 14089, 1, 90, 142, 69, 2, 0 )
		AddMonsterByFloat( 14090, 1, 93, 209, 142, 2, 0 )
		AddMonsterByFloat( 14091, 1, 14, 182, 77, 2, 0 )
		AddMonsterByFloat( 14092, 1, 21, 250, 260, 2, 0 )
	endif
	if $random1 == 1
//		BC("screen", "server", -1, "GUID:08359000678")
//	  BC("chat", "server", -1, "GUID:08359000679")
		AddMonsterByFloat( 14084, 1, 88, 217, 101, 2, 0 )
		AddMonsterByFloat( 14085, 1, 7, 246, 146, 2, 0 )
		AddMonsterByFloat( 14086, 1, 13, 140, 247, 2, 0 )
		AddMonsterByFloat( 14087, 1, 20, 110, 156, 2, 0 )
		AddMonsterByFloat( 14088, 1, 8, 52, 239, 2, 0 )
		AddMonsterByFloat( 14089, 1, 90, 142, 69, 2, 0 )
		AddMonsterByFloat( 14090, 1, 93, 209, 142, 2, 0 )
		AddMonsterByFloat( 14091, 1, 14, 182, 77, 2, 0 )
		AddMonsterByFloat( 14092, 1, 21, 250, 260, 2, 0 )
	endif
	if $random1 == 2
//		BC("screen", "server", -1, "GUID:08359000680")
//	  BC("chat", "server", -1, "GUID:08359000681")
		AddMonsterByFloat( 14084, 1, 88, 246, 198, 2, 0 )
		AddMonsterByFloat( 14085, 1, 7, 85, 156, 2, 0 )
		AddMonsterByFloat( 14086, 1, 13, 133, 156, 2, 0 )
		AddMonsterByFloat( 14087, 1, 20, 167, 222, 2, 0 )
		AddMonsterByFloat( 14088, 1, 8, 197, 198, 2, 0 )
		AddMonsterByFloat( 14089, 1, 90, 225, 102, 2, 0 )
		AddMonsterByFloat( 14090, 1, 93, 90, 163, 2, 0 )
		AddMonsterByFloat( 14091, 1, 14, 209, 152, 2, 0 )
		AddMonsterByFloat( 14092, 1, 21, 65, 277, 2, 0 )
	endif
	if $random2 == 2
//		BC("screen", "server", -1, "GUID:08359000682")
//	  BC("chat", "server", -1, "GUID:08359000683")
		AddMonsterByFloat( 14084, 1, 88, 246, 198, 2, 0 )
		AddMonsterByFloat( 14085, 1, 7, 85, 156, 2, 0 )
		AddMonsterByFloat( 14086, 1, 13, 133, 156, 2, 0 )
		AddMonsterByFloat( 14087, 1, 20, 167, 222, 2, 0 )
		AddMonsterByFloat( 14088, 1, 8, 197, 198, 2, 0 )
		AddMonsterByFloat( 14089, 1, 90, 225, 102, 2, 0 )
		AddMonsterByFloat( 14090, 1, 93, 90, 163, 2, 0 )
		AddMonsterByFloat( 14091, 1, 14, 209, 152, 2, 0 )
		AddMonsterByFloat( 14092, 1, 21, 65, 277, 2, 0 )
	endif
	if $random1 == 3
//		BC("screen", "server", -1, "GUID:08359000684")
//	  BC("chat", "server", -1, "GUID:08359000685")
		AddMonsterByFloat( 14084, 1, 88, 105, 142, 2, 0 )
		AddMonsterByFloat( 14085, 1, 7, 166, 220, 2, 0 )
		AddMonsterByFloat( 14086, 1, 13, 210, 237, 2, 0 )
		AddMonsterByFloat( 14087, 1, 20, 74, 158, 2, 0 )
		AddMonsterByFloat( 14088, 1, 8, 108, 61, 2, 0 )
		AddMonsterByFloat( 14089, 1, 90, 188, 205, 2, 0 )
		AddMonsterByFloat( 14090, 1, 93, 176, 229, 2, 0 )
		AddMonsterByFloat( 14091, 1, 14, 110, 78, 2, 0 )
		AddMonsterByFloat( 14092, 1, 21, 120, 119, 2, 0 )
	endif
	if $random2 == 3
//		BC("screen", "server", -1, "GUID:08359000686")
//	  BC("chat", "server", -1, "GUID:08359000687")
		AddMonsterByFloat( 14084, 1, 88, 105, 142, 2, 0 )
		AddMonsterByFloat( 14085, 1, 7, 166, 220, 2, 0 )
		AddMonsterByFloat( 14086, 1, 13, 210, 237, 2, 0 )
		AddMonsterByFloat( 14087, 1, 20, 74, 158, 2, 0 )
		AddMonsterByFloat( 14088, 1, 8, 108, 61, 2, 0 )
		AddMonsterByFloat( 14089, 1, 90, 188, 205, 2, 0 )
		AddMonsterByFloat( 14090, 1, 93, 176, 229, 2, 0 )
		AddMonsterByFloat( 14091, 1, 14, 110, 78, 2, 0 )
		AddMonsterByFloat( 14092, 1, 21, 120, 119, 2, 0 )
	endif
	if $random1 == 4
//		BC("screen", "server", -1, "GUID:08359000688")
//	  BC("chat", "server", -1, "GUID:08359000689")
		AddMonsterByFloat( 14084, 1, 88, 107, 103, 2, 0 )
		AddMonsterByFloat( 14085, 1, 7, 252, 227, 2, 0 )
		AddMonsterByFloat( 14086, 1, 13, 216, 185, 2, 0 )
		AddMonsterByFloat( 14087, 1, 20, 190, 122, 2, 0 )
		AddMonsterByFloat( 14088, 1, 8, 242, 144, 2, 0 )
		AddMonsterByFloat( 14089, 1, 90, 155, 207, 2, 0 )
		AddMonsterByFloat( 14090, 1, 93, 248, 209, 2, 0 )
		AddMonsterByFloat( 14091, 1, 14, 144, 220, 2, 0 )
		AddMonsterByFloat( 14092, 1, 21, 226, 161, 2, 0 )
	endif
	if $random2 == 4
//		BC("screen", "server", -1, "GUID:08359000690")
//	  BC("chat", "server", -1, "GUID:08359000691")
		AddMonsterByFloat( 14084, 1, 88, 107, 103, 2, 0 )
		AddMonsterByFloat( 14085, 1, 7, 252, 227, 2, 0 )
		AddMonsterByFloat( 14086, 1, 13, 216, 185, 2, 0 )
		AddMonsterByFloat( 14087, 1, 20, 190, 122, 2, 0 )
		AddMonsterByFloat( 14088, 1, 8, 242, 144, 2, 0 )
		AddMonsterByFloat( 14089, 1, 90, 155, 207, 2, 0 )
		AddMonsterByFloat( 14090, 1, 93, 248, 209, 2, 0 )
		AddMonsterByFloat( 14091, 1, 14, 144, 220, 2, 0 )
		AddMonsterByFloat( 14092, 1, 21, 226, 161, 2, 0 )
	endif
}
//90+?????
//???3?,???????3????
function PetRefreshHigh(){
//	BC("screen", "server", -1, "GUID:08359000692")
//	BC("chat", "server", -1, "GUID:08359000693")
	$random1 = RandomNumber( 1, 2 )
	$random2 = RandomNumber( 1, 2 )
	$random3 = RandomNumber( 1, 2 )
	if $random1 == 1
//		BC("screen", "server", -1, "GUID:08359000694")
//	  BC("chat", "server", -1, "GUID:08359000695")
		AddMonsterByFloat( 14093, 1, 245, 117, 166, 2, 0 )
		AddMonsterByFloat( 14094, 1, 224, 192, 220, 2, 0 )
		AddMonsterByFloat( 14095, 1, 227, 76, 161, 2, 0 )
		AddMonsterByFloat( 14096, 1, 42, 177, 166, 2, 0 )
		AddMonsterByFloat( 14097, 1, 44, 140, 140, 2, 0 )
		AddMonsterByFloat( 14098, 1, 399, 113, 242, 2, 0 )
		AddMonsterByFloat( 14099, 1, 396, 246, 100, 2, 0 )
		AddMonsterByFloat( 14100, 1, 398, 195, 221, 2, 0 )
		AddMonsterByFloat( 14101, 1, 99, 222, 122, 2, 0 )
		AddMonsterByFloat( 14102, 1, 533, 247, 142, 2, 0 )
		AddMonsterByFloat( 14104, 1, 534, 210,177, 2, 0 )
		AddMonsterByFloat( 14106, 1, 536, 163, 53, 2, 0 )
		AddMonsterByFloat( 14108, 1, 535, 156, 45, 2, 0 )
	else
//		BC("screen", "server", -1, "GUID:08359000696")
//	  BC("chat", "server", -1, "GUID:08359000697")
		AddMonsterByFloat( 14093, 1, 245, 158, 97, 2, 0 )
		AddMonsterByFloat( 14094, 1, 224, 136, 194, 2, 0 )
		AddMonsterByFloat( 14095, 1, 227, 115, 97, 2, 0 )
		AddMonsterByFloat( 14096, 1, 42, 110, 86, 2, 0 )
		AddMonsterByFloat( 14097, 1, 44, 160, 200, 2, 0 )
		AddMonsterByFloat( 14098, 1, 399, 218, 231, 2, 0 )
		AddMonsterByFloat( 14099, 1, 396, 174, 104, 2, 0 )
		AddMonsterByFloat( 14100, 1, 398, 79, 193, 2, 0 )
		AddMonsterByFloat( 14101, 1, 99, 117, 89, 2, 0 )
		AddMonsterByFloat( 14103, 1, 533, 184, 148, 2, 0 )
		AddMonsterByFloat( 14105, 1, 534, 176, 99, 2, 0 )
		AddMonsterByFloat( 14107, 1, 536, 200, 196, 2, 0 )
		AddMonsterByFloat( 14109, 1, 535, 109, 133, 2, 0 )
	endif
	if $random2 == 1
//		BC("screen", "server", -1, "GUID:08359000698")
//	  BC("chat", "server", -1, "GUID:08359000699")
		AddMonsterByFloat( 14093, 1, 245, 224, 197, 2, 0 )
		AddMonsterByFloat( 14094, 1, 224, 159, 163, 2, 0 )
		AddMonsterByFloat( 14095, 1, 227, 140, 259, 2, 0 )
		AddMonsterByFloat( 14096, 1, 42, 131, 187, 2, 0 )
		AddMonsterByFloat( 14097, 1, 44, 234, 167, 2, 0 )
		AddMonsterByFloat( 14098, 1, 399, 241, 105, 2, 0 )
		AddMonsterByFloat( 14099, 1, 396, 127, 244, 2, 0 )
		AddMonsterByFloat( 14100, 1, 398, 109, 91, 2, 0 )
		AddMonsterByFloat( 14101, 1, 99, 92, 140, 2, 0 )
		AddMonsterByFloat( 14102, 1, 533, 218, 116, 2, 0 )
		AddMonsterByFloat( 14104, 1, 534, 162, 164, 2, 0 )
		AddMonsterByFloat( 14106, 1, 536, 185, 102, 2, 0 )
		AddMonsterByFloat( 14108, 1, 535, 100, 55, 2, 0 )
	else
//		BC("screen", "server", -1, "GUID:08359000700")
//	  BC("chat", "server", -1, "GUID:08359000701")
		AddMonsterByFloat( 14093, 1, 245, 187, 222, 2, 0 )
		AddMonsterByFloat( 14094, 1, 224, 142, 124, 2, 0 )
		AddMonsterByFloat( 14095, 1, 227, 259, 197, 2, 0 )
		AddMonsterByFloat( 14096, 1, 42, 120, 225, 2, 0 )
		AddMonsterByFloat( 14097, 1, 44, 234, 112, 2, 0 )
		AddMonsterByFloat( 14098, 1, 399, 167, 176, 2, 0 )
		AddMonsterByFloat( 14099, 1, 396, 199, 202, 2, 0 )
		AddMonsterByFloat( 14100, 1, 398, 191, 96, 2, 0 )
		AddMonsterByFloat( 14101, 1, 99, 137, 240, 2, 0 )
		AddMonsterByFloat( 14103, 1, 533, 160, 191, 2, 0 )
		AddMonsterByFloat( 14105, 1, 534, 234, 96, 2, 0 )
		AddMonsterByFloat( 14107, 1, 536, 244, 188, 2, 0 )
		AddMonsterByFloat( 14109, 1, 535, 135, 177, 2, 0 )
	endif
	if $random3 == 1
		AddMonsterByFloat( 14093, 1, 245, 181, 156, 2, 0 )
		AddMonsterByFloat( 14094, 1, 224, 127, 139, 2, 0 )
		AddMonsterByFloat( 14095, 1, 227, 204, 257, 2, 0 )
		AddMonsterByFloat( 14096, 1, 42, 222, 216, 2, 0 )
		AddMonsterByFloat( 14097, 1, 44, 177, 94, 2, 0 )
		AddMonsterByFloat( 14098, 1, 399, 71, 113, 2, 0 )
		AddMonsterByFloat( 14099, 1, 396, 108, 55, 2, 0 )
		AddMonsterByFloat( 14100, 1, 398, 229, 145, 2, 0 )
		AddMonsterByFloat( 14101, 1, 99, 74, 146, 2, 0 )
		AddMonsterByFloat( 14102, 1, 533, 180, 123, 2, 0 )
		AddMonsterByFloat( 14104, 1, 534, 148, 148, 2, 0 )
		AddMonsterByFloat( 14106, 1, 536, 133, 128, 2, 0 )
		AddMonsterByFloat( 14108, 1, 535, 218, 58, 2, 0 )
	else
//		BC("screen", "server", -1, "GUID:08359000702")
//	  BC("chat", "server", -1, "GUID:08359000703")
		AddMonsterByFloat( 14093, 1, 245, 258, 174, 2, 0 )
		AddMonsterByFloat( 14094, 1, 224, 119, 205, 2, 0 )
		AddMonsterByFloat( 14095, 1, 227, 264, 135, 2, 0 )
		AddMonsterByFloat( 14096, 1, 42, 240, 216, 2, 0 )
		AddMonsterByFloat( 14097, 1, 44, 87, 117, 2, 0 )
		AddMonsterByFloat( 14098, 1, 399, 50, 62, 2, 0 )
		AddMonsterByFloat( 14099, 1, 396, 58, 120, 2, 0 )
		AddMonsterByFloat( 14100, 1, 398, 263, 164, 2, 0 )
		AddMonsterByFloat( 14101, 1, 99, 85, 76, 2, 0 )
		AddMonsterByFloat( 14103, 1, 533, 190, 187, 2, 0 )
		AddMonsterByFloat( 14105, 1, 534, 241, 74, 2, 0 )
		AddMonsterByFloat( 14107, 1, 536, 165, 225, 2, 0 )
		AddMonsterByFloat( 14109, 1, 535, 49, 147, 2, 0 )
	endif

}
//------------------------????-----------------------------
function OnLong(){
	$LineID1 = GetServerLineID()
	if $LineID1 == 6
		$Random1 = RandomNumber( 1, 100 )
		if $Random1 <= 25
			AddMonster( 30021, 1, 171, 65, 53, 0 )
			AddMonster( 30026, 1, 171, 46, 58, 0 )
			AddMonster( 30026, 1, 171, 57, 45, 0 )
			AddMonster( 30026, 1, 171, 55, 79, 0 )
			BC("scrollbar", "server", -1, "Heavenly Hourglass's power has twisted time and space. Illusion Dragon has appeared at Chrono Lair Level 2.")
		endif
		if $Random1 > 25
			if $Random1 <= 50
				AddMonster( 30022, 1, 171, 65, 53, 0 )
				AddMonster( 30027, 1, 171, 46, 58, 0 )
				AddMonster( 30027, 1, 171, 57, 45, 0 )
				AddMonster( 30027, 1, 171, 55, 79, 0 )
				BC("scrollbar", "server", -1, "Heavenly Hourglass's power has twisted time and space. Illusion Dragon has appeared at Chrono Lair Level 2.")
			endif
		endif
		if $Random1 > 50
			if $Random1 <= 75
				AddMonster( 30023, 1, 171, 65, 53, 0 )
				AddMonster( 30028, 1, 171, 46, 58, 0 )
				AddMonster( 30028, 1, 171, 57, 45, 0 )
				AddMonster( 30028, 1, 171, 55, 79, 0 )
				BC("scrollbar", "server", -1, "Heavenly Hourglass's power has twisted time and space. Illusion Dragon has appeared at Chrono Lair Level 2.")
			endif
		endif
		if $Random1 > 75
			if $Random1 <= 95
				AddMonster( 30024, 1, 171, 65, 53, 0 )
				AddMonster( 30029, 1, 171, 46, 58, 0 )
				AddMonster( 30029, 1, 171, 57, 45, 0 )
				AddMonster( 30029, 1, 171, 55, 79, 0 )
				BC("scrollbar", "server", -1, "Heavenly Hourglass's power has twisted time and space. Illusion Dragon has appeared at Chrono Lair Level 2.")
			endif
		endif
		if $Random1 > 95
			if $Random1 <= 100
				AddMonster( 30025, 1, 171, 65, 53, 0 )
				AddMonster( 30030, 1, 171, 46, 58, 0 )
				AddMonster( 30030, 1, 171, 57, 45, 0 )
				AddMonster( 30030, 1, 171, 55, 79, 0 )
				BC("scrollbar", "server", -1, "Heavenly Hourglass's power has twisted time and space. Illusion Dragon has appeared at Chrono Lair Level 2.")
			endif
		endif
	endif

}

//------?????------
function TwoHours(){
	$SerVar = GetServerVar( 66 )
	$Line = GetServerLineID()
	$Rnd = RandomNumber( 1, 5 )
	if $Now_Hour == 0
		if $Now_Minute == 0
			if $Rnd == 1
				AddMonster( 10185, 1, 42, 47, 44, 0 )
			endif
			if $Rnd == 2
				AddMonster( 10185, 1, 42, 81, 41, 0 )
			endif
			if $Rnd == 3
				AddMonster( 10185, 1, 42, 63, 87, 0 )
			endif
			if $Rnd == 4
				AddMonster( 10185, 1, 42, 90, 65, 0 )
			endif
			if $Rnd == 5
				AddMonster( 10185, 1, 42, 67, 54, 0 )
			endif
			if $SerVar < 1000
				if $Line == 2
					BC("scrollbar", "server", -1, "This week's magical material donation is in progress. Please donate proper materials to Cavinar to get great rewards.")
				endif
			endif
			BC("screen", "map", 90, "World Tree Branches are scattered across Nile River West. Find them!")
			AddMonster( 43075, 1, 90, 70, 48, 0 )
			AddMonster( 43075, 1, 90, 69, 52, 0 )
			AddMonster( 43075, 1, 90, 76, 50, 0 )
			AddMonster( 43075, 1, 90, 86, 50, 0 )
			AddMonster( 43075, 1, 90, 93, 58, 0 )
			AddMonster( 43075, 1, 90, 101, 62, 0 )
			AddMonster( 43075, 1, 90, 106, 64, 0 )
			AddMonster( 43075, 1, 90, 94, 51, 0 )
			AddMonster( 43075, 1, 90, 75, 42, 0 )
			AddMonster( 43075, 1, 90, 82, 59, 0 )
		endif
	endif
	if $Now_Hour == 2
		if $Now_Minute == 0
			if $Rnd == 1
				AddMonster( 10185, 1, 42, 47, 44, 0 )
			endif
			if $Rnd == 2
				AddMonster( 10185, 1, 42, 81, 41, 0 )
			endif
			if $Rnd == 3
				AddMonster( 10185, 1, 42, 63, 87, 0 )
			endif
			if $Rnd == 4
				AddMonster( 10185, 1, 42, 90, 65, 0 )
			endif
			if $Rnd == 5
				AddMonster( 10185, 1, 42, 67, 54, 0 )
			endif
			if $SerVar < 1000
				if $Line == 2
					BC("scrollbar", "server", -1, "This week's magical material donation is in progress. Please donate proper materials to Cavinar to get great rewards.")
				endif
			endif
			BC("screen", "map", 90, "World Tree Branches are scattered across Nile River West. Find them!")
			AddMonster( 43075, 1, 90, 70, 48, 0 )
			AddMonster( 43075, 1, 90, 69, 52, 0 )
			AddMonster( 43075, 1, 90, 76, 50, 0 )
			AddMonster( 43075, 1, 90, 86, 50, 0 )
			AddMonster( 43075, 1, 90, 93, 58, 0 )
			AddMonster( 43075, 1, 90, 101, 62, 0 )
			AddMonster( 43075, 1, 90, 106, 64, 0 )
			AddMonster( 43075, 1, 90, 94, 51, 0 )
			AddMonster( 43075, 1, 90, 75, 42, 0 )
			AddMonster( 43075, 1, 90, 82, 59, 0 )
		endif
	endif
	if $Now_Hour == 4
		if $Now_Minute == 0
			if $Rnd == 1
				AddMonster( 10185, 1, 42, 47, 44, 0 )
			endif
			if $Rnd == 2
				AddMonster( 10185, 1, 42, 81, 41, 0 )
			endif
			if $Rnd == 3
				AddMonster( 10185, 1, 42, 63, 87, 0 )
			endif
			if $Rnd == 4
				AddMonster( 10185, 1, 42, 90, 65, 0 )
			endif
			if $Rnd == 5
				AddMonster( 10185, 1, 42, 67, 54, 0 )
			endif
			if $SerVar < 1000
				if $Line == 2
					BC("scrollbar", "server", -1, "This week's magical material donation is in progress. Please donate proper materials to Cavinar to get great rewards.")
				endif
			endif
			BC("screen", "map", 90, "World Tree Branches are scattered across Nile River West. Find them!")
			AddMonster( 43075, 1, 90, 70, 48, 0 )
			AddMonster( 43075, 1, 90, 69, 52, 0 )
			AddMonster( 43075, 1, 90, 76, 50, 0 )
			AddMonster( 43075, 1, 90, 86, 50, 0 )
			AddMonster( 43075, 1, 90, 93, 58, 0 )
			AddMonster( 43075, 1, 90, 101, 62, 0 )
			AddMonster( 43075, 1, 90, 106, 64, 0 )
			AddMonster( 43075, 1, 90, 94, 51, 0 )
			AddMonster( 43075, 1, 90, 75, 42, 0 )
			AddMonster( 43075, 1, 90, 82, 59, 0 )
		endif
	endif
	if $Now_Hour == 6
		if $Now_Minute == 0
			if $Rnd == 1
				AddMonster( 10185, 1, 42, 47, 44, 0 )
			endif
			if $Rnd == 2
				AddMonster( 10185, 1, 42, 81, 41, 0 )
			endif
			if $Rnd == 3
				AddMonster( 10185, 1, 42, 63, 87, 0 )
			endif
			if $Rnd == 4
				AddMonster( 10185, 1, 42, 90, 65, 0 )
			endif
			if $Rnd == 5
				AddMonster( 10185, 1, 42, 67, 54, 0 )
			endif
			if $SerVar < 1000
				if $Line == 2
					BC("scrollbar", "server", -1, "This week's magical material donation is in progress. Please donate proper materials to Cavinar to get great rewards.")
				endif
			endif
			BC("screen", "map", 90, "World Tree Branches are scattered across Nile River West. Find them!")
			AddMonster( 43075, 1, 90, 70, 48, 0 )
			AddMonster( 43075, 1, 90, 69, 52, 0 )
			AddMonster( 43075, 1, 90, 76, 50, 0 )
			AddMonster( 43075, 1, 90, 86, 50, 0 )
			AddMonster( 43075, 1, 90, 93, 58, 0 )
			AddMonster( 43075, 1, 90, 101, 62, 0 )
			AddMonster( 43075, 1, 90, 106, 64, 0 )
			AddMonster( 43075, 1, 90, 94, 51, 0 )
			AddMonster( 43075, 1, 90, 75, 42, 0 )
			AddMonster( 43075, 1, 90, 82, 59, 0 )
		endif
	endif
	if $Now_Hour == 8
		if $Now_Minute == 0
			if $Rnd == 1
				AddMonster( 10185, 1, 42, 47, 44, 0 )
			endif
			if $Rnd == 2
				AddMonster( 10185, 1, 42, 81, 41, 0 )
			endif
			if $Rnd == 3
				AddMonster( 10185, 1, 42, 63, 87, 0 )
			endif
			if $Rnd == 4
				AddMonster( 10185, 1, 42, 90, 65, 0 )
			endif
			if $Rnd == 5
				AddMonster( 10185, 1, 42, 67, 54, 0 )
			endif
			if $SerVar < 1000
				if $Line == 2
					BC("scrollbar", "server", -1, "This week's magical material donation is in progress. Please donate proper materials to Cavinar to get great rewards.")
				endif
			endif
			BC("screen", "map", 90, "World Tree Branches are scattered across Nile River West. Find them!")
			AddMonster( 43075, 1, 90, 70, 48, 0 )
			AddMonster( 43075, 1, 90, 69, 52, 0 )
			AddMonster( 43075, 1, 90, 76, 50, 0 )
			AddMonster( 43075, 1, 90, 86, 50, 0 )
			AddMonster( 43075, 1, 90, 93, 58, 0 )
			AddMonster( 43075, 1, 90, 101, 62, 0 )
			AddMonster( 43075, 1, 90, 106, 64, 0 )
			AddMonster( 43075, 1, 90, 94, 51, 0 )
			AddMonster( 43075, 1, 90, 75, 42, 0 )
			AddMonster( 43075, 1, 90, 82, 59, 0 )
		endif
	endif
	if $Now_Hour == 10
		if $Now_Minute == 0
			if $Rnd == 1
				AddMonster( 10185, 1, 42, 47, 44, 0 )
			endif
			if $Rnd == 2
				AddMonster( 10185, 1, 42, 81, 41, 0 )
			endif
			if $Rnd == 3
				AddMonster( 10185, 1, 42, 63, 87, 0 )
			endif
			if $Rnd == 4
				AddMonster( 10185, 1, 42, 90, 65, 0 )
			endif
			if $Rnd == 5
				AddMonster( 10185, 1, 42, 67, 54, 0 )
			endif
			if $SerVar < 1000
				if $Line == 2
					BC("scrollbar", "server", -1, "This week's magical material donation is in progress. Please donate proper materials to Cavinar to get great rewards.")
				endif
			endif
			BC("screen", "map", 90, "World Tree Branches are scattered across Nile River West. Find them!")
			AddMonster( 43075, 1, 90, 70, 48, 0 )
			AddMonster( 43075, 1, 90, 69, 52, 0 )
			AddMonster( 43075, 1, 90, 76, 50, 0 )
			AddMonster( 43075, 1, 90, 86, 50, 0 )
			AddMonster( 43075, 1, 90, 93, 58, 0 )
			AddMonster( 43075, 1, 90, 101, 62, 0 )
			AddMonster( 43075, 1, 90, 106, 64, 0 )
			AddMonster( 43075, 1, 90, 94, 51, 0 )
			AddMonster( 43075, 1, 90, 75, 42, 0 )
			AddMonster( 43075, 1, 90, 82, 59, 0 )
		endif
	endif
	if $Now_Hour == 12
		if $Now_Minute == 0
			if $Rnd == 1
				AddMonster( 10185, 1, 42, 47, 44, 0 )
			endif
			if $Rnd == 2
				AddMonster( 10185, 1, 42, 81, 41, 0 )
			endif
			if $Rnd == 3
				AddMonster( 10185, 1, 42, 63, 87, 0 )
			endif
			if $Rnd == 4
				AddMonster( 10185, 1, 42, 90, 65, 0 )
			endif
			if $Rnd == 5
				AddMonster( 10185, 1, 42, 67, 54, 0 )
			endif
			if $SerVar < 1000
				if $Line == 2
					BC("scrollbar", "server", -1, "This week's magical material donation is in progress. Please donate proper materials to Cavinar to get great rewards.")
				endif
			endif
			BC("screen", "map", 90, "World Tree Branches are scattered across Nile River West. Find them!")
			AddMonster( 43075, 1, 90, 70, 48, 0 )
			AddMonster( 43075, 1, 90, 69, 52, 0 )
			AddMonster( 43075, 1, 90, 76, 50, 0 )
			AddMonster( 43075, 1, 90, 86, 50, 0 )
			AddMonster( 43075, 1, 90, 93, 58, 0 )
			AddMonster( 43075, 1, 90, 101, 62, 0 )
			AddMonster( 43075, 1, 90, 106, 64, 0 )
			AddMonster( 43075, 1, 90, 94, 51, 0 )
			AddMonster( 43075, 1, 90, 75, 42, 0 )
			AddMonster( 43075, 1, 90, 82, 59, 0 )
		endif
	endif
	if $Now_Hour == 14
		if $Now_Minute == 0
			if $Rnd == 1
				AddMonster( 10185, 1, 42, 47, 44, 0 )
			endif
			if $Rnd == 2
				AddMonster( 10185, 1, 42, 81, 41, 0 )
			endif
			if $Rnd == 3
				AddMonster( 10185, 1, 42, 63, 87, 0 )
			endif
			if $Rnd == 4
				AddMonster( 10185, 1, 42, 90, 65, 0 )
			endif
			if $Rnd == 5
				AddMonster( 10185, 1, 42, 67, 54, 0 )
			endif
			if $SerVar < 1000
				if $Line == 2
					BC("scrollbar", "server", -1, "This week's magical material donation is in progress. Please donate proper materials to Cavinar to get great rewards.")
				endif
			endif
			BC("screen", "map", 90, "World Tree Branches are scattered across Nile River West. Find them!")
			AddMonster( 43075, 1, 90, 70, 48, 0 )
			AddMonster( 43075, 1, 90, 69, 52, 0 )
			AddMonster( 43075, 1, 90, 76, 50, 0 )
			AddMonster( 43075, 1, 90, 86, 50, 0 )
			AddMonster( 43075, 1, 90, 93, 58, 0 )
			AddMonster( 43075, 1, 90, 101, 62, 0 )
			AddMonster( 43075, 1, 90, 106, 64, 0 )
			AddMonster( 43075, 1, 90, 94, 51, 0 )
			AddMonster( 43075, 1, 90, 75, 42, 0 )
			AddMonster( 43075, 1, 90, 82, 59, 0 )
		endif
	endif
	if $Now_Hour == 16
		if $Now_Minute == 0
			if $Rnd == 1
				AddMonster( 10185, 1, 42, 47, 44, 0 )
			endif
			if $Rnd == 2
				AddMonster( 10185, 1, 42, 81, 41, 0 )
			endif
			if $Rnd == 3
				AddMonster( 10185, 1, 42, 63, 87, 0 )
			endif
			if $Rnd == 4
				AddMonster( 10185, 1, 42, 90, 65, 0 )
			endif
			if $Rnd == 5
				AddMonster( 10185, 1, 42, 67, 54, 0 )
			endif
			if $SerVar < 1000
				if $Line == 2
					BC("scrollbar", "server", -1, "This week's magical material donation is in progress. Please donate proper materials to Cavinar to get great rewards.")
				endif
			endif
			BC("screen", "map", 90, "World Tree Branches are scattered across Nile River West. Find them!")
			AddMonster( 43075, 1, 90, 70, 48, 0 )
			AddMonster( 43075, 1, 90, 69, 52, 0 )
			AddMonster( 43075, 1, 90, 76, 50, 0 )
			AddMonster( 43075, 1, 90, 86, 50, 0 )
			AddMonster( 43075, 1, 90, 93, 58, 0 )
			AddMonster( 43075, 1, 90, 101, 62, 0 )
			AddMonster( 43075, 1, 90, 106, 64, 0 )
			AddMonster( 43075, 1, 90, 94, 51, 0 )
			AddMonster( 43075, 1, 90, 75, 42, 0 )
			AddMonster( 43075, 1, 90, 82, 59, 0 )
		endif
	endif
	if $Now_Hour == 18
		if $Now_Minute == 0
			if $Rnd == 1
				AddMonster( 10185, 1, 42, 47, 44, 0 )
			endif
			if $Rnd == 2
				AddMonster( 10185, 1, 42, 81, 41, 0 )
			endif
			if $Rnd == 3
				AddMonster( 10185, 1, 42, 63, 87, 0 )
			endif
			if $Rnd == 4
				AddMonster( 10185, 1, 42, 90, 65, 0 )
			endif
			if $Rnd == 5
				AddMonster( 10185, 1, 42, 67, 54, 0 )
			endif
			if $SerVar < 1000
				if $Line == 2
					BC("scrollbar", "server", -1, "This week's magical material donation is in progress. Please donate proper materials to Cavinar to get great rewards.")
				endif
			endif
			BC("screen", "map", 90, "World Tree Branches are scattered across Nile River West. Find them!")
			AddMonster( 43075, 1, 90, 70, 48, 0 )
			AddMonster( 43075, 1, 90, 69, 52, 0 )
			AddMonster( 43075, 1, 90, 76, 50, 0 )
			AddMonster( 43075, 1, 90, 86, 50, 0 )
			AddMonster( 43075, 1, 90, 93, 58, 0 )
			AddMonster( 43075, 1, 90, 101, 62, 0 )
			AddMonster( 43075, 1, 90, 106, 64, 0 )
			AddMonster( 43075, 1, 90, 94, 51, 0 )
			AddMonster( 43075, 1, 90, 75, 42, 0 )
			AddMonster( 43075, 1, 90, 82, 59, 0 )
		endif
	endif
	if $Now_Hour == 20
		if $Now_Minute == 0
			if $Rnd == 1
				AddMonster( 10185, 1, 42, 47, 44, 0 )
			endif
			if $Rnd == 2
				AddMonster( 10185, 1, 42, 81, 41, 0 )
			endif
			if $Rnd == 3
				AddMonster( 10185, 1, 42, 63, 87, 0 )
			endif
			if $Rnd == 4
				AddMonster( 10185, 1, 42, 90, 65, 0 )
			endif
			if $Rnd == 5
				AddMonster( 10185, 1, 42, 67, 54, 0 )
			endif
			if $SerVar < 1000
				if $Line == 2
					BC("scrollbar", "server", -1, "This week's magical material donation is in progress. Please donate proper materials to Cavinar to get great rewards.")
				endif
			endif
			BC("screen", "map", 90, "World Tree Branches are scattered across Nile River West. Find them!")
			AddMonster( 43075, 1, 90, 70, 48, 0 )
			AddMonster( 43075, 1, 90, 69, 52, 0 )
			AddMonster( 43075, 1, 90, 76, 50, 0 )
			AddMonster( 43075, 1, 90, 86, 50, 0 )
			AddMonster( 43075, 1, 90, 93, 58, 0 )
			AddMonster( 43075, 1, 90, 101, 62, 0 )
			AddMonster( 43075, 1, 90, 106, 64, 0 )
			AddMonster( 43075, 1, 90, 94, 51, 0 )
			AddMonster( 43075, 1, 90, 75, 42, 0 )
			AddMonster( 43075, 1, 90, 82, 59, 0 )
		endif
	endif
	if $Now_Hour == 22
		if $Now_Minute == 0
			if $Rnd == 1
				AddMonster( 10185, 1, 42, 47, 44, 0 )
			endif
			if $Rnd == 2
				AddMonster( 10185, 1, 42, 81, 41, 0 )
			endif
			if $Rnd == 3
				AddMonster( 10185, 1, 42, 63, 87, 0 )
			endif
			if $Rnd == 4
				AddMonster( 10185, 1, 42, 90, 65, 0 )
			endif
			if $Rnd == 5
				AddMonster( 10185, 1, 42, 67, 54, 0 )
			endif
			if $SerVar < 1000
				if $Line == 2
					BC("scrollbar", "server", -1, "This week's magical material donation is in progress. Please donate proper materials to Cavinar to get great rewards.")
				endif
			endif
			BC("screen", "map", 90, "World Tree Branches are scattered across Nile River West. Find them!")
			AddMonster( 43075, 1, 90, 70, 48, 0 )
			AddMonster( 43075, 1, 90, 69, 52, 0 )
			AddMonster( 43075, 1, 90, 76, 50, 0 )
			AddMonster( 43075, 1, 90, 86, 50, 0 )
			AddMonster( 43075, 1, 90, 93, 58, 0 )
			AddMonster( 43075, 1, 90, 101, 62, 0 )
			AddMonster( 43075, 1, 90, 106, 64, 0 )
			AddMonster( 43075, 1, 90, 94, 51, 0 )
			AddMonster( 43075, 1, 90, 75, 42, 0 )
			AddMonster( 43075, 1, 90, 82, 59, 0 )
		endif
	endif

}

//------?????-------
function Pyramid(){
	if $Line == 8
		if $Now_Hour >= 10
			if $Now_Minute == 0
				BC( "screen", "server", -1, "Four entrances to the illusionary Pyramid have shown up in the Hall of Illusion. They are not stable and will disappear soon.")
				BC( "chat", "server", -1, "Four entrances to the illusionary Pyramid have shown up in the Hall of Illusion. They are not stable and will disappear soon.")
				SetServerVar( 75, 1 )
				$ServerVarJ = GetServerVar( 80 )
				$ServerVarJ2 = $ServerVarJ + 1
				SetServerVar( 80, $ServerVarJ2 )
				//--------------------------------------------

				//$a = $Now_Hour * $Now_Mday
			//	$b = $Now_Week * $Now_Month
				//$c = $a + $b
				//$c1 = $c * 13
			//	$d = $c1 % 4

				//--------------------------------------------
				$Random1 = RandomNumber(1 ,4)
				if $Random1 == 1
					AddNPC( 1809 )
				endif
				if $Random1 == 2
					AddNPC( 1810 )
				endif
				if $Random1 == 3
					AddNPC( 1811 )
				endif
				if $Random1 == 4
					AddNPC( 1812 )
				endif

				$Random2 = RandomNumber(1 ,4)
				if $Random2 == 1
					AddNPC( 1813 )
				endif
				if $Random2 == 2
					AddNPC( 1814 )
				endif
				if $Random2 == 3
					AddNPC( 1815 )
				endif
				if $Random2 == 4
					AddNPC( 1816 )
				endif

				$Random3 = RandomNumber(1 ,4)
				if $Random3 == 1
					AddNPC( 1817 )
				endif
				if $Random3 == 2
					AddNPC( 1818 )
				endif
				if $Random3 == 3
					AddNPC( 1819 )
				endif
				if $Random3 == 4
					AddNPC( 1820 )
				endif

				$Random4 = RandomNumber(1 ,4)
				if $Random4 == 1
					AddNPC( 1821 )
				endif
				if $Random4 == 2
					AddNPC( 1822 )
				endif
				if $Random4 == 3
					AddNPC( 1823 )
				endif
				if $Random4 == 4
					AddNPC( 1824 )
				endif

				$RankList = GetRankListValue( 1, 499 )

				//?
				if $RankList < 75
					$SLMID = 30044
				endif

				//1???
				if $RankList >= 75
					if $RankList <= 89
						$SLMID = 11855
					endif
				endif

				//2???
				if $RankList >= 90
					if $RankList <= 99
						$SLMID = 11865
					endif
				endif

				//3???
				if $RankList >= 100
					if $RankList <= 109
						$SLMID = 11875
					endif
				endif

				//4???
				if $RankList >= 110
					if $RankList <= 119
						$SLMID = 11885
					endif
				endif

				//5???
				if $RankList >= 120
						$SLMID = 11895
				endif

				$RandomBoss = RandomNumber( 1, 4 )
				if $RandomBoss == 1
					$yanhouBoss = AddSingleMonster( $SLMID, 203, 63, 71, 0 )
					SetServerVar( 89, $yanhouBoss )
				endif
				if $RandomBoss == 2
					$yanhouBoss = AddSingleMonster( $SLMID, 203, 71, 63, 0 )
					SetServerVar( 89, $yanhouBoss )
				endif
				if $RandomBoss == 3
					$yanhouBoss = AddSingleMonster( $SLMID, 203, 64, 56, 0 )
					SetServerVar( 89, $yanhouBoss )
				endif
				if $RandomBoss == 4
					$yanhouBoss = AddSingleMonster( $SLMID, 203, 57, 63, 0 )
					SetServerVar( 89, $yanhouBoss )
				endif

			endif
			if $Now_Minute == 10
				BC( "screen", "server", -1, "The entrances to the Pyramid has disappeared.")
				//BC( "scrollbar", "server", -1, "The entrances to the Pyramid has disappeared.")
				DeleteNPC( 1809 )
				DeleteNPC( 1810 )
				DeleteNPC( 1811 )
				DeleteNPC( 1812 )
				DeleteNPC( 1813 )
				DeleteNPC( 1814 )
				DeleteNPC( 1815 )
				DeleteNPC( 1816 )
				DeleteNPC( 1817 )
				DeleteNPC( 1818 )
				DeleteNPC( 1819 )
				DeleteNPC( 1820 )
				DeleteNPC( 1821 )
				DeleteNPC( 1822 )
				DeleteNPC( 1823 )
				DeleteNPC( 1824 )
			endif
			if $Now_Minute == 55
				BC( "screen", "server", -1, "Pharaoh sensed great threats and has teleported everyone out of the Pyramid. Then, he hid the Pyramid from the rest of the world." )
				//BC( "scrollbar", "server", -1, "Pharaoh sensed great threats and has teleported everyone out of the Pyramid. Then, he hid the Pyramid from the rest of the world." )
				MapPlayerFlyToMap( 199, 475, 67, 36 )
				MapPlayerFlyToMap( 200, 475, 67, 36 )
				MapPlayerFlyToMap( 201, 475, 67, 36 )
				MapPlayerFlyToMap( 202, 475, 67, 36 )
				MapPlayerFlyToMap( 203, 475, 67, 36 )
				SetServerVar( 70, 0 )
				SetServerVar( 71, 0 )
				SetServerVar( 72, 0 )
				SetServerVar( 73, 0 )
				SetServerVar( 74, 0 )
				SetServerVar( 75, 0 )
				SetServerVar( 76, 0 )
				SetServerVar( 77, 0 )
				SetServerVar( 78, 0 )
				SetServerVar( 79, 0 )
				SetServerVar( 81, 0 )
				SetServerVar( 82, 0 )
				SetServerVar( 83, 0 )
				SetServerVar( 84, 0 )
				DeleteNPC( 1793 )
				DeleteNPC( 1797 )
				DeleteNPC( 1802 )
				DeleteNPC( 1806 )
				$jinziBOSS1 = GetServerVar( 85 )
				$jinziBOSS2 = GetServerVar( 86 )
				$jinziBOSS3 = GetServerVar( 87 )
				$jinziBOSS4 = GetServerVar( 88 )
				$jinziBOSS5 = GetServerVar( 89 )
				RemoveMonster( $jinziBOSS1 )
				RemoveMonster( $jinziBOSS2 )
				RemoveMonster( $jinziBOSS3 )
				RemoveMonster( $jinziBOSS4 )
				RemoveMonster( $jinziBOSS5 )
			endif
			//------????-----
			if $Now_Minute == 56
				MapPlayerFlyToMap( 199, 475, 67, 36 )
				MapPlayerFlyToMap( 200, 475, 67, 36 )
				MapPlayerFlyToMap( 201, 475, 67, 36 )
				MapPlayerFlyToMap( 202, 475, 67, 36 )
				MapPlayerFlyToMap( 203, 475, 67, 36 )
			endif
			if $Now_Minute == 58
				if $Now_Hour < 23
					BC( "screen", "server", -1, "The prayer is underway. There are energy flows in the Hall of Illusions. The entrances will soon show up.")
					//BC( "scrollbar", "server", -1, "The prayer is underway. There are energy flows in the Hall of Illusions. The entrances will soon show up.")
				endif
			endif
		endif
	endif
}

//-----------???-------------
	function datanbao(){

			if $Now_Minute == 0
				SetServerVar( 97, 0 )
			endif
			if $Now_Minute == 12
				SetServerVar( 97, 0 )
			endif
			if $Now_Minute == 24
				SetServerVar( 97, 0 )
			endif
			if $Now_Minute == 36
				SetServerVar( 97, 0 )
			endif
			if $Now_Minute == 48
				SetServerVar( 97, 0 )
			endif
			//if $Now_Minute == 50
			//	SetServerVar( 97, 0 )
			//endif

			if $Now_Mday > 7
				if $Now_Mday <= 14
					if $Now_Week == 0
						if $Now_Hour == 15
							if $Now_Minute == 0
								BC( "screen", "server", -1, "The Treasure Hunt event has begun! Go get a Treasure Probe from Lu Chen!")
								BC( "scrollbar", "server", -1, "The Treasure Hunt event has begun! Go get a Treasure Probe from Lu Chen!")
							endif
						endif
					endif
				endif
			endif

			//?2011?9?18?????
			if $Now_Year == 2011
				if $Now_Month == 9
					if $Now_Mday == 18
						if $Now_Hour == 15
							if $Now_Minute == 0
								BC( "screen", "server", -1, "The Treasure Hunt event has begun! Go get a Treasure Probe from Lu Chen!")
								BC( "scrollbar", "server", -1, "The Treasure Hunt event has begun! Go get a Treasure Probe from Lu Chen!")
							endif
						endif
					endif
				endif
			endif
			//?2011?9?18???????

			//?2012-6-24????
			if $Now_Year == 2012
				if $Now_Month == 6
					if $Now_Mday == 24
						if $Now_Hour == 15
							if $Now_Minute == 0
								BC( "screen", "server", -1, "The Treasure Hunt event has begun! Go get a Treasure Probe from Lu Chen!")
								BC( "scrollbar", "server", -1, "The Treasure Hunt event has begun! Go get a Treasure Probe from Lu Chen!")
							endif
						endif
					endif
				endif
			endif
			//?2012-6-24??????

		}
		function JuanXian(){

			if $Now_Week == 1
				if $Now_Hour == 0
					if $Now_Minute == 1
						SetServerVar( 66, 0 )
						BC( "scrollbar", "server", -1, "This week's magical material donation is in progress. Please donate proper materials to Cavinar to get great rewards.")
					endif
				endif
			endif

		}


	function RandomMonster(){
		if $Now_Hour == 20
			if $Now_Minute == 18
				call RandomSpace()
				call RandomSpace()
			endif
			if $Now_Minute == 21
				call RandomSpace()
				call RandomSpace()
			endif
			if $Now_Minute == 24
				call RandomSpace()
				call RandomSpace()
			endif
			if $Now_Minute == 27
				call RandomSpace()
				call RandomSpace()
			endif
			if $Now_Minute == 30
				call RandomSpace()
				call RandomSpace()
			endif
			if $Now_Minute == 33
				call RandomSpace()
				call RandomSpace()
			endif
			if $Now_Minute == 36
				call RandomSpace()
				call RandomSpace()
			endif
			if $Now_Minute == 39
				call RandomSpace()
				call RandomSpace()
			endif
			if $Now_Minute == 42
				call RandomSpace()
				call RandomSpace()
			endif
			if $Now_Minute == 45
				call RandomSpace()
				call RandomSpace()
				BC("screen", "map", 186 , "Current round [Feast of the Zodiac] will finish in 15 minutes.")
				BC("chat", "map", 186 , "Current round [Feast of the Zodiac] will finish in 15 minutes.")
			endif
			if $Now_Minute == 48
				call RandomSpace()
				call RandomSpace()
			endif
			if $Now_Minute == 51
				call RandomSpace()
				call RandomSpace()
				BC("screen", "map", 186 , "Current round [Feast of the Zodiac] will finish in 10 minutes.")
				BC("chat", "map", 186 , "Current round [Feast of the Zodiac] will finish in 10 minutes.")
			endif
			if $Now_Minute == 54
				call RandomSpace()
				call RandomSpace()
			endif
			if $Now_Minute == 57
				call RandomSpace()
				call RandomSpace()
				BC("screen", "map", 186 , "Current round [Feast of the Zodiac] will finish in 3 minutes.")
				BC("chat", "map", 186 , "Current round [Feast of the Zodiac] will finish in 3 minutes.")
			endif
			if $Now_Minute == 59
				BC("screen", "map", 186 , "Current round [Feast of the Zodiac] has already ended.")
				BC("chat", "map", 186 , "Current round [Feast of the Zodiac] has already ended.")
				MapPlayerFlyToMap( 186, 475 , 68, 48 )
			endif
		endif

	}
	//------??????,??5???-------------
		function RandomSpace(){
			$n = RandomNumber ( 1, 5 )
			if $n == 1
				AddMonster(41043, 10, 186,51, 81, 3 )
				AddMonster(41044, 10, 186,51, 81, 3 )

				AddMonster(41043, 10, 186,57, 77, 3 )
				AddMonster(41044, 10, 186,57, 77, 3 )

				AddMonster(41043, 10, 186,62, 82, 3 )
				AddMonster(41044, 10, 186,62, 82, 3 )

				BC("screen", "map", 186 , "Void powers are gathering in the [Libra] constellation, and a large number of Star Shards have appeared.")
				BC("chat", "map", 186 , "Void powers are gathering in the [Libra] constellation, and a large number of Star Shards have appeared.")
			endif
			if $n == 2
				AddMonster(41043, 10, 186,73, 81, 3 )
				AddMonster(41044, 10, 186,73, 81, 3 )

				AddMonster(41043, 10, 186,75, 76, 3 )
				AddMonster(41044, 10, 186,75, 76, 3 )

				AddMonster(41043, 10, 186,78, 80, 3 )
				AddMonster(41044, 10, 186,78, 80, 3 )

				BC("screen", "map", 186 , "Void powers are gathering in the [Sagittarius] constellation, and a large number of Star Shards have appeared.")
				BC("chat", "map", 186 , "Void powers are gathering in the [Sagittarius] constellation, and a large number of Star Shards have appeared.")
			endif
			if $n == 3
				AddMonster(41043, 10, 186,44, 67, 3 )
				AddMonster(41044, 10, 186,44, 67, 3 )

				AddMonster(41043, 10, 186,44, 63, 3 )
				AddMonster(41044, 10, 186,44, 63, 3 )

				AddMonster(41043, 10, 186,48, 62, 3 )
				AddMonster(41044, 10, 186,48, 62, 3 )

				BC("screen", "map", 186 , "Void powers are gathering in the [Leo] constellation, and a large number of Star Shards have appeared.")
				BC("chat", "map", 186 , "Void powers are gathering in the [Leo] constellation, and a large number of Star Shards have appeared.")
			endif
			if $n == 4
				AddMonster(41043, 10, 186,58, 45, 3 )
				AddMonster(41044, 10, 186,58, 45, 3 )

				AddMonster(41043, 10, 186,64, 45, 3 )
				AddMonster(41044, 10, 186,64, 45, 3 )

				AddMonster(41043, 10, 186,66, 49, 3 )
				AddMonster(41044, 10, 186,66, 49, 3 )

				BC("screen", "map", 186 , "Void powers are gathering in the [Taurus] constellation, and a large number of Star Shards have appeared.")
				BC("chat", "map", 186 , "Void powers are gathering in the [Taurus] constellation, and a large number of Star Shards have appeared.")
			endif
			if $n == 5
				AddMonster(41043, 10, 186,81, 64, 3 )
				AddMonster(41044, 10, 186,81, 64, 3 )

				AddMonster(41043, 10, 186,82, 61, 3 )
				AddMonster(41044, 10, 186,82, 61, 3 )

				AddMonster(41043, 10, 186,79, 60, 3 )
				AddMonster(41044, 10, 186,79, 60, 3 )

				BC("screen", "map", 186 , "Void powers are gathering in the [Aquarius] constellation, and a large number of Star Shards have appeared.")
				BC("chat", "map", 186 , "Void powers are gathering in the [Aquarius] constellation, and a large number of Star Shards have appeared.")
			endif
		}


		function SystemLog(){
			SetGlobalVarLog(900)
			SetGlobalVarLog(901)
			SetGlobalVarLog(902)
			//???
			SetGlobalVarLog(903)
			SetGlobalVarLog(904)
			SetGlobalVarLog(905)
			SetGlobalVarLog(906)
			SetGlobalVarLog(907)
			SetGlobalVarLog(908)
			//??
			SetGlobalVarLog(909)
			SetGlobalVarLog(910)
			//SetGlobalVarLog(911)
			SetGlobalVarLog(912)
			//SetGlobalVarLog(913)
			SetGlobalVarLog(914)
			SetGlobalVarLog(915)
			SetGlobalVarLog(916)
			SetGlobalVarLog(917)
			SetGlobalVarLog(918)
			SetGlobalVarLog(919)
			SetGlobalVarLog(920)
			SetGlobalVarLog(921)
			SetGlobalVarLog(922)
			SetGlobalVarLog(923)
			SetGlobalVarLog(924)
			//SetGlobalVarLog(925)
			SetGlobalVarLog(926)
			//SetGlobalVarLog(927)
			SetGlobalVarLog(928)
			SetGlobalVarLog(929)
			SetGlobalVarLog(930)
			SetGlobalVarLog(931)
			SetGlobalVarLog(932)
			//SetGlobalVarLog(933)
			SetGlobalVarLog(934)
			//SetGlobalVarLog(935)
			SetGlobalVarLog(936)
			SetGlobalVarLog(937)
			SetGlobalVarLog(938)
			SetGlobalVarLog(939)
			SetGlobalVarLog(940)
			SetGlobalVarLog(941)
			SetGlobalVarLog(942)
			SetGlobalVarLog(943)
			SetGlobalVarLog(944)
			SetGlobalVarLog(945)
			SetGlobalVarLog(946)
			SetGlobalVarLog(947)
			SetGlobalVarLog(948)
			SetGlobalVarLog(949)
			SetGlobalVarLog(950)
			SetGlobalVarLog(951)
			SetGlobalVarLog(952)
			SetGlobalVarLog(953)
			SetGlobalVarLog(954)
			SetGlobalVarLog(955)
			SetGlobalVarLog(956)
			SetGlobalVarLog(957)
			SetGlobalVarLog(958)
			SetGlobalVarLog(959)
			SetGlobalVarLog(960)
			SetGlobalVarLog(961)
			SetGlobalVarLog(962)
			SetGlobalVarLog(963)
			SetGlobalVarLog(964)
			SetGlobalVarLog(965)
			SetGlobalVarLog(966)
			SetGlobalVarLog(967)
			SetGlobalVarLog(968)
			SetGlobalVarLog(969)
			SetGlobalVarLog(800)
			SetGlobalVarLog(801)
			SetGlobalVarLog(802)
			SetGlobalVarLog(803)
			SetGlobalVarLog(970)
			SetGlobalVarLog(971)
			SetGlobalVarLog(972)
			SetGlobalVarLog(973)
			SetGlobalVarLog(974)
			SetGlobalVarLog(975)
			SetGlobalVarLog(976)
			SetGlobalVarLog(977)
			//???
			SetGlobalVarLog(979)
			//????
			SetGlobalVarLog(980)
			//?????
			SetGlobalVarLog(893)
			//??????-???????
			SetGlobalVarLog(892)
			//????
			SetGlobalVarLog(888)
			SetGlobalVarLog(889)
			SetGlobalVarLog(890)
			SetGlobalVarLog(891)
			//????
			SetGlobalVarLog(887)
			//??*2
			SetGlobalVarLog(886)
			SetGlobalVarLog(885)
			//????*2
			SetGlobalVarLog(884)
			SetGlobalVarLog(883)
		}


		function hunzhuaddexp(){

			//????150??
			AddMapPlayerInfo( 257 , "exp" , 150 )

		}

//		function Xmas2011(){


//			if $Now_Year == 2011
//				if $Now_Month == 12
//					if $Now_Mday >= 20
//						if $Now_Mday <= 26
//							//????????????
//							$growup = GetGlobalVar(60)
//							$timeover = GetGlobalVar(58)
//							//1------------elf--start--20~25??
//							if $Now_Mday <= 25
//								//2------------day25--??25??????2500???????()
//								if $Now_Mday == 25
//									if $growup > 2500
//										$timeover = 10
//									endif
//								endif
//								//2------------day25--end
//								//2------------mon--start--??????2??????
//								if $timeover == 2
//									AddMonsterByFloat(32277,1,475,221,222,0)
//									AddMonsterByFloat(32278,1,475,223,220,0)
//									AddMonsterByFloat(32279,2,475,225,223,1)
//									AddMonsterByFloat(32280,1,475,221,222,0)
//									BC("screen","server",-1,"The Snow Fairy has come to Atlantis.")
//									BC("chat","server",-1,"The Snow Fairy has come to Atlantis.")
//								endif
//								//2------------mon--end
//								//2------------add--start--??????1??????(??1????)
//								if $Line == 1
//									if $timeover < 2
//										$randnom = RandomNumber(0,4)
//										$growpoint = 7 + $randnom
//										$passday = $Now_Mday - 20
//										$pdres = $passday * 500
//										$phres = $Now_Hour * 20
//										$ress = $growup - $pdres
//										$ress = $ress - $phres
//										if $ress < 0
//											$growpoint = $growpoint + 7
//											if $Now_Mday == 24
//												if $Now_Mday >= 20
//													$growpoint = $growpoint + 14
//												endif
//											endif
//											if $Now_Mday == 25
//												$growpoint = $growpoint + 14
//											endif
//										endif
//										$pdpas = $passday * 100
//										if $ress > $pdpas
//											$growpoint = $growpoint - 4
//										endif
//										$growup2 = $growup + $growpoint
//										SetGlobalVar(60,$growup2)
//										BC("screen","servergroup",-1,"The Snow Fairy watered the Christmas Tree with Snowsprite Dew. The Growth of Fairy Christmas Tree is increased by ",$growpoint,"point",", and reached ",$growup2," points!")
//										BC("chat","servergroup",-1,"The Snow Fairy watered the Christmas Tree with Snowsprite Dew. The Growth of Fairy Christmas Tree is increased by ",$growpoint,"point",", and reached ",$growup2," points!")
//										if $growup < 2500
//											if $growup2 >= 2500
//												BC("screen","servergroup",-1,"The growth value of Spirit Christmas Tree has reached 2500. When Christmas comes, all players above LV45 can reveive a reward!")
//												BC("chat","servergroup",-1,"The growth value of Spirit Christmas Tree has reached 2500. When Christmas comes, all players above LV45 can reveive a reward!")
//											endif
//										endif
//										if $growup < 2000
//											if $growup2 >= 2000
//												AddNPC(2321)
//												BC("screen","servergroup",-1,"The growth value of Spirit Christmas Tree has reached 2000. ")
//												BC("chat","servergroup",-1,"The growth value of Spirit Christmas Tree has reached 2000. ")
//											endif
//										endif
//										if $growup < 1000
//											if $growup2 >= 1000
//												AddNPC(2320)
//												BC("screen","servergroup",-1,"The growth value of Spirit Christmas Tree has reached 1000. ")
//												BC("chat","servergroup",-1,"The growth value of Spirit Christmas Tree has reached 1000. ")
//											endif
//										endif
//										if $growup < 500
//											if $growup2 >= 500
//												BC("screen","servergroup",-1,"The growth value of Spirit Christmas Tree has reached 500. ")
//												BC("chat","servergroup",-1,"The growth value of Spirit Christmas Tree has reached 500. ")
//											endif
//										endif
//										if $growup < 1500
//											if $growup2 >= 1500
//												BC("screen","servergroup",-1,"The growth value of Spirit Christmas Tree has reached 1500. ")
//												BC("chat","servergroup",-1,"The growth value of Spirit Christmas Tree has reached 1500. ")
//											endif
//										endif
//										$timeover = RandomNumber(35,75)
//										SetGlobalVar(58,$timeover)
//									endif
//								endif
//								//2------------add--end--??????
//							endif
//							//1------------elf--end--20~25????
//							//1------------tree--start--20~26?????
//							if $growup > 2000
//								DeleteNPC(2319)
//								DeleteNPC(2320)
//								AddNPC(2321)
//							else
//								if $growup > 1000
//									DeleteNPC(2319)
//									DeleteNPC(2321)
//									AddNPC(2320)
//								else
//									AddNPC(2319)
//									DeleteNPC(2320)
//									DeleteNPC(2321)
//								endif
//							endif
//							//1------------tree--end--20~26???????
//							//1------------line1sub--????1???????
//							if $Line == 1
//								$timeover = $timeover - 1
//								SetGlobalVar(58,$timeover)
//							endif
//							//1------------line1sub--end--????1?????????
//						endif
//					endif
//				endif
//			endif

//		}

//		function Xmas2011grow(){
		//???????
//			$growup = GetGlobalVar(60)
//			if $growup > 2000
//				AddNPC(2321)
//			else
//				if $growup > 1000
//					AddNPC(2320)
//				else
//					AddNPC(2319)
//				endif
//			endif


//		}

//		function SpringF2012(){

//			if $Now_Year == 2012
//				if $Now_Month == 1
//					if $Now_Mday >= 21
//						if $Now_Mday <= 31
//							AddNPC(2322)
//							AddNPC(2323)
//							AddNPC(2324)
//							AddNPC(2325)
//							AddNPC(2326)
//							AddNPC(2327)
//							AddNPC(2328)
//							AddNPC(2329)
//						endif
//					endif
//				endif
//			endif
//
//			if $Line == 7
//				if $Now_Year == 2012
//					if $Now_Month == 1
//						if $Now_Mday >= 21
//							if $Now_Mday <= 31
//								if $Now_Hour == 19
//									if $Now_Minute == 55
//										BC("screen","servergroup",-1,"Festival Beast will appear in Atlantis on Realm 7 in 5 minutes! Festival Beast Event will start soon!")
//										BC("chat","servergroup",-1,"Festival Beast will appear in Atlantis on Realm 7 in 5 minutes! Festival Beast Event will start soon!")
//									endif
//								endif
//								if $Now_Hour == 20
//									if $Now_Minute == 0
//										AddMonsterByFloat(32281,1,475,243,110,0)
//										AddMonsterByFloat(32282,1,475,248,112,0)
//										AddMonsterByFloat(32283,1,475,237,108,0)
//										AddMonsterByFloat(32283,1,475,245,116,0)
//										AddMonsterByFloat(32283,1,475,243,110,0)
//										BC("screen","servergroup",-1,"Festival Beast has appeared in Atlantis on Realm 7! Festival Beast Event is starting now!")
//										BC("chat","servergroup",-1,"Festival Beast has appeared in Atlantis on Realm 7! Festival Beast Event is starting now!")
//										SetGlobalVar(63,0)
//										SetGlobalVar(64,0)
//									endif
//									if $Now_Minute == 15
//										BC("screen","servergroup",-1,"The Festival Beast Event has ended. Please go to receive reward from any of the lanterns.")
//										BC("chat","servergroup",-1,"The Festival Beast Event has ended. Please go to receive reward from any of the lanterns.")
//									endif
//								endif
//							endif
//						endif
//					else
//						DeleteNPC(2322)
//						DeleteNPC(2323)
//						DeleteNPC(2324)
//						DeleteNPC(2325)
//						DeleteNPC(2326)
//						DeleteNPC(2327)
//						DeleteNPC(2328)
//						DeleteNPC(2329)
//					endif
//				endif
//			endif

//		}

//		function TuiGuang2012(){
//			2012?7?10????????

//			$Now_Minute =  GetSystemTime( "minute")
//			$Now_Hour =  GetSystemTime( "hour" )
//			$Now_Mday =  GetSystemTime( "mday" )
//			$Now_Month =  GetSystemTime( "month" )
//			$Now_Year =  GetSystemTime( "year" )
//			$Now_Week =  GetSystemTime( "week" )
//			$Now_Yday =  GetSystemTime( "yday" )
//			$Line = GetServerLineID()

//			if $Now_Year == 2012
//				$monthadd = $Now_Month * 100
//				$dayadd = $monthadd + $Now_Mday
//				if $dayadd <= 709
//					$timeadd = $Now_Hour * 100
//					$timeadd = $timeadd + $Now_Minute
//
//					if $timeadd == 1917
//						BC("scrollbar", "server", -1 ,"Notice: The Promoter Leveling-up Gift and the Weekly Gift events will end on Sept. 10th. Players can collect all of their uncollected recruiter bonus in one go, on Sept. 7th-8th. The purchase bonus and master bonus effect will still have effect afterwards. All recruiter-related functions will be kept throughout future game versions!" )
////						BC("screen", "server", -1 ,"GUID:08359000793" )
//					endif
//
//					if $Now_Week == 6
//						if $Now_Minute == 22
//							BC("scrollbar", "server", -1 ,"The Weekly Gift event is under way! Players with the Introduction and Master tile can talk to Miqia and obtain weekly gifts!" )
//							BC("screen", "server", -1 ,"The Weekly Gift event is under way! Players with the Introduction and Master tile can talk to Miqia and obtain weekly gifts!" )
//						endif
//					endif
//
//					if $Now_Week == 0
//						if $Now_Minute == 22
//							BC("scrollbar", "server", -1 ,"The Weekly Gift event is under way! Players with the Introduction and Master tile can talk to Miqia and obtain weekly gifts!" )
//							BC("screen", "server", -1 ,"The Weekly Gift event is under way! Players with the Introduction and Master tile can talk to Miqia and obtain weekly gifts!" )
//						endif
//					endif
//
//				endif
//			endif


//		}

		function diantai(){

//			$Now_Minute =  GetSystemTime( "minute")
//			$Now_Hour =  GetSystemTime( "hour" )
//			$Now_Mday =  GetSystemTime( "mday" )
//			$Now_Month =  GetSystemTime( "month" )
//			$Now_Year =  GetSystemTime( "year" )
//			$Now_Week =  GetSystemTime( "week" )
//			$Now_Yday =  GetSystemTime( "yday" )
//			$Line = GetServerLineID()

		// 131 ???????????
		// 132 ???????????
		// 133 ???????????
		// 134 ??????????ID
		// 135 ??????????ID
		// 136 ??????????ID

		if $Line == 1
			if $Now_Week == 3
				if $Now_Hour == 16
					if $Now_Minute == 0
						$daoju1 = GetGlobalVar(131)
						$daoju2 = GetGlobalVar(132)
						$daoju3 = GetGlobalVar(133)
						$guai1 = GetGlobalVar(134)
						$guai1 = GetGlobalVar(135)
						$guai1 = GetGlobalVar(136)

						//????????????
						$n1 = $Now_Week * $Now_Mday
						$nn1 = $n1 + $Now_Week
						$nnn1 = $nn1 + $Now_Mday
						$nnnn1 = $nnn1 % 11
						$endn1 = $nnnn1 + 20
//						$n1 = RandomNumber(20,30)
//						$n2 = RandomNumber(20,30)
//						$n3 = RandomNumber(20,30)
//						$m1 = RandomNumber(1,5)
//						$m2 = RandomNumber(1,5)
//						$m3 = RandomNumber(1,5)
						SetGlobalVar(131,$endn1)

						//????????????
						$n2 = $Now_Week * $Now_Mday
						$nn2 = $Now_Week * 2
						$nnn2 = $n2 + $nn2
						$nnnn2 = $nnn2 + $Now_Mday
						$nnnnn2 = $nnnn2 % 11
						$endn2 = $nnnnn2 + 20
						SetGlobalVar(132,$endn2)

						//????????????
						$n3 = $Now_Week * $Now_Mday
						$nn3 = $Now_Mday * 2
						$nnn3 = $n3 + $nn3
						$nnnn3 = $nnn3 + $Now_Week
						$nnnnn3 = $nnnn3 % 11
						$endn3 = $nnnnn3 + 20
						SetGlobalVar(133,$endn3)

						//????????????
						$m1 = $Now_Week * $Now_Mday
						$mm1 = $m1 + $Now_Week
						$mmm1 = $mm1 + $Now_Mday
						$mmmm1 = $mmm1 % 5
						$endm1 = $mmmm1 + 1
						SetGlobalVar(134,$endm1)

						//????????????
						$m2 = $Now_Week * $Now_Mday
						$mm2 = $Now_Week * 2
						$mmm2 = $m2 + $mm2
						$mmmm2 = $mmm2 + $Now_Mday
						$mmmmm2 = $mmmm2 % 5
						$endm2 = $mmmmm2 + 1
						SetGlobalVar(135,$endm2)

						//????????????
						$m3 = $Now_Week * $Now_Mday
						$mm3 = $Now_Mday * 2
						$mmm3 = $m3 + $mm3
						$mmmm3 = $mmm3 + $Now_Week
						$mmmmm3 = $mmmm3 % 5
						$endm3 = $mmmmm3 + 1
						SetGlobalVar(136,$endm3)
					endif
				endif
			endif

			if $Now_Week == 4
				if $Now_Hour == 16
					if $Now_Minute == 0
						$daoju1 = GetGlobalVar(131)
						$daoju2 = GetGlobalVar(132)
						$daoju3 = GetGlobalVar(133)
						$guai1 = GetGlobalVar(134)
						$guai1 = GetGlobalVar(135)
						$guai1 = GetGlobalVar(136)

						//????????????
						$n1 = $Now_Week * $Now_Mday
						$nn1 = $n1 + $Now_Week
						$nnn1 = $nn1 + $Now_Mday
						$nnnn1 = $nnn1 % 11
						$endn1 = $nnnn1 + 20
//						$n1 = RandomNumber(20,30)
//						$n2 = RandomNumber(20,30)
//						$n3 = RandomNumber(20,30)
//						$m1 = RandomNumber(1,5)
//						$m2 = RandomNumber(1,5)
//						$m3 = RandomNumber(1,5)
						SetGlobalVar(131,$endn1)

						//????????????
						$n2 = $Now_Week * $Now_Mday
						$nn2 = $Now_Week * 2
						$nnn2 = $n2 + $nn2
						$nnnn2 = $nnn2 + $Now_Mday
						$nnnnn2 = $nnnn2 % 11
						$endn2 = $nnnnn2 + 20
						SetGlobalVar(132,$endn2)

						//????????????
						$n3 = $Now_Week * $Now_Mday
						$nn3 = $Now_Mday * 2
						$nnn3 = $n3 + $nn3
						$nnnn3 = $nnn3 + $Now_Week
						$nnnnn3 = $nnnn3 % 11
						$endn3 = $nnnnn3 + 20
						SetGlobalVar(133,$endn3)

						//????????????
						$m1 = $Now_Week * $Now_Mday
						$mm1 = $m1 + $Now_Week
						$mmm1 = $mm1 + $Now_Mday
						$mmmm1 = $mmm1 % 5
						$endm1 = $mmmm1 + 1
						SetGlobalVar(134,$endm1)

						//????????????
						$m2 = $Now_Week * $Now_Mday
						$mm2 = $Now_Week * 2
						$mmm2 = $m2 + $mm2
						$mmmm2 = $mmm2 + $Now_Mday
						$mmmmm2 = $mmmm2 % 5
						$endm2 = $mmmmm2 + 1
						SetGlobalVar(135,$endm2)

						//????????????
						$m3 = $Now_Week * $Now_Mday
						$mm3 = $Now_Mday * 2
						$mmm3 = $m3 + $mm3
						$mmmm3 = $mmm3 + $Now_Week
						$mmmmm3 = $mmmm3 % 5
						$endm3 = $mmmmm3 + 1
						SetGlobalVar(136,$endm3)
					endif
				endif
			endif
		endif




		}

//		//---???2012????? 7?10??10?30? ---start
//		function Summer2012(){
//
//		//2012??????,??8?31?
//		$Now_Year = GetSystemTime( "year" )
//		$Now_Month = GetSystemTime( "month" )
//		$Now_Minute =  GetSystemTime( "minute")
//		$Now_Hour =  GetSystemTime( "hour" )
//		$Line = GetServerLineID()
//
//		if $Now_Year == 2012
//			if $Now_Month <= 8
//				if $Now_Hour == 12
//					if $Now_Minute == 00
//						BC("screen", "server", -1, "The Treasure Demon and his minions have appeared in Realm 6, at the Twilight Battlefield, Elysium, Giant Kingdom West, and Mount Olympus. Go and steal his treasures!")
//						BC("chat", "server", -1, "The Treasure Demon and his minions have appeared in Realm 6, at the Twilight Battlefield, Elysium, Giant Kingdom West, and Mount Olympus. Go and steal his treasures!")
//							call Summon
//					endif
//				endif
//
//				if $Now_Hour == 13
//					if $Now_Minute == 00
//						BC("screen", "server", -1, "The Treasure Demon and his minions have appeared in Realm 6, at the Twilight Battlefield, Elysium, Giant Kingdom West, and Mount Olympus. Go and steal his treasures!")
//						BC("chat", "server", -1, "The Treasure Demon and his minions have appeared in Realm 6, at the Twilight Battlefield, Elysium, Giant Kingdom West, and Mount Olympus. Go and steal his treasures!")
//							call Summon
//					endif
//				endif
//
//				if $Now_Hour == 20
//					if $Now_Minute == 00
//						BC("screen", "server", -1, "The Treasure Demon and his minions have appeared in Realm 6, at the Twilight Battlefield, Elysium, Giant Kingdom West, and Mount Olympus. Go and steal his treasures!")
//						BC("chat", "server", -1, "The Treasure Demon and his minions have appeared in Realm 6, at the Twilight Battlefield, Elysium, Giant Kingdom West, and Mount Olympus. Go and steal his treasures!")
//							call Summon
//					endif
//				endif
//
//				if $Now_Hour == 21
//					if $Now_Minute == 00
//						BC("screen", "server", -1, "The Treasure Demon and his minions have appeared in Realm 6, at the Twilight Battlefield, Elysium, Giant Kingdom West, and Mount Olympus. Go and steal his treasures!")
//						BC("chat", "server", -1, "The Treasure Demon and his minions have appeared in Realm 6, at the Twilight Battlefield, Elysium, Giant Kingdom West, and Mount Olympus. Go and steal his treasures!")
//							call Summon
//					endif
//				endif
//			endif
//		endif
//
//}
//		//2012?????
//		function Summon(){
//
//		$Now_Minute =  GetSystemTime( "minute")
//		$Now_Hour =  GetSystemTime( "hour" )
//		$Line = GetServerLineID()
//
//	if $Line == 6
//
//	//????? 52340 52343
//		$mapX = RandomNumber(140,200)
//		$mapY = RandomNumber(140,200)
//		$mapX_1 = RandomNumber(140,200)
//		$mapY_1 = RandomNumber(140,200)
//		AddMonsterByFloat(52340,1,536,$mapX,$mapY,1)
//		AddMonsterByFloat(52340,1,536,$mapX_1,$mapY_1,1)
//		AddMonsterByFloat(52340,1,533,$mapX,$mapY,1)
//		AddMonsterByFloat(52343,1,44,$mapX,$mapY,1)
//		AddMonsterByFloat(52343,1,398,$mapX,$mapY,1)
//		BC("screen","map",536,"The Treasure Demon has appeared near (",$mapX,","$mapY,") and (",$mapX_1,","$mapY_1,"). Go and steal his treasures!")
//		BC("screen","map",533,"The Treasure Demon has appeared near (",$mapX,","$mapY,"). Go and steal his treasures!")
//		BC("screen","map",44,"The Treasure Demon has appeared near (",$mapX,","$mapY,"). Go and steal his treasures!")
//		BC("screen","map",398,"The Treasure Demon has appeared near (",$mapX,","$mapY,"). Go and steal his treasures!")
//
//		BC("chat","map",536,"The Treasure Demon has appeared near (",$mapX,","$mapY,") and (",$mapX_1,","$mapY_1,"). Go and steal his treasures!")
//		BC("chat","map",533,"The Treasure Demon has appeared near (",$mapX,","$mapY,"). Go and steal his treasures!")
//		BC("chat","map",44,"The Treasure Demon has appeared near (",$mapX,","$mapY,"). Go and steal his treasures!")
//		BC("chat","map",398,"The Treasure Demon has appeared near (",$mapX,","$mapY,"). Go and steal his treasures!")
//
//		//??52342 52345,????533 ,????536 , ??44,???398
//		$time1 = 0
//		while $time1 < 15
//			$time1 = $time1 + 1
//			$mapX = RandomNumber(100,240)
//			$mapY = RandomNumber(100,240)
//			$monsterID_1 = 52342
//			$monsterID_2 = 52345
//			$mapID_1 = 533
//			$mapID_2 = 398
//			$mapID_3 = 44
//			AddMonsterByFloat($monsterID_1,1,$mapID_1,$mapX,$mapY,1)
//			AddMonsterByFloat($monsterID_2,1,$mapID_2,$mapX,$mapY,1)
//			AddMonsterByFloat($monsterID_2,1,$mapID_3,$mapX,$mapY,1)
//		endwhile
//
//		$time2 = 0
//		while $time2 < 20
//			$time2 = $time2 + 1
//			$mapX = RandomNumber(100,240)
//			$mapY = RandomNumber(100,240)
//			$monsterID = 52342
//			$mapID = 536
//			AddMonsterByFloat($monsterID,1,$mapID,$mapX,$mapY,1)
//		endwhile
//
//		//???? 52341 52344
//		$time3 = 0
//		while $time3 < 2
//			$time3 = $time3 + 1
//			$mapX = RandomNumber(120,220)
//			$mapY = RandomNumber(120,220)
//			$mapX_1 = RandomNumber(120,220)
//			$mapY_1 = RandomNumber(120,220)
//			$monsterID = 52341
//			$monsterID_1 = 52344
//			$mapID_1 = 536
//			$mapID_2 = 533
//			$mapID_3 = 44
//			$mapID_4 = 398
//			AddMonsterByFloat($monsterID,1,$mapID_1,$mapX,$mapY,1)
//			AddMonsterByFloat($monsterID,1,$mapID_1,$mapX_1,$mapY_1,1)
//			AddMonsterByFloat($monsterID,1,$mapID_2,$mapX,$mapY,1)
//			AddMonsterByFloat($monsterID_1,1,$mapID_3,$mapX,$mapY,1)
//			AddMonsterByFloat($monsterID_1,1,$mapID_4,$mapX,$mapY,1)
//		endwhile
//
//	endif
//
//
//
//
//
//}

//	function Shengmingzhishu(){
//	//????????
//	//??
//	$Now_Minute = GetSystemTime( "minute")
//	//??
//	$Now_Hour = GetSystemTime( "hour" )
//	//??
//	$Now_Mday = GetSystemTime( "mday" )
////	BC("screen", "server", -1, "",$Now_Mday,"GUID:08359000824")
//	//??
//	$Now_Month = GetSystemTime( "month" )
////	BC("screen", "server", -1, "",$Now_Month,"GUID:08359000825")
//	//???.2008????
//	$Now_Year = GetSystemTime( "year" )
////	BC("screen", "server", -1, "",$Now_Year,"GUID:08359000826")
//	//???.0-6
//	$Now_Week = GetSystemTime( "week" )
//	//??????.0-365
//	$Now_Yday = GetSystemTime( "yday" )
//	//??????
//	$Line = GetServerLineID()
//	//??????????
//	$cishu = GetServerVar( 296 )
////	BC( "screen", "server", -1, "GUID:08359000827",$cishu,"GUID:08359000828" )
//	//????????????
//	$guangai = GetServerVar( 297 )
////	BC( "screen", "server", -1, "GUID:08359000829",$guangai,"GUID:08359000830" )
//	//???6??
//	if $Line == 7
////		BC("screen", "server", -1, "0")
//		//??5????????????
//		if $Now_Year == 2012
//			if $Now_Month == 9
//				if $Now_Mday >= 10
//					if $Now_Mday <= 16
//						if $Now_Hour == 11
//							if $Now_Minute == 55
//								BC("screen", "server", -1, "The Spring of Life will appear in Realm 7! Get ready to collect from the Spring of Life to water the Tree of Life!")
//								BC("chat", "server", -1, "The Spring of Life will appear in Realm 7! Get ready to collect from the Spring of Life to water the Tree of Life!")
//							endif
//						endif
//						if $Now_Hour == 14
//							if $Now_Minute == 55
//								BC("screen", "server", -1, "The Spring of Life will appear in Realm 7! Get ready to collect from the Spring of Life to water the Tree of Life!")
//								BC("chat", "server", -1, "The Spring of Life will appear in Realm 7! Get ready to collect from the Spring of Life to water the Tree of Life!")
//							endif
//						endif
//						if $Now_Hour == 17
//							if $Now_Minute == 55
//								BC("screen", "server", -1, "The Spring of Life will appear in Realm 7! Get ready to collect from the Spring of Life to water the Tree of Life!")
//								BC("chat", "server", -1, "The Spring of Life will appear in Realm 7! Get ready to collect from the Spring of Life to water the Tree of Life!")
//							endif
//						endif
//						if $Now_Hour == 20
//							if $Now_Minute == 55
//								BC("screen", "server", -1, "The Spring of Life will appear in Realm 7! Get ready to collect from the Spring of Life to water the Tree of Life!")
//								BC("chat", "server", -1, "The Spring of Life will appear in Realm 7! Get ready to collect from the Spring of Life to water the Tree of Life!")
//							endif
//						endif
//					endif
//				endif
//			endif
//		endif
//		//?????????????
//		if $Now_Year == 2012
//			if $Now_Month == 9
//				if $Now_Mday >= 10
//					if $Now_Mday <= 16
//						if $Now_Hour == 12
//							if $Now_Minute == 0
//								call Shengmingzhiquan()
//							endif
//						endif
//						if $Now_Hour == 15
//							if $Now_Minute == 0
//								call Shengmingzhiquan()
//							endif
//						endif
//						if $Now_Hour == 18
//							if $Now_Minute == 0
//								call Shengmingzhiquan()
//							endif
//						endif
//						if $Now_Hour == 21
//							if $Now_Minute == 0
//								call Shengmingzhiquan()
//							endif
//						endif
//					endif
//				endif
//			endif
//		endif
//		//???????????
//		if $Now_Year == 2012
//			if $Now_Month == 9
//				if $Now_Mday >= 10
//					if $Now_Mday <= 16
//						if $Now_Hour == 12
//							if $Now_Minute == 20
//								call DeleteShengmingzhiquan()
//							endif
//						endif
//						if $Now_Hour == 15
//							if $Now_Minute == 20
//								call DeleteShengmingzhiquan()
//							endif
//						endif
//						if $Now_Hour == 18
//							if $Now_Minute == 20
//								call DeleteShengmingzhiquan()
//							endif
//						endif
//						if $Now_Hour == 21
//							if $Now_Minute == 20
//								call DeleteShengmingzhiquan()
//							endif
//						endif
//					endif
//				endif
//			endif
//		endif
//		//???????????????
//		if $Now_Year == 2012
//			if $Now_Month == 9
//				if $Now_Mday >= 10
//					if $Now_Mday <= 16
//						if $Now_Hour == 12
//							if $Now_Minute == 20
//								BC("screen", "server", -1, "The Tree of Life has been watered a total of ",$guangai," times. On Sept. 16th, at 9:20PM, all this server's players will receive a blessing from the Tree of Life!")
//								BC("chat", "server", -1, "The Tree of Life has been watered a total of ",$guangai," times. On Sept. 16th, at 9:20PM, all this server's players will receive a blessing from the Tree of Life!")
//								BC("screen", "server", -1, "The Spring of Life will next appear at 3:00PM, near Atlantis!")
//								BC("chat", "server", -1, "The Spring of Life will next appear at 3:00PM, near Atlantis!")
//							endif
//						endif
//						if $Now_Hour == 15
//							if $Now_Minute == 20
//								BC("screen", "server", -1, "The Tree of Life has been watered a total of ",$guangai," times. On Sept. 16th, at 9:20PM, all this server's players will receive a blessing from the Tree of Life!")
//								BC("chat", "server", -1, "The Tree of Life has been watered a total of ",$guangai," times. On Sept. 16th, at 9:20PM, all this server's players will receive a blessing from the Tree of Life!")
//								BC("screen", "server", -1, "The Spring of Life will next appear at 6:00PM, near Atlantis!")
//								BC("chat", "server", -1, "The Spring of Life will next appear at 6:00PM, near Atlantis!")
//							endif
//						endif
//						if $Now_Hour == 18
//							if $Now_Minute == 20
//								BC("screen", "server", -1, "The Tree of Life has been watered a total of ",$guangai," times. On Sept. 16th, at 9:20PM, all this server's players will receive a blessing from the Tree of Life!")
//								BC("chat", "server", -1, "The Tree of Life has been watered a total of ",$guangai," times. On Sept. 16th, at 9:20PM, all this server's players will receive a blessing from the Tree of Life!")
//								BC("screen", "server", -1, "The Spring of Life will next appear at 9:00PM, near Atlantis!")
//								BC("chat", "server", -1, "The Spring of Life will next appear at 9:00PM, near Atlantis!")
//							endif
//						endif
//						if $Now_Hour == 21
//							if $Now_Minute == 20
//								BC("screen", "server", -1, "The Tree of Life has been watered a total of ",$guangai," times. On Sept. 16th, at 9:20PM, all this server's players will receive a blessing from the Tree of Life!")
//								BC("chat", "server", -1, "The Tree of Life has been watered a total of ",$guangai," times. On Sept. 16th, at 9:20PM, all this server's players will receive a blessing from the Tree of Life!")
//								BC("screen", "server", -1, "The Tree of Life watering event has ended!")
//								BC("chat", "server", -1, "The Tree of Life watering event has ended!")
//							endif
//						endif
//					endif
//				endif
//			endif
//		endif
//		if $Now_Year == 2012
//			if $Now_Month == 9
//				if $Now_Mday >= 16
//					if $Now_Mday <= 16
//						if $Now_Hour == 21
//							if $Now_Minute == 20
//								BC("screen", "server", -1, "The Tree of Life has been watered a total of ",$guangai," times. All this server's players can go to the Tree of Life to accept a blessing, and receive a great deal of experience!")
//								BC("chat", "server", -1, "The Tree of Life has been watered a total of ",$guangai," times. All this server's players can go to the Tree of Life to accept a blessing, and receive a great deal of experience!")
//							endif
//						endif
//					endif
//				endif
//			endif
//		endif
//	endif
//	}
//		function Shengmingzhiquan(){
//		$cishu = GetServerVar(296 )
//		$cishu = $cishu + 1
//		SetServerVar( 296, $cishu )
//		$n = RandomNumber ( 1, 9 )
//		if $n == 1
//			AddNPC( 910 )
//			BC("screen", "server", -1, "The Spring of Life has appeared in the Sea of Atlantis in Realm 7! Get ready to collect from the Spring of Life to water the Tree of Life!")
//			BC("chat", "server", -1, "The Spring of Life has appeared in the Sea of Atlantis in Realm 7! Get ready to collect from the Spring of Life to water the Tree of Life!")
//		endif
//		if $n == 2
//			AddNPC( 911 )
//			BC("screen", "server", -1, "The Spring of Life has appeared in the Sea of Atlantis in Realm 7! Get ready to collect from the Spring of Life to water the Tree of Life!")
//			BC("chat", "server", -1, "The Spring of Life has appeared in the Sea of Atlantis in Realm 7! Get ready to collect from the Spring of Life to water the Tree of Life!")
//		endif
//		if $n == 3
//			AddNPC( 912 )
//			BC("screen", "server", -1, "The Spring of Life has appeared in the Sea of Atlantis in Realm 7! Get ready to collect from the Spring of Life to water the Tree of Life!")
//			BC("chat", "server", -1, "The Spring of Life has appeared in the Sea of Atlantis in Realm 7! Get ready to collect from the Spring of Life to water the Tree of Life!")
//		endif
//		if $n == 4
//			AddNPC( 913 )
//			BC("screen", "server", -1, "The Spring of Life has appeared in the Atlantic Ocean in Realm 7! Get ready to collect from the Spring of Life to water the Tree of Life!")
//			BC("chat", "server", -1, "The Spring of Life has appeared in the Atlantic Ocean in Realm 7! Get ready to collect from the Spring of Life to water the Tree of Life!")
//		endif
//		if $n == 5
//			AddNPC( 914 )
//			BC("screen", "server", -1, "The Spring of Life has appeared in the Atlantic Ocean in Realm 7! Get ready to collect from the Spring of Life to water the Tree of Life!")
//			BC("chat", "server", -1, "The Spring of Life has appeared in the Atlantic Ocean in Realm 7! Get ready to collect from the Spring of Life to water the Tree of Life!")
//		endif
//		if $n == 6
//			AddNPC( 915 )
//			BC("screen", "server", -1, "The Spring of Life has appeared in the Atlantic Ocean in Realm 7! Get ready to collect from the Spring of Life to water the Tree of Life!")
//			BC("chat", "server", -1, "The Spring of Life has appeared in the Atlantic Ocean in Realm 7! Get ready to collect from the Spring of Life to water the Tree of Life!")
//		endif
//		if $n == 7
//			AddNPC( 916 )
//			BC("screen", "server", -1, "The Spring of Life has appeared in Aegean North in Realm 7! Get ready to collect from the Spring of Life to water the Tree of Life!")
//			BC("chat", "server", -1, "The Spring of Life has appeared in Aegean North in Realm 7! Get ready to collect from the Spring of Life to water the Tree of Life!")
//		endif
//		if $n == 8
//			AddNPC( 917 )
//			BC("screen", "server", -1, "The Spring of Life has appeared in Aegean North in Realm 7! Get ready to collect from the Spring of Life to water the Tree of Life!")
//			BC("chat", "server", -1, "The Spring of Life has appeared in Aegean North in Realm 7! Get ready to collect from the Spring of Life to water the Tree of Life!")
//		endif
//		if $n == 9
//			AddNPC( 918 )
//			BC("screen", "server", -1, "The Spring of Life has appeared in Aegean North in Realm 7! Get ready to collect from the Spring of Life to water the Tree of Life!")
//			BC("chat", "server", -1, "The Spring of Life has appeared in Aegean North in Realm 7! Get ready to collect from the Spring of Life to water the Tree of Life!")
//		endif
//		}
//		function DeleteShengmingzhiquan(){
//			  DeleteNPC(910)
//				DeleteNPC(911)
//				DeleteNPC(912)
//				DeleteNPC(913)
//				DeleteNPC(914)
//				DeleteNPC(915)
//				DeleteNPC(916)
//				DeleteNPC(917)
//				DeleteNPC(918)
//				BC("screen", "server", -1, "The Spring of Life has run dry! Those who collected from the Spring, go and water the Tree of Life!")
//				BC("chat", "server", -1, "The Spring of Life has run dry! Those who collected from the Spring, go and water the Tree of Life!")
//		}

		//?????
		function GodofWater(){
			//??
			$Now_Minute = GetSystemTime( "minute")
			//??
			$Now_Hour = GetSystemTime( "hour" )
			//??????
			$Line = GetServerLineID()
			if $Now_Hour == 1
				if $Now_Minute == 0
					$rMonster1 = RandomNumber( 1 , 19 )
					$rMonster2 = RandomNumber( 1 , 24 )
					$rMonster3 = RandomNumber( 1 , 18 )
					$rMonster4 = RandomNumber( 1 , 23 )
					$rMonster5 = RandomNumber( 1 , 16 )
					$rLast = RandomNumber( 1 , 3 )
					$rKind = RandomNumber( 0 , 4 )
					$rHard1 = RandomNumber( 1 , 3 )
					$rHard2 = RandomNumber( 1 , 3 )
					SetGlobalVar(344 ,$rMonster1)
					SetGlobalVar(342 ,$rMonster2)
					SetGlobalVar(343 ,$rMonster3)
					SetGlobalVar(345 ,$rMonster4)
					SetGlobalVar(350 ,$rMonster5)
					SetGlobalVar(346 ,$rLast)
					SetGlobalVar(347 ,$rKind)
					SetGlobalVar(348 ,$rHard1)
					SetGlobalVar(349 ,$rHard2)
					$rlevel = $rMonster1 + $rMonster2
					$rlevel = $rlevel + $rMonster3
					$rlevel = $rlevel + $rMonster4
					$rlevel = $rlevel + $rMonster5
					$rlevel = $rlevel + 20
					SetGlobalVar(353 ,$rlevel)
					if $rKind == 0
						SetGlobalVar(344 ,0)
						SetGlobalVar(342 ,0)
						SetGlobalVar(343 ,0)
						SetGlobalVar(345 ,0)
						SetGlobalVar(350 ,0)
						SetGlobalVar(346 ,1)
						SetGlobalVar(347 ,0)
						SetGlobalVar(348 ,0)
						SetGlobalVar(349 ,0)
						SetGlobalVar(353 ,0)
					endif
					if $Line == 7

						$rMap1 = RandomNumber( 1 , 8 )
						if $rMap1 == 1
							AddNpcByPos( 903 ,475,166,179,79200,0)
						endif
						if $rMap1 == 2
							AddNpcByPos( 903 ,86,79,195,79200,0)
						endif
						if $rMap1 == 3
							AddNpcByPos( 903 ,87,84,131,79200,0)
						endif
						if $rMap1 == 4
							AddNpcByPos( 903 ,1,187,269,79200,0)
						endif
						if $rMap1 == 5
							AddNpcByPos( 903 ,475,136,238,79200,0)
						endif
						if $rMap1 == 6
							AddNpcByPos( 903 ,86,138,255,79200,0)
						endif
						if $rMap1 == 7
							AddNpcByPos( 903 ,87,235,230,79200,0)
						endif
						if $rMap1 == 8
							AddNpcByPos( 903 ,1,160,76,79200,0)
						endif

						$rMap2 = RandomNumber( 1 , 8 )
						if $rMap2 == 1
							AddNpcByPos( 906 ,106,138,133,79200,0)
						endif
						if $rMap2 == 2
							AddNpcByPos( 906 ,0,192,143,79200,0)
						endif
						if $rMap2 == 3
							AddNpcByPos( 906 ,7,31,181,79200,0)
						endif
						if $rMap2 == 4
							AddNpcByPos( 906 ,21,120,195,79200,0)
						endif
						if $rMap2 == 5
							AddNpcByPos( 906 ,106,58,125,79200,0)
						endif
						if $rMap2 == 6
							AddNpcByPos( 906 ,0,93,117,79200,0)
						endif
						if $rMap2 == 7
							AddNpcByPos( 906 ,7,183,198,79200,0)
						endif
						if $rMap2 == 8
							AddNpcByPos( 906 ,21,249,231,79200,0)
						endif

						$rMap3 = RandomNumber( 1 , 8 )
						if $rMap3 == 1
							AddNpcByPos( 908 ,88,256,177,79200,0)
						endif
						if $rMap3 == 2
							AddNpcByPos( 908 ,8,102,125,79200,0)
						endif
						if $rMap3 == 3
							AddNpcByPos( 908 ,20,138,135,79200,0)
						endif
						if $rMap3 == 4
							AddNpcByPos( 908 ,93,77,256,79200,0)
						endif
						if $rMap3 == 5
							AddNpcByPos( 908 ,88,216,65,79200,0)
						endif
						if $rMap3 == 6
							AddNpcByPos( 908 ,8,165,287,79200,0)
						endif
						if $rMap3 == 7
							AddNpcByPos( 908 ,93,234,121,79200,0)
						endif
						if $rMap3 == 8
							AddNpcByPos( 908 ,93,119,95,79200,0)
						endif

						$rMap4 = RandomNumber( 1 , 8 )
						if $rMap4 == 1
							AddNpcByPos( 907 ,3,128,169,79200,0)
						endif
						if $rMap4 == 2
							AddNpcByPos( 907 ,4,146,169,79200,0)
						endif
						if $rMap4 == 3
							AddNpcByPos( 907 ,5,133,274,79200,0)
						endif
						if $rMap4 == 4
							AddNpcByPos( 907 ,6,179,61,79200,0)
						endif
						if $rMap4 == 5
							AddNpcByPos( 907 ,3,215,237,79200,0)
						endif
						if $rMap4 == 6
							AddNpcByPos( 907 ,4,252,188,79200,0)
						endif
						if $rMap4 == 7
							AddNpcByPos( 907 ,5,222,48,79200,0)
						endif
						if $rMap4 == 8
							AddNpcByPos( 907 ,6,76,229,79200,0)
						endif

						$rMap5 = RandomNumber( 1 , 8 )
						if $rMap5 == 1
							AddNpcByPos( 909 ,245,79,131,79200,0)
						endif
						if $rMap5 == 2
							AddNpcByPos( 909 ,128,108,210,79200,0)
							AddNpcByPos( 909 ,147,108,210,79200,0)
							AddNpcByPos( 909 ,148,108,210,79200,0)
						endif
						if $rMap5 == 3
							AddNpcByPos( 909 ,14,261,164,79200,0)
						endif
						if $rMap5 == 4
							AddNpcByPos( 909 ,90,95,87,79200,0)
						endif
						if $rMap5 == 5
							AddNpcByPos( 909 ,14,56,82,79200,0)
						endif
						if $rMap5 == 6
							AddNpcByPos( 909 ,90,189,128,79200,0)
						endif
						if $rMap5 == 7
							AddNpcByPos( 909 ,14,65,260,79200,0)
						endif
						if $rMap5 == 8
							AddNpcByPos( 909 ,14,165,144,79200,0)
						endif
					endif
				endif
			endif

		}

		//????
		function TitanQuest(){
			//??
			$Now_Minute = GetSystemTime( "minute")
			//??
			$Now_Hour = GetSystemTime( "hour" )
			//??????
			$Line = GetServerLineID()
			if $Now_Hour == 22
				if $Now_Minute == 0
					$rMonster = RandomNumber( 1 , 42 )
					$rLast = RandomNumber( 1 , 3 )
					$rKind = RandomNumber( 1 , 4 )
					$rHard1 = RandomNumber( 1 , 3 )
					$rHard2 = RandomNumber( 1 , 3 )
					SetGlobalVar(351 ,$rTime)
					SetGlobalVar(352 ,$rMonster)
					SetGlobalVar(354 ,$rLast)
					SetGlobalVar(355 ,$rKind)
					SetGlobalVar(356 ,$rHard1)
					SetGlobalVar(357 ,$rHard2)
					if $Line == 7
						$rMap = RandomNumber( 0 , 11 )
						if $rMap == 0
							AddNpcByPos( 904 ,9,134,127,8100,0)
							BC("screen", "servergroup", -1 , "The Exiled Titan Rullamas has appeared in Realm 7, on the 1st Level of Angkor Temple. He's issuing Entreaty Quests to all who are willing!")
							BC("chat", "servergroup", -1 , "The Exiled Titan Rullamas has appeared in Realm 7, on the 1st Level of Angkor Temple. He's issuing Entreaty Quests to all who are willing!")
						endif
						if $rMap == 1
							AddNpcByPos( 904 ,10,167,149,8100,0)
							BC("screen", "servergroup", -1 , "The Exiled Titan Rullamas has appeared in Realm 7, on the 2nd Level of Angkor Temple. He's issuing Entreaty Quests to all who are willing!")
							BC("chat", "servergroup", -1 , "The Exiled Titan Rullamas has appeared in Realm 7, on the 2nd Level of Angkor Temple. He's issuing Entreaty Quests to all who are willing!")
						endif
						if $rMap == 2
							AddNpcByPos( 904 ,11,94,88,8100,0)
							BC("screen", "servergroup", -1 , "The Exiled Titan Rullamas has appeared in Realm 7, on the 3rd Level of Angkor Temple. He's issuing Entreaty Quests to all who are willing!")
							BC("chat", "servergroup", -1 , "The Exiled Titan Rullamas has appeared in Realm 7, on the 3rd Level of Angkor Temple. He's issuing Entreaty Quests to all who are willing!")
						endif
						if $rMap == 3
							AddNpcByPos( 904 ,12,266,211,8100,0)
							BC("screen", "servergroup", -1 , "The Exiled Titan Rullamas has appeared in Realm 7, on the 4th Level of Angkor Temple. He's issuing Entreaty Quests to all who are willing!")
							BC("chat", "servergroup", -1 , "The Exiled Titan Rullamas has appeared in Realm 7, on the 4th Level of Angkor Temple. He's issuing Entreaty Quests to all who are willing!")
						endif
						if $rMap == 4
							AddNpcByPos( 904 ,122,152,165,8100,0)
							BC("screen", "servergroup", -1 , "The Exiled Titan Rullamas has appeared in Realm 7, on the 3rd Level of the Dragon Emperor's Catacomb. He's issuing Entreaty Quests to all who are willing!")
							BC("chat", "servergroup", -1 , "The Exiled Titan Rullamas has appeared in Realm 7, on the 3rd Level of the Dragon Emperor's Catacomb. He's issuing Entreaty Quests to all who are willing!")
						endif
						if $rMap == 5
							AddNpcByPos( 904 ,280,181,172,8100,0)
							BC("screen", "servergroup", -1 , "The Exiled Titan Rullamas has appeared in the Pantheon in Realm 7. He's issuing Entreaty Quests to all who are willing!")
							BC("chat", "servergroup", -1 , "The Exiled Titan Rullamas has appeared in the Pantheon in Realm 7. He's issuing Entreaty Quests to all who are willing!")
						endif
						if $rMap == 6
							AddNpcByPos( 904 ,397,252,248,8100,0)
							BC("screen", "servergroup", -1 , "The Exiled Titan Rullamas has appeared in Realm 7, on the 2nd Level of the Black Dragon Lair. He's issuing Entreaty Quests to all who are willing!")
							BC("chat", "servergroup", -1 , "The Exiled Titan Rullamas has appeared in Realm 7, on the 2nd Level of the Black Dragon Lair. He's issuing Entreaty Quests to all who are willing!")
						endif
						if $rMap == 7
							AddNpcByPos( 904 ,99,49,155,8100,0)
							BC("screen", "servergroup", -1 , "The Exiled Titan Rullamas has appeared in the Killing Grounds in Realm 7. He's issuing Entreaty Quests to all who are willing!")
							BC("chat", "servergroup", -1 , "The Exiled Titan Rullamas has appeared in the Killing Grounds in Realm 7. He's issuing Entreaty Quests to all who are willing!")
						endif
						if $rMap == 8
							AddNpcByPos( 904 ,455,222,74,8100,0)
							BC("screen", "servergroup", -1 , "The Exiled Titan Rullamas has appeared at Emerald Dragon Island in Realm 7. He's issuing Entreaty Quests to all who are willing!")
							BC("chat", "servergroup", -1 , "The Exiled Titan Rullamas has appeared at Emerald Dragon Island in Realm 7. He's issuing Entreaty Quests to all who are willing!")
						endif
						if $rMap == 9
							AddNpcByPos( 904 ,456,181,209,8100,0)
							BC("screen", "servergroup", -1 , "The Exiled Titan Rullamas has appeared in the White Tiger Den in Realm 7. He's issuing Entreaty Quests to all who are willing!")
							BC("chat", "servergroup", -1 , "The Exiled Titan Rullamas has appeared in the White Tiger Den in Realm 7. He's issuing Entreaty Quests to all who are willing!")
						endif
						if $rMap == 10
							AddNpcByPos( 904 ,457,160,179,8100,0)
							BC("screen", "servergroup", -1 , "The Exiled Titan Rullamas has appeared at the Obsidian Turtle Pool in Realm 7. He's issuing Entreaty Quests to all who are willing!")
							BC("chat", "servergroup", -1 , "The Exiled Titan Rullamas has appeared at the Obsidian Turtle Pool in Realm 7. He's issuing Entreaty Quests to all who are willing!")
						endif
						if $rMap == 11
							AddNpcByPos( 904 ,535,42,154,8100,0)
							BC("screen", "servergroup", -1 , "The Exiled Titan Rullamas has appeared in Hades' Temple in Realm 7. He's issuing Entreaty Quests to all who are willing!")
							BC("chat", "servergroup", -1 , "The Exiled Titan Rullamas has appeared in Hades' Temple in Realm 7. He's issuing Entreaty Quests to all who are willing!")
						endif
					endif
				endif
			endif

		}

		function TMC(){
//The Throne of Magic Crystal
//???????,?????


////			$Now_Minute =  GetSystemTime( "minute")
////			$Now_Hour =  GetSystemTime( "hour" )
////			$Now_Mday =  GetSystemTime( "mday" )
////			$Now_Month =  GetSystemTime( "month" )
////			$Now_Year =  GetSystemTime( "year" )
////			$Now_Week =  GetSystemTime( "week" )
////			$Now_Yday =  GetSystemTime( "yday" )
////			$Line = GetServerLineID()
			$Now_Minute =  GetSystemTime( "minute")
			$Now_Hour =  GetSystemTime( "hour" )
			$Now_Mday =  GetSystemTime( "mday" )
			$Now_Month =  GetSystemTime( "month" )
			$Now_Year =  GetSystemTime( "year" )
			$Now_Week =  GetSystemTime( "week" )
			$Now_Yday =  GetSystemTime( "yday" )
			$Line = GetServerLineID()

			$hour = GetSystemTime("hour")
			$minute = GetSystemTime("minute")
			$hour = $hour * 100
			$time = $hour + $minute

			if $time == 1955
				SetServerVar(300,0)
			endif

		if $Line == 3
			if $Now_Week == 0

				if $time == 1200
					BC("chat","servergroup",-1,"The path to the Throne of Boreas will begin at 20:00 today! Guild Leaders can speak to Notus in the Guild Manor to register!")
				endif
				if $time == 1400
					BC("chat","servergroup",-1,"The path to the Throne of Boreas will begin at 20:00 today! Guild Leaders can speak to Notus in the Guild Manor to register!")
				endif
				if $time == 1600
					BC("chat","servergroup",-1,"The path to the Throne of Boreas will begin at 20:00 today! Guild Leaders can speak to Notus in the Guild Manor to register!")
				endif
				if $time == 1800
					BC("chat","servergroup",-1,"The path to the Throne of Boreas will begin at 20:00 today! Guild Leaders can speak to Notus in the Guild Manor to register!")
				endif
				if $time == 1945
					BC("chat","servergroup",-1,"The path to the Throne of Boreas will begin at 20:00 today! Guild Leaders can speak to Notus in the Guild Manor to register before 19:55!")
				endif
				if $time == 1955
					BC("chat","servergroup",-1,"Registration for the Throne of Boreas has ended! The first part of the event (The Zephyr) will begin at 20:00. Please gather your Guild members in the correct realm to participate!")
				endif
				if $time == 2000
					BC("chat","servergroup",-1,"The Zephyr has departed and will be in flight for the next 20 minutes! The top 8 Guilds in the server at the end of the event will continue to the next round (Eurus' Wasteland)!")
				endif
				if $time == 2010
					$rank1stID = GetServerVar(301)
					$rank2ndID = GetServerVar(302)
					$rank3rdID = GetServerVar(303)
					if $rank1stID > 0
						#namerank1 = GetGuildName($rank1stID)
					else
						#namerank1 = " "
					endif
					if $rank2ndID > 0
						#namerank2 = GetGuildName($rank2ndID)
					else
						#namerank2 = " "
					endif
					if $rank3rdID > 0
						#namerank3 = GetGuildName($rank3rdID)
					else
						#namerank3 = " "
					endif
					BC("chat","servergroup",-1,"The Zephyr's flight is already half over! The current top 3 Guilds are the ",#namerank1," and ",#namerank2," and ",#namerank3," Guilds!")
				endif
				if $time == 2020
					SetGlobalVar(137,1)
					$rank1stID = GetServerVar(301)
					$rank2ndID = GetServerVar(302)
					$rank3rdID = GetServerVar(303)
					if $rank1stID > 0
						#namerank1 = GetGuildName($rank1stID)
					else
						#namerank1 = " "
					endif
					if $rank2ndID > 0
						#namerank2 = GetGuildName($rank2ndID)
					else
						#namerank2 = " "
					endif
					if $rank3rdID > 0
						#namerank3 = GetGuildName($rank3rdID)
					else
						#namerank3 = " "
					endif
					BC("chat","servergroup",-1,"The Zephyr has landed! The top 3 Guilds are ",#namerank1," and ",#namerank2," and ",#namerank3,"! The top 8 Guilds should prepare for the second round, Eurus' Wasteland, which begins at 20:25!")
				endif
				if $time == 2021
					SetGlobalVar(137,1)
				endif
			endif
		endif


		}

//		//---?????? 9?30? ---start
//		function Autumn2012(){
//
//		//2012??????????,9?30??21:30
//		$Now_Year = GetSystemTime( "year" )
//		$Now_Month = GetSystemTime( "month" )
//		$Now_Mday =  GetSystemTime( "mday" )
//		$Now_Minute =  GetSystemTime( "minute")
//		$Now_Hour =  GetSystemTime( "hour" )
//		$Line = GetServerLineID()
//
//		if $Now_Year == 2012
//			if $Now_Month == 9
//				if $Now_Mday == 30
//
//						if $Now_Hour == 12
//							if $Now_Minute == 00
//								BC("screen", "server", -1, "GUID:08359000926")
//								BC("chat", "server", -1, "GUID:08359000927")
//							endif
//						endif
//						if $Now_Hour == 15
//							if $Now_Minute == 00
//								BC("screen", "server", -1, "GUID:08359000928")
//								BC("chat", "server", -1, "GUID:08359000929")
//							endif
//						endif
//						if $Now_Hour == 18
//							if $Now_Minute == 00
//								BC("screen", "server", -1, "GUID:08359000930")
//								BC("chat", "server", -1, "GUID:08359000931")
//							endif
//						endif
//						if $Now_Hour == 20
//							if $Now_Minute == 00
//								BC("screen", "server", -1, "GUID:08359000932")
//								BC("chat", "server", -1, "GUID:08359000933")
//							endif
//						endif
//						if $Now_Hour == 21
//							if $Now_Minute == 00
//								BC("screen", "server", -1, "GUID:08359000934")
//								BC("chat", "server", -1, "GUID:08359000935")
//							endif
//						endif
//						if $Now_Hour == 21
//							if $Now_Minute == 10
//								BC("screen", "server", -1, "GUID:08359000936")
//								BC("chat", "server", -1, "GUID:08359000937")
//							endif
//						endif
//						if $Now_Hour == 21
//							if $Now_Minute == 20
//								BC("screen", "server", -1, "GUID:08359000938")
//								BC("chat", "server", -1, "GUID:08359000939")
//							endif
//						endif
//						if $Now_Hour == 21
//							if $Now_Minute == 25
//								BC("screen", "server", -1, "GUID:08359000940")
//								BC("chat", "server", -1, "GUID:08359000941")
//							endif
//						endif
//						if $Now_Hour == 21
//							if $Now_Minute == 28
//								BC("screen", "server", -1, "GUID:08359000942")
//								BC("chat", "server", -1, "GUID:08359000943")
//							endif
//						endif
//						if $Now_Hour == 21
//							if $Now_Minute == 30
//								BC("screen", "server", -1, "GUID:08359000944")
//								BC("chat", "server", -1, "GUID:08359000945")
//								if $Line == 7
//									AddMonsterByFloat(32293,1,475,126,191,1)
//								endif
//							endif
//						endif
//
//				endif
//			endif
//		endif
//
//}
//		//---?????? 9?30? ---end

//		//---??????? 10?8? ---start
//		function NationDay2012(){
//
//		//2012????????,10?8??20:30
//		$Now_Year = GetSystemTime( "year" )
//		$Now_Month = GetSystemTime( "month" )
//		$Now_Mday =  GetSystemTime( "mday" )
//		$Now_Minute =  GetSystemTime( "minute")
//		$Now_Hour =  GetSystemTime( "hour" )
//		$Line = GetServerLineID()
//
//		if $Now_Year == 2012
//			if $Now_Month == 10
//				if $Now_Mday == 8
//
//						if $Now_Hour == 12
//							if $Now_Minute == 00
//								BC("screen", "server", -1, "GUID:08359000946")
//								BC("chat", "server", -1, "GUID:08359000947")
//							endif
//						endif
//						if $Now_Hour == 15
//							if $Now_Minute == 00
//								BC("screen", "server", -1, "GUID:08359000948")
//								BC("chat", "server", -1, "GUID:08359000949")
//							endif
//						endif
//						if $Now_Hour == 18
//							if $Now_Minute == 00
//								BC("screen", "server", -1, "GUID:08359000950")
//								BC("chat", "server", -1, "GUID:08359000951")
//							endif
//						endif
//						if $Now_Hour == 19
//							if $Now_Minute == 00
//								BC("screen", "server", -1, "GUID:08359000952")
//								BC("chat", "server", -1, "GUID:08359000953")
//							endif
//						endif
//						if $Now_Hour == 20
//							if $Now_Minute == 00
//								BC("screen", "server", -1, "GUID:08359000954")
//								BC("chat", "server", -1, "GUID:08359000955")
//							endif
//						endif
//						if $Now_Hour == 20
//							if $Now_Minute == 10
//								BC("screen", "server", -1, "GUID:08359000956")
//								BC("chat", "server", -1, "GUID:08359000957")
//							endif
//						endif
//						if $Now_Hour == 20
//							if $Now_Minute == 20
//								BC("screen", "server", -1, "GUID:08359000958")
//								BC("chat", "server", -1, "GUID:08359000959")
//							endif
//						endif
//						if $Now_Hour == 20
//							if $Now_Minute == 25
//								BC("screen", "server", -1, "GUID:08359000960")
//								BC("chat", "server", -1, "GUID:08359000961")
//							endif
//						endif
//						if $Now_Hour == 20
//							if $Now_Minute == 28
//								BC("screen", "server", -1, "GUID:08359000962")
//								BC("chat", "server", -1, "GUID:08359000963")
//							endif
//						endif
//						if $Now_Hour == 20
//							if $Now_Minute == 29
//								BC("screen", "server", -1, "GUID:08359000964")
//								BC("chat", "server", -1, "GUID:08359000965")
//							endif
//						endif
//
//				endif
//			endif
//		endif
//
//}
//		//---????? 10?8? ---end

		//---November2012 11?20??12?3? ---start
		//?????12?11??12?31?
		function OnNovember2012(){

		$Now_Year = GetSystemTime( "year" )
		$Now_Month = GetSystemTime( "month" )
		$Now_Mday =  GetSystemTime( "mday" )
		$Now_Minute =  GetSystemTime( "minute")
		$Now_Hour =  GetSystemTime( "hour" )
		$Line = GetServerLineID()
		$Kind = $Now_Mday % 3

		$monthadd = $Now_Month * 100
		$Now_Time = $monthadd + $Now_Mday

		if $Now_Year == 2012
			if $Now_Time >= 1211
				if $Now_Time <= 1231

					if $Kind == 0
						call OnNov2012Kind0
					endif

					if $Kind == 1
						call OnNov2012Kind1
					endif

					if $Kind == 2
						call OnNov2012Kind2
					endif

				endif
			endif
		endif




}

		function OnNov2012Kind0(){

		$Now_Year = GetSystemTime( "year" )
		$Now_Month = GetSystemTime( "month" )
		$Now_Mday =  GetSystemTime( "mday" )
		$Now_Minute =  GetSystemTime( "minute")
		$Now_Hour =  GetSystemTime( "hour" )
		$Line = GetServerLineID()

		$monthadd = $Now_Month * 100
		$Now_Time = $monthadd + $Now_Mday

		if $Now_Year == 2012
			if $Now_Time >= 1211
				if $Now_Time <= 1231

					if $Now_Hour == 12
						if $Now_Minute == 50
							BC("screen", "server", -1, "In 10 minutes, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							BC("chat", "server", -1, "In 10 minutes, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
						endif
					endif

					if $Now_Hour == 12
						if $Now_Minute == 55
							BC("screen", "server", -1, "In 5 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							BC("chat", "server", -1, "In 5 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
						endif
					endif

					if $Now_Hour == 12
						if $Now_Minute == 59
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
						endif
					endif

					if $Now_Hour == 13
						if $Now_Minute == 0
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped in the Dragon Emperor's Catacomb in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("screen", "server", -1, "In 5 minutes, a second chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped in the Dragon Emperor's Catacomb in Realm 6! Quick, heroes: go and collect that treasure!")
								call OnSummonNovember2012
						endif
					endif

					if $Now_Hour == 13
						if $Now_Minute == 4
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
						endif
					endif

					if $Now_Hour == 13
						if $Now_Minute == 5
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped in the Dragon Emperor's Catacomb in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("screen", "server", -1, "In 5 minutes, a third chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped in the Dragon Emperor's Catacomb in Realm 6! Quick, heroes: go and collect that treasure!")
								call OnSummonNovember2012
						endif
					endif

					if $Now_Hour == 13
						if $Now_Minute == 9
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
						endif
					endif

					if $Now_Hour == 13
						if $Now_Minute == 10
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped in the Dragon Emperor's Catacomb in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("screen", "server", -1, "In 5 minutes, the last chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped in the Dragon Emperor's Catacomb in Realm 6! Quick, heroes: go and collect that treasure!")
								call OnSummonNovember2012
						endif
					endif

					if $Now_Hour == 13
						if $Now_Minute == 14
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
						endif
					endif

					if $Now_Hour == 13
						if $Now_Minute == 15
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped in the Dragon Emperor's Catacomb in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped in the Dragon Emperor's Catacomb in Realm 6! Quick, heroes: go and collect that treasure!")
								call OnSummonNovember2012
						endif
					endif

					if $Now_Hour == 19
						if $Now_Minute == 50
							BC("screen", "server", -1, "In 10 minutes, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							BC("chat", "server", -1, "In 10 minutes, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
						endif
					endif

					if $Now_Hour == 19
						if $Now_Minute == 55
							BC("screen", "server", -1, "In 5 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							BC("chat", "server", -1, "In 5 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
						endif
					endif

					if $Now_Hour == 19
						if $Now_Minute == 59
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
						endif
					endif

					if $Now_Hour == 20
						if $Now_Minute == 0
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped in the Dragon Emperor's Catacomb in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("screen", "server", -1, "In 5 minutes, a second chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped in the Dragon Emperor's Catacomb in Realm 6! Quick, heroes: go and collect that treasure!")
								call OnSummonNovember2012
						endif
					endif

					if $Now_Hour == 20
						if $Now_Minute == 4
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
						endif
					endif

					if $Now_Hour == 20
						if $Now_Minute == 5
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped in the Dragon Emperor's Catacomb in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("screen", "server", -1, "In 5 minutes, a third chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped in the Dragon Emperor's Catacomb in Realm 6! Quick, heroes: go and collect that treasure!")
								call OnSummonNovember2012
						endif
					endif

					if $Now_Hour == 20
						if $Now_Minute == 9
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
						endif
					endif

					if $Now_Hour == 20
						if $Now_Minute == 10
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped in the Dragon Emperor's Catacomb in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("screen", "server", -1, "In 5 minutes, the last chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped in the Dragon Emperor's Catacomb in Realm 6! Quick, heroes: go and collect that treasure!")
								call OnSummonNovember2012
						endif
					endif

					if $Now_Hour == 20
						if $Now_Minute == 14
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
						endif
					endif

					if $Now_Hour == 20
						if $Now_Minute == 15
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped in the Dragon Emperor's Catacomb in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped in the Dragon Emperor's Catacomb in Realm 6! Quick, heroes: go and collect that treasure!")
								call OnSummonNovember2012
						endif
					endif

				endif
			endif
		endif


}

		function OnNov2012Kind1(){

		$Now_Year = GetSystemTime( "year" )
		$Now_Month = GetSystemTime( "month" )
		$Now_Mday =  GetSystemTime( "mday" )
		$Now_Minute =  GetSystemTime( "minute")
		$Now_Hour =  GetSystemTime( "hour" )
		$Line = GetServerLineID()

		$monthadd = $Now_Month * 100
		$Now_Time = $monthadd + $Now_Mday

		if $Now_Year == 2012
			if $Now_Time >= 1211
				if $Now_Time <= 1231

					if $Now_Hour == 12
						if $Now_Minute == 50
							BC("screen", "server", -1, "In 10 minutes, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							BC("chat", "server", -1, "In 10 minutes, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
						endif
					endif

					if $Now_Hour == 12
						if $Now_Minute == 55
							BC("screen", "server", -1, "In 5 minutes, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							BC("chat", "server", -1, "In 5 minutes, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
						endif
					endif

					if $Now_Hour == 12
						if $Now_Minute == 59
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
						endif
					endif

					if $Now_Hour == 13
						if $Now_Minute == 0
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped in the Sea of Atlantis in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("screen", "server", -1, "In 5 minutes, a second chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped into the Sea of Atlantis in Realm 6! Quick, heroes: go and collect that treasure!")
								call OnSummonNovember2012
						endif
					endif

					if $Now_Hour == 13
						if $Now_Minute == 4
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
						endif
					endif

					if $Now_Hour == 13
						if $Now_Minute == 5
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped in the Sea of Atlantis in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("screen", "server", -1, "In 5 minutes, a third chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped into the Sea of Atlantis in Realm 6! Quick, heroes: go and collect that treasure!")
								call OnSummonNovember2012
						endif
					endif

					if $Now_Hour == 13
						if $Now_Minute == 9
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
						endif
					endif

					if $Now_Hour == 13
						if $Now_Minute == 10
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped in the Sea of Atlantis in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("screen", "server", -1, "In 5 minutes, the last chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped into the Sea of Atlantis in Realm 6! Quick, heroes: go and collect that treasure!")
								call OnSummonNovember2012
						endif
					endif

					if $Now_Hour == 13
						if $Now_Minute == 14
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
						endif
					endif

					if $Now_Hour == 13
						if $Now_Minute == 15
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped in the Sea of Atlantis in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped into the Sea of Atlantis in Realm 6! Quick, heroes: go and collect that treasure!")
								call OnSummonNovember2012
						endif
					endif

					if $Now_Hour == 19
						if $Now_Minute == 50
							BC("screen", "server", -1, "In 10 minutes, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							BC("chat", "server", -1, "In 10 minutes, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
						endif
					endif

					if $Now_Hour == 19
						if $Now_Minute == 55
							BC("screen", "server", -1, "In 5 minutes, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							BC("chat", "server", -1, "In 5 minutes, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
						endif
					endif

					if $Now_Hour == 19
						if $Now_Minute == 59
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
						endif
					endif

					if $Now_Hour == 20
						if $Now_Minute == 0
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped in the Sea of Atlantis in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("screen", "server", -1, "In 5 minutes, a second chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped into the Sea of Atlantis in Realm 6! Quick, heroes: go and collect that treasure!")
								call OnSummonNovember2012
						endif
					endif

					if $Now_Hour == 20
						if $Now_Minute == 4
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
						endif
					endif

					if $Now_Hour == 20
						if $Now_Minute == 5
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped in the Sea of Atlantis in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("screen", "server", -1, "In 5 minutes, a third chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped into the Sea of Atlantis in Realm 6! Quick, heroes: go and collect that treasure!")
								call OnSummonNovember2012
						endif
					endif

					if $Now_Hour == 20
						if $Now_Minute == 9
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
						endif
					endif

					if $Now_Hour == 20
						if $Now_Minute == 10
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped in the Sea of Atlantis in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("screen", "server", -1, "In 5 minutes, the last chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped into the Sea of Atlantis in Realm 6! Quick, heroes: go and collect that treasure!")
								call OnSummonNovember2012
						endif
					endif

					if $Now_Hour == 20
						if $Now_Minute == 14
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
						endif
					endif

					if $Now_Hour == 20
						if $Now_Minute == 15
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped in the Sea of Atlantis in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped into the Sea of Atlantis in Realm 6! Quick, heroes: go and collect that treasure!")
								call OnSummonNovember2012
						endif
					endif

				endif
			endif
		endif

}

		function OnNov2012Kind2(){

		$Now_Year = GetSystemTime( "year" )
		$Now_Month = GetSystemTime( "month" )
		$Now_Mday =  GetSystemTime( "mday" )
		$Now_Minute =  GetSystemTime( "minute")
		$Now_Hour =  GetSystemTime( "hour" )
		$Line = GetServerLineID()

		$monthadd = $Now_Month * 100
		$Now_Time = $monthadd + $Now_Mday

		if $Now_Year == 2012
			if $Now_Time >= 1211
				if $Now_Time <= 1231

					if $Now_Hour == 12
						if $Now_Minute == 50
							BC("screen", "server", -1, "In 10 minutes, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							BC("chat", "server", -1, "In 10 minutes, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
						endif
					endif

					if $Now_Hour == 12
						if $Now_Minute == 55
							BC("screen", "server", -1, "In 5 minutes, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							BC("chat", "server", -1, "In 5 minutes, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
						endif
					endif

					if $Now_Hour == 12
						if $Now_Minute == 59
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
						endif
					endif

					if $Now_Hour == 13
						if $Now_Minute == 0
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped into the Great Abyss in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("screen", "server", -1, "In 5 minutes, a second chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped into the Great Abyss in Realm 6! Quick, heroes: go and collect that treasure!")
								call OnSummonNovember2012
						endif
					endif

					if $Now_Hour == 13
						if $Now_Minute == 4
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
						endif
					endif

					if $Now_Hour == 13
						if $Now_Minute == 5
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped into the Great Abyss in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("screen", "server", -1, "In 5 minutes, a third chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped into the Great Abyss in Realm 6! Quick, heroes: go and collect that treasure!")
								call OnSummonNovember2012
						endif
					endif

					if $Now_Hour == 13
						if $Now_Minute == 9
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
						endif
					endif

					if $Now_Hour == 13
						if $Now_Minute == 10
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped into the Great Abyss in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("screen", "server", -1, "In 5 minutes, the last chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped into the Great Abyss in Realm 6! Quick, heroes: go and collect that treasure!")
								call OnSummonNovember2012
						endif
					endif

					if $Now_Hour == 13
						if $Now_Minute == 14
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
						endif
					endif

					if $Now_Hour == 13
						if $Now_Minute == 15
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped into the Great Abyss in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped into the Great Abyss in Realm 6! Quick, heroes: go and collect that treasure!")
								call OnSummonNovember2012
						endif
					endif

					if $Now_Hour == 19
						if $Now_Minute == 50
							BC("screen", "server", -1, "In 10 minutes, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							BC("chat", "server", -1, "In 10 minutes, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
						endif
					endif

					if $Now_Hour == 19
						if $Now_Minute == 55
							BC("screen", "server", -1, "In 5 minutes, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							BC("chat", "server", -1, "In 5 minutes, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
						endif
					endif

					if $Now_Hour == 19
						if $Now_Minute == 59
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
						endif
					endif

					if $Now_Hour == 20
						if $Now_Minute == 0
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped into the Great Abyss in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("screen", "server", -1, "In 5 minutes, a second chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped into the Great Abyss in Realm 6! Quick, heroes: go and collect that treasure!")
								call OnSummonNovember2012
						endif
					endif

					if $Now_Hour == 20
						if $Now_Minute == 4
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
						endif
					endif

					if $Now_Hour == 20
						if $Now_Minute == 5
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped into the Great Abyss in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("screen", "server", -1, "In 5 minutes, a third chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped into the Great Abyss in Realm 6! Quick, heroes: go and collect that treasure!")
								call OnSummonNovember2012
						endif
					endif

					if $Now_Hour == 20
						if $Now_Minute == 9
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
						endif
					endif

					if $Now_Hour == 20
						if $Now_Minute == 10
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped into the Great Abyss in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("screen", "server", -1, "In 5 minutes, the last chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped into the Great Abyss in Realm 6! Quick, heroes: go and collect that treasure!")
								call OnSummonNovember2012
						endif
					endif

					if $Now_Hour == 20
						if $Now_Minute == 14
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
						endif
					endif

					if $Now_Hour == 20
						if $Now_Minute == 15
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped into the Great Abyss in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped into the Great Abyss in Realm 6! Quick, heroes: go and collect that treasure!")
								call OnSummonNovember2012
						endif
					endif

				endif
			endif
		endif

}


//-----------------November2012????--------------
		function OnSummonNovember2012(){

		$Now_Minute =  GetSystemTime( "minute")
		$Now_Hour =  GetSystemTime( "hour" )
		$Now_Mday =  GetSystemTime( "mday" )
		$Line = GetServerLineID()

		$Kind = $Now_Mday % 3

		//0 ??? 119
		if $Kind == 0

			if $Line == 6

				BC("screen","map",119,"The Celestial Lord's Treasure has dropped in the Dragon Emperor's Catacomb! Quick, heroes: go and collect that treasure!")

				BC("chat","map",119,"The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped in the Dragon Emperor's Catacomb! Quick, heroes: go and collect that treasure!")

				//??? 11979
				$time1 = 0
				while $time1 < 9
					$time1 = $time1 + 1
					$mapX = RandomNumber(156,242)
					$mapY = RandomNumber(63,175)
					$monsterID_1 = 11979
					$mapID_1 = 119
					AddMonsterByFloat($monsterID_1,1,$mapID_1,$mapX,$mapY,1)
				endwhile

				$time2 = 0
				while $time2 < 4
					$time2 = $time2 + 1
					$mapX = RandomNumber(185,258)
					$mapY = RandomNumber(205,248)
					$monsterID_1 = 11979
					$mapID_1 = 119
					AddMonsterByFloat($monsterID_1,1,$mapID_1,$mapX,$mapY,1)
				endwhile

				$time3 = 0
				while $time3 < 12
					$time3 = $time3 + 1
					$mapX = RandomNumber(51,171)
					$mapY = RandomNumber(119,231)
					$monsterID_1 = 11979
					$mapID_1 = 119
					AddMonsterByFloat($monsterID_1,1,$mapID_1,$mapX,$mapY,1)
				endwhile

				// ??? 11980
				$time11 = 0
				while $time11 < 27
					$time11 = $time11 + 1
					$mapX = RandomNumber(156,242)
					$mapY = RandomNumber(63,175)
					$monsterID_1 = 11980
					$mapID_1 = 119
					AddMonsterByFloat($monsterID_1,1,$mapID_1,$mapX,$mapY,1)
				endwhile

				$time12 = 0
				while $time12 < 12
					$time12 = $time12 + 1
					$mapX = RandomNumber(185,258)
					$mapY = RandomNumber(205,248)
					$monsterID_1 = 11980
					$mapID_1 = 119
					AddMonsterByFloat($monsterID_1,1,$mapID_1,$mapX,$mapY,1)
				endwhile

				$time13 = 0
				while $time13 < 36
					$time13 = $time13 + 1
					$mapX = RandomNumber(51,171)
					$mapY = RandomNumber(119,231)
					$monsterID_1 = 11980
					$mapID_1 = 119
					AddMonsterByFloat($monsterID_1,1,$mapID_1,$mapX,$mapY,1)
				endwhile

			endif

		endif

		if $Kind == 1

			if $Line == 6

				BC("screen","map",86,"The Celestial Lord's Treasure has dropped in the Sea of Atlantis! Quick, heroes: go and collect that treasure!")

				BC("chat","map",86,"The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped into the Sea of Atlantis! Quick, heroes: go and collect that treasure!")

				//??? 11979
				$time1 = 0
				while $time1 < 25
					$time1 = $time1 + 1
					$mapX = RandomNumber(100,242)
					$mapY = RandomNumber(85,214)
					$monsterID_1 = 11979
					$mapID_1 = 86
					AddMonsterByFloat($monsterID_1,1,$mapID_1,$mapX,$mapY,1)
				endwhile

				// ??? 11980
				$time11 = 0
				while $time11 < 75
					$time11 = $time11 + 1
					$mapX = RandomNumber(100,242)
					$mapY = RandomNumber(85,214)
					$monsterID_1 = 11980
					$mapID_1 = 86
					AddMonsterByFloat($monsterID_1,1,$mapID_1,$mapX,$mapY,1)
				endwhile

			endif

		endif

		if $Kind == 2

			if $Line == 6

				BC("screen","map",87,"The Celestial Lord's Treasure has dropped into the Great Abyss! Quick, heroes: go and collect that treasure!")

				BC("chat","map",87,"The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped into the Great Abyss! Quick, heroes: go and collect that treasure!")

				//??? 11979
				$time1 = 0
				while $time1 < 10
					$time1 = $time1 + 1
					$mapX = RandomNumber(78,172)
					$mapY = RandomNumber(37,122)
					$monsterID_1 = 11979
					$mapID_1 = 87
					AddMonsterByFloat($monsterID_1,1,$mapID_1,$mapX,$mapY,1)
				endwhile

				$time2 = 0
				while $time2 < 12
					$time2 = $time2 + 1
					$mapX = RandomNumber(65,140)
					$mapY = RandomNumber(145,236)
					$monsterID_1 = 11979
					$mapID_1 = 87
					AddMonsterByFloat($monsterID_1,1,$mapID_1,$mapX,$mapY,1)
				endwhile

				$time3 = 0
				while $time3 < 3
					$time3 = $time3 + 1
					$mapX = RandomNumber(194,248)
					$mapY = RandomNumber(181,238)
					$monsterID_1 = 11979
					$mapID_1 = 87
					AddMonsterByFloat($monsterID_1,1,$mapID_1,$mapX,$mapY,1)
				endwhile

				// ??? 11980
				$time11 = 0
				while $time11 < 30
					$time11 = $time11 + 1
					$mapX = RandomNumber(78,172)
					$mapY = RandomNumber(37,122)
					$monsterID_1 = 11980
					$mapID_1 = 87
					AddMonsterByFloat($monsterID_1,1,$mapID_1,$mapX,$mapY,1)
				endwhile

				$time12 = 0
				while $time12 < 36
					$time12 = $time12 + 1
					$mapX = RandomNumber(65,140)
					$mapY = RandomNumber(145,236)
					$monsterID_1 = 11980
					$mapID_1 = 87
					AddMonsterByFloat($monsterID_1,1,$mapID_1,$mapX,$mapY,1)
				endwhile

				$time13 = 0
				while $time13 < 9
					$time13 = $time13 + 1
					$mapX = RandomNumber(194,248)
					$mapY = RandomNumber(181,238)
					$monsterID_1 = 11980
					$mapID_1 = 87
					AddMonsterByFloat($monsterID_1,1,$mapID_1,$mapX,$mapY,1)
				endwhile

			endif

		endif

}

//------------November2012????------------------------
