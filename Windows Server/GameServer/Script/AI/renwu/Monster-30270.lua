	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/8/10
	--		Author:???
	--		Class:	.Lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex,nCount)
		local AI = GetMonsterAI(nAI)
				
		if nIndex == 0 then
			
			AI:Say("Shura's Fury!")
			AI:PlayEffect( "skill\\summon\\Xiuluodiyu\\tx_summon_xiuluodiyu_fire.ini" )
			AI:LoseHPInstant(b)
		end
		
		if nIndex == 1 then
			AI:Say("Lava Swirls--Meteor Storm!")
			AI:PlayEffect ("skill\\summon\\yanbao\\fire\\tx_summon_yanbao_fire.ini" )
			AI:LoseHPInstant(b)
		end
		
		if nIndex ==  2 then
			AI:Say("Let the Power of Dark Tortoise protect me!")
			AI:PlayEffect("skill\\summon\\Xuanwuqiyue\\Fire\\tx_summon_xuanwuqiyue_Fire.ini"  )
			AI:LoseHPInstant(b)
		end
		
		if nIndex == 3 then
			AI:Say("Watch my unique skill--Efreet Destruction!")
			AI:PlayEffect("skill\\summon\\Yanmodehuimie\\Fire\\tx_summon_yanmodehuimie_fire.ini"  )
			AI:LoseHPInstant(c)
		end
		
		if nIndex == 4 then
			AI:Say("You are an admirable warrior! It's my honor to fight with you!")
		end
		
		if nIndex == 5 then
			AI:SelfMurder()
		end
	end
	
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
 		t = AI:HaveAttackTarget()
 		HP = AI:GetHP()
    HPMAX = AI:GetHPMax()
	
		b = HPMAX * 0.25
		c = HPMAX * 0.2
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
	  			AI:Say("Let's have a competition! Be careful!")
	  			AI:SetTimer(0,5000,1)
	  			AI:SetTimer(1,10000,1)
	  			AI:SetTimer(2,15000,1)
	  			AI:SetTimer(3,20000,1)
	  			AI:SetTimer(4,25000,1)
	  			AI:SetTimer(5,30000,1)
	  			AI:SetArray(1,1)
	  		end
	  	end
		end
	end
	  	
	  	