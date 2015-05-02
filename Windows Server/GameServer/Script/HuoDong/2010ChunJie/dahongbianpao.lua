	------------------------------------------
	--
	--		Copyright：PERFECT WORLD
	--		Modified：2010/09/13
	--		Author：黄晨
	--		AIName：dahongbianpao.lua
	--		AIID：2010春节活动 大红鞭炮死亡
	--
	------------------------------------------
	
	function Event_Thinking(nAI)
	    local AI = GetMonsterAI(nAI)
	    
	end
	
	
	function Event_ReadSeekPos(nAI)
	    local AI = GetMonsterAI(nAI)
	    
	end
	
	function Event_ArriveSeekPos(nAI , MapID , PosX , PosY)
		local AI = GetMonsterAI(nAI)	
		
	end
	
	
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
	--AI:PlayEffect( "skill\\Monster\\yuansuhuan\\fire\\huohuan\\tx_huohuan_fire.ini" )
	--AI:PlayEffect( "common\\huodong\\xinnianlipao\\tx_xinnianlipao1.ini" )
	--AI:PlayEffect( "common\\Yanhua\\tx_bianpao\\tx_yanhua_bianpao.ini" )

	
	--死亡释放虚弱技能	
	--AI:AddSkill( 2079, 1 )
	--AI:UseSkill( 2079, 1 )
	end