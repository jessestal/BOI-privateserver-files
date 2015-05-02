 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2013  
 //  Author:???  
 //  TaskName: ?????? 
 //****************************  
function OnUseItem(){


  //???????
  $itemid = GetItemID()
  $del_count = SubPlayerInfo( -1, "item", $itemid, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif


  //---------?????????------------62061????
  	#name = GetPlayerInfo( -1, "name" )
//		AddPlayerInfo( -1, "prename", 19912 )
    AddPlayerInfo(-1, "item", 62061, 1 )
		AddPlayerInfo( -1, "prename", 19916 )
		PlayEffect(-1, "common\Yanhua\tx_xuanli3\tx_xuanli3.ini" )
		BC( "screen", "player", -1, "Received the Prefix Enchanting.")
		BC( "scrollbar", "servergroup", -1, "Player",#name,"ranked top 2 on the Charisma ranking list during the Valentine's Day Event, and was bestowed the one-of-a-kind title: Enchanting!")
		BC( "scrollbar", "servergroup", -1, "Player",#name,"ranked top 2 on the Charisma ranking list during the Valentine's Day Event, and obtained the Mount Night's Romance!")
  
}