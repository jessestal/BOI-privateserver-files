	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-8
	//		Author:???
	//		TaskName:????
	//		TaskID:
	//
	//****************************************

	function OnDead(){

		$ectype_id = GetEctypeID(-1, 561)
		$playerid = GetPlayerID()
		$guildid = GetPlayerInfo($playerid,"guildid")
		
		$xx1 = 164
		$yy1 = 147
		AddMonsterByFloat(53243,1,$ectype_id,$xx1,$yy1,0)
		$xx1 = 164
		$yy1 = 160
		AddMonsterByFloat(53243,1,$ectype_id,$xx1,$yy1,0)
		$xx1 = 158
		$yy1 = 153
		AddMonsterByFloat(53243,1,$ectype_id,$xx1,$yy1,0)
		
		
		SetGlobalVar(137,9)
		SetGuildVar($guildid,13,999)
		SetEctypeVar($ectype_id,1,9)
		SetEctypeVar($ectype_id,15,5)
		
		
		#name = GetPlayerInfo($playerid,"name")
		#gname = GetGuildName($guildid)
		
		BC("chat","guild",$guildid,"Lord Boreas has been defeated[",#name,"! This Guild is the victor of the Throne of Boreas!")
		BC("screen","map",$ectype_id,"Lord Boreas has been defeated[",#gname," Guild member ",#name,"! Cardinal Treasures have appeared! The ",#gname," Guild is the victor of the Throne of Boreas!")
		BC("chat","map",$ectype_id,"Lord Boreas has been defeated[",#gname," Guild member ",#name,"! Cardinal Treasures have appeared! The ",#gname," Guild is the victor of the Throne of Boreas!")
		

		
		

	}