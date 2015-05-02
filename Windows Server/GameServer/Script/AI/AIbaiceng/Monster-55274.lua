	---------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/10/10
	--		Author:???
	--		Class:	Monster-55274.lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0 then
			AI:Say("My hammer shall judge!")
			AI:PlayAction("skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini" , 0, 1)
			AI:PlayAction( "specialidle" , 2000 ,0 )
			AI:AddSkill(2217,1)
			AI:UseSkill(2217,1)
		end
	
		if nIndex == 1 then
			AI:AddSkill(2216,1)
			AI:UseSkill(2216,1)
		end
		
		if nIndex == 5 then
			map_id = AI:GetMapID()
			xx = AI:GetPosX()
			yy = AI:GetPosY()
			--10?
			if map_id > 15099 then
				if map_id < 16101 then
					AI:SummonSingleLevelMonster( 55287, 91, 125 )
					AI:SummonSingleLevelMonster( 55287, 91, 125 )
					AI:SummonSingleLevelMonster( 55287, 91, 125 )
					AI:SummonSingleLevelMonster( 55287, 91, 125 )
				end
			end
			--20?
			if map_id > 16100 then
				if map_id < 17101	then
					AI:SummonSingleLevelMonster( 55287, 92, 125 )
					AI:SummonSingleLevelMonster( 55287, 92, 125 )
					AI:SummonSingleLevelMonster( 55287, 92, 125 )
					AI:SummonSingleLevelMonster( 55287, 92, 125 )
				end
			end
			--30?
			if map_id > 17100 then
				if map_id < 18101 then
					AI:SummonSingleLevelMonster( 55287, 93, 125 )
					AI:SummonSingleLevelMonster( 55287, 93, 125 )
					AI:SummonSingleLevelMonster( 55287, 93, 125 )
					AI:SummonSingleLevelMonster( 55287, 93, 125 )
				end
			end
			--40?
			if map_id > 18100 then
				if map_id < 19101 then
					AI:SummonSingleLevelMonster( 55287, 94, 125 )
					AI:SummonSingleLevelMonster( 55287, 94, 125 )
					AI:SummonSingleLevelMonster( 55287, 94, 125 )
					AI:SummonSingleLevelMonster( 55287, 94, 125 )
				end
			end
			--50?
			if map_id > 19100 then
				if map_id < 20101 then 
					AI:SummonSingleLevelMonster( 55287, 95, 125 )
					AI:SummonSingleLevelMonster( 55287, 95, 125 )
					AI:SummonSingleLevelMonster( 55287, 95, 125 )
					AI:SummonSingleLevelMonster( 55287, 95, 125 )
				end
			end
			--60?
			if map_id > 20100 then 
				if map_id < 21101 then 
					AI:SummonSingleLevelMonster( 55287, 96, 125 )
					AI:SummonSingleLevelMonster( 55287, 96, 125 )
					AI:SummonSingleLevelMonster( 55287, 96, 125 )
					AI:SummonSingleLevelMonster( 55287, 96, 125 )
				end
			end
		end
	end
	
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		t = AI:HaveAttackTarget()
 		HP = AI:GetHP()
    HPMAX = AI:GetHPMax()
    a = AI:GetArray(1)
		if t == false then
					if a > 0 then
						if HP == HPMAX then
		    				AI:DelTimer(0)
		    				AI:DelTimer(1)
		    				AI:DelTimer(2)
		    				AI:DelTimer(3)
		    				AI:DelTimer(4)
		    				AI:DelTimer(5)
		    				AI:SetArray(1,0)
		    		end
	    		end
    else	
			if a == 0 then
				if HP < HPMAX then
					AI:Say("May the ground shatter below your feet!")
					AI:PlayAction("skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini" , 0, 1)
					AI:PlayAction( "specialidle" , 2000 ,0 )
					AI:AddSkill(2217,1)
					AI:UseSkill(2217,1)
					AI:AddSkill(2216,1)
					AI:UseSkill(2216,1)
					AI:SetTimer(0,20000,65535)
					AI:SetTimer(1,50000,65535)
					AI:SetTimer(5,5000,10)
					AI:SetArray(1,2)
				end
			end
		end
	end