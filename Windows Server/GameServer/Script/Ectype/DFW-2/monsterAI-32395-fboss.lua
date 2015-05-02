 ------------------------------ 
 --  Copyright:PERFECT WORLD  
 --  Modified:2012  
 --  Author:???  
 --  TaskName: 6???? 
 ------------------------------ 
	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
--???0--start-??
		if nIndex == 0 then
			a=AI:GetArray(2)
			a=a+1
	---		AI:ScreenText("GUID:03890000000",2)
      HP = AI:GetHP()
      HPMAX = AI:GetHPMax()
      hppct = HP/HPMAX*100
			if a <10 then
			  if hppct<80 then
			    AI:ScreenText("Tremble before me, mere human. You should not be here!",1)
			    AI:AddSkill(2182,1)
					AI:UseSkill(2182,1)
					recoverHP = HPMAX / 100 * 20
					AI:RestoreHPInstant(recoverHP)
					AI:SetArray(2,10)
				 end
			else
	    		if a <20 then
	    		  if hppct<50 then
	    		    AI:ScreenText("I will send my ancestors to haunt you!",1)
	    		    AI:AddSkill(2182,1)
	    				AI:UseSkill(2182,1)
	    				AI:AddSkill(2245,1)
	    				AI:UseSkill(2245,1)
	    				recoverHP = HPMAX / 100 * 50
	    				AI:RestoreHPInstant(recoverHP)
	    				AI:SetArray(2,20)
	    			 end
	    		else
	    		  if a <30 then
    			   if hppct<10 then
    			   AI:ScreenText("I will dye the sky with your blood! Reveal the true colors of this world!",1)
    			    AI:AddSkill(2182,1)
    					AI:UseSkill(2182,1)
    					recoverHP = HPMAX / 100 * 80
    					AI:RestoreHPInstant(recoverHP)
    					AI:SetArray(2,30)
    				 end
    			  end
	    		end
			end
			AI:SetArray(2,a)
		end
		--???0--------------------end
		--???1--start--?????
		if nIndex == 1 then
			a=AI:GetArray(4)
			HP=AI:GetTargetHP()
			HPMAX=AI:GetTargetHPMax()
			HPL=HPMAX*80/100
	-----		 AI:Say("GUID:03890000004")
			if a <4 then
			if HP>HPL then
			    AI:ScreenText("You want to take my sanctuary? I will fight you for it!",1)
			    AI:AddSkill(2522,1)
					AI:UseSkill(2522,1)
			    AI:AddSkill(2374,1)
					AI:UseSkill(2374,1)
					a=a+1
					AI:SetArray(4,a)
			end
			end
		end
		--???1--------------------end
		
		--???2--start--????
		if nIndex == 2 then
		------	 AI:Say("GUID:03890000006")
       
				rand = math.random(0,3)
				if rand == 1 then
				AI:Say("This is my sacred home! Do not disturb me!")
					AI:AddSkill(2243,1)
					AI:UseSkill(2243,1)
				end
				if rand == 2 then
				AI:Say("You dare to challenge my sacred rite?!")
					AI:AddSkill(2239,1)
					AI:UseSkill(2239,1)
				end
				if rand == 3 then
				AI:Say("We have yearned for a blood red sky!")
					AI:AddSkill(2189,1)
					AI:UseSkill(2189,1)
				end

		end
		--???2--------------------end
		--------???3
		if nIndex == 3 then
		 a=AI:GetArray(3)
	------	  AI:Say("GUID:03890000010")
		 if a==0 then
		 if HP < HPMAX then
			  AI:Say("Who are you?!")
			  a=a+1
			  AI:SetArray(3,a)
			end
		 end
		 if a ==1 then
			if HP < HPMAX * 0.2 then
           AI:Say("Why have you come? Do you wish to die?") 
            AI:AddSkill(2182,3)
						AI:UseSkill(2182,3)
						AI:SummonMonster(55297, 1)
						a=a+1
						AI:SetArray(3,a)

       end
      end
		end
		---4end		
	end
	--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
			-----------------------------------------------------------normal start

 			a = AI:GetArray(1)
			if a == 0 then
	

				AI:SetTimer(0,1000,9999)

				AI:SetTimer(1,5000,200)

				AI:SetTimer(2,5000,200) 

				AI:SetTimer(3,1000,9999)

				AI:SetArray(1,1)
			end

	end
	--functionEvent_ThinkingEND
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)

		AI:DelTimer(0)
		AI:DelTimer(1)
		AI:DelTimer(2)
		AI:DelTimer(3)

	end
