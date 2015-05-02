--	//****************************************
--	//
--	//		Copyright:PERFECT WORLD
--	//		Modified:2009/11/18
--	//		Author:??
--	//		TaskName:Hellgate-bible.lua
--	//		TaskID:????
--	//
--	//****************************************


	function Event_Thinking(nAI)
    	local AI = GetMonsterAI(nAI)
				t = AI:HaveAttackTarget()
				if t == true then
					x = AI:GetRand(3) 
 					y = AI:GetArray(1)
 					if y == 0 then
							if x==0 then
								AI:Say("Go to hell.")
							end
							if x==1 then
								AI:Say("Take away your dirty hands.")
							end		
							if x==2 then
								AI:Say("Live person!")
							end
							if x==3 then
								AI:Say("Fresh meat!")
							end
							if x==4 then
								AI:Say("Enjoy death.")
							end	
							if x==5 then
								AI:Say("Ah!")
							end			
							AI:SetArray(1,1)
					end
				end
		end