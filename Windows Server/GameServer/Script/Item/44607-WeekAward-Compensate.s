	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/12/02
	//		Author:???
	//		TaskName:44607-WeekAward-Compensate.s
	//		TaskID:????????
	//
	//****************************************


function OnUseItem(){

	//????id ???? 2592
	$AwardID = 2592
	  
  //????,????30?????
  $field = GetFieldLevel(-1)
  if $field < 25
     BC("screen", "player", -1, "You have to be at least Exalted LV30 to use this item!")
     return
  endif
  
  //??????
  $bag_count = GetPlayerInfo(-1, "nullitem", 0)
  if $bag_count < 1
     BC("screen", "player", -1, "You don't have enough space in your bag to use that!")
     BC("chat", "player", -1, "You don't have enough space in your bag to use that!")
     return
  endif
  
  //???????
  $itemID = GetItemID()
  $del_count = SubPlayerInfo( -1, "item", $itemID, 1 )
  //??????????
  if $del_count != 0
     return
  endif
  
	AddPlayerInfo(-1,"item",$AwardID,1)	

}         