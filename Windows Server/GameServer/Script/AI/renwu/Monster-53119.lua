	---------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/03/21
	--		Author:???
	--		Class:	Monster-53119.lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
		function Event_OnTimer(nAI,nIndex, nCount)
			local AI = GetMonsterAI(nAI)
			
--			if nIndex == 0 then
--				x = AI:GetPosX()
--				y = AI:GetPosY()
--				mapid = AI:GetMapID()
--				AI:ScreenText("I haven't been idle all this time... I'm the king of rats! Come, my brothers!",2)
--				SummonMonsterByPos(53120,x+1,y,0)
--				SummonMonsterByPos(53120,x-1,y,0)
--				SummonMonsterByPos(53120,x,y+1,0)
--				SummonMonsterByPos(53120,x,y-1,0)
--			end
			
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

		    				AI:SetArray(1,0)
		    			end
		    		end
			else
		
				if a == 0 then
					if HP < HPMAX then
						AI:Say("It's a little small, but I've finally got my body back! All I need to do now is defeat you! I won't hold back!")
--						AI:SetTimer(0,40000,5)
						AI:SetArray(1,1)
					end
				end
				
				if a == 1 then
					if HP < HPMAX * 0.7 then
						AI:Say("No, I can't lose! I'm not going to be bullied by insects any longer!")
						x = AI:GetPosX()
						y = AI:GetPosY()
						mapid = AI:GetMapID()
						AI:ScreenText("I haven't been idle all this time... I'm the king of rats! Come, my brothers!",2)
						AI:SummonMonsterByPos(53120,x+1,y,0)
						AI:SummonMonsterByPos(53120,x-1,y,0)
						AI:SummonMonsterByPos(53120,x,y+1,0)
						AI:SummonMonsterByPos(53120,x,y-1,0)
						AI:SetArray(1,2)
					end
				end
				
				if a == 2 then
					if HP < HPMAX * 0.5 then
						AI:Say("You just don't let up, do you?")
						x = AI:GetPosX()
						y = AI:GetPosY()
						mapid = AI:GetMapID()
						AI:ScreenText("I haven't been idle all this time... I'm the king of rats! Come, my brothers!",2)
						AI:SummonMonsterByPos(53120,x+1,y,0)
						AI:SummonMonsterByPos(53120,x-1,y,0)
						AI:SummonMonsterByPos(53120,x,y+1,0)
						AI:SummonMonsterByPos(53120,x,y-1,0)
						AI:SetArray(1,3)
					end
				end
				
				if a == 3 then
					if HP < HPMAX * 0.2 then
						AI:Say("Master! I've served you so well, will you not help me?")
						AI:SetArray(1,4)
					end
				end
			end
		end
		
		function Event_OnDead(nAI)
			local AI = GetMonsterAI(nAI)
		
			AI:Say("No! I don't want to be a rat anymore!")
			AI:ScreenText("No! I don't want to be a rat anymore!",2)
		
		end
				