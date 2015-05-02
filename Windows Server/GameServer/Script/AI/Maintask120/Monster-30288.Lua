	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/12/14
	--		Author:???
	--		Class:	Monster-30288.Lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
			
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
			
		a = AI:GetArray(1)
		if a == 0 then
			AI:PlayAction("skill\\Monster\\boss\\shenshengzhuoshao\\fire\\tx_boss_shenshengzhuoshao_fire.ini" , 0, 1)
			rand = AI:GetRand(100)
				if rand < 21 then
				AI:ScreenText("You saw through my disguise!? I'll just have to kill you, then!",1)
				end
				
				if rand < 41 then
					if rand > 20 then
					AI:ScreenText("You can't kill what's already dead!",1)
					end
				end
					
				if rand < 61 then
					if rand > 40 then
					AI:ScreenText("Mount Olympus will be completely leveled! Don't try to stop us!",1)	
					end	
				end
				
				if rand < 81 then
					if rand > 60 then
					AI:ScreenText("We will become gods, and you will become ashes!",1)	
					end	
				end
				
				if rand > 80 then
				AI:ScreenText("Our bodies may wither and die, but our souls will never fade!",1)	
				end
			AI:SetArray(1,1)
		end
	end
			
  