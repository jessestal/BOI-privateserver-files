//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013/01/15
	//		Author:???
	//		TaskName:????
	//		TaskID:44624-item-hongbao.s
	//
	//****************************************


function OnUseItem(){
	
  //???????,
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 1
     BC( "screen", "player", -1, "You do not have enough space in your bag." )
     BC( "chat", "player", -1, "You do not have enough space in your bag." )
     return
  endif

  //???????
  $itemid = GetItemID()
  $del_count = SubPlayerInfo( -1, "item", $itemid, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif


  //---------?????????------------?????(888)	1	59557 44635	????(?)

  AddPlayerInfo(-1, "item", 59557, 1 ) 
  AddPlayerInfo(-1, "item", 44635, 1 ) 
  PlayEffect(-1, "common\Yanhua\tx_chunjie\tx_yanhua_chunjie_02.ini" )
  
}
