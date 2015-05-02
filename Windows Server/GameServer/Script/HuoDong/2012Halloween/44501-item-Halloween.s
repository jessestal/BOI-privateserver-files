	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2012-10-15
	//		Author：曹楚蒨
	//		TaskName：万圣节活动item-万圣节糖果
	//		TaskID：44501-item-Halloween.s
	//
	//****************************************
	
	
//********打开获得经验***********************
function OnUseItem(){
	
		$result = SubPlayerInfo( -1, "item", 44501, 1 )
		//删除成功的话
		
		if $result != 0
		  return
			
		endif
		//加经验
		$lv = GetPlayerInfo ( -1 , "level" )
		$lv2 = $lv * $lv
		$a = $lv2 * 10
		$b = $lv * 4
		$c = $b - 76
		$d = $a * $c
		$exp = $d / 100
    $Exp = $exp * 3 
	
		
		//增加天魂值
		//标准天魂值 = 天域等级^2+0.6*天域等级+1000
		//最大天魂值 = 标准天魂值 * 0.333
		$fieldlevel = GetFieldLevel(-1)
		$godexp = $fieldlevel * $fieldlevel
		$b = $fieldlevel * 6
		$b = $b / 10
		$godexp = $godexp + $b
		$godexp = $godexp + 1000
		$godexp = $godexp / 3
		$Godexp = $godexp * 3
	
		
				if $lv > 10
					AddPlayerInfo( -1 , "exp" , $Exp )
				else
					AddPlayerInfo( -1 , "exp" , 100 )
				endif
				
				if $fieldlevel > 0
					AddFieldExp( -1 , $Godexp )
				endif
				
      PlayEffect(-1,"common\Yanhua\tx_aixin\tx_aixin.ini")
      
				
	}
	
	