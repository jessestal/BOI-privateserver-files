	------------------------------------------
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2010/08/14
	--		Author:??
	--		AIName:BossAI.lua
	--		AIID:BossAI?v1.0
	--
	------------------------------------------
	
	--??AI??,AI??????AI??,nIndex?????????,tEvents?????????
	--tEvents??:{{"GUID:02621000000"(????????-1),"GUID:02621000001"(?????????-1),{{???????,???????}...}(???????,???-1),{{?????ID,???????,?????X??(??????-1),?????Y??(??????-1)}...}(???????,???-1)},...}
	--tEvents??:{ {"GUID:02621000002" , -1 , {{2027,1},{8032,1},{8033,1}} , {51795,100,120}} , {"GUID:02621000003" , -1 , -1 , -1} }
	function TimerAI( AI , nIndex , tEvents )
		local n = 0
		while n < table.getn(tEvents) do
			if nIndex == n then
				if tEvents[n+1][1] ~= -1 then
					AI:Say(tEvents[n+1][1])
				end
				if  tEvents[n+1][2] ~= -1 then
					AI:PlayEffect(tEvents[n+1][2])
				end
				if tEvents[n+1][3] ~= -1 then
					if type(tEvents[n+1][3][1]) == "table" then
						local j = 0
						while j < table.getn(tEvents[n+1][3]) do
							AI:AddSkill(tEvents[n+1][3][j+1][1],tEvents[n+1][3][j+1][2])
							AI:UseSkill(tEvents[n+1][3][j+1][1],tEvents[n+1][3][j+1][2])
							j = j + 1
						end
					else
						AI:AddSkill(tEvents[n+1][3][1],tEvents[n+1][3][2])
            			AI:UseSkill(tEvents[n+1][3][1],tEvents[n+1][3][2])
            		end
            	end
            	if tEvents[n+1][4] ~= -1 then
					if type(tEvents[n+1][4][1]) == "table" then
						local j = 0
						while j < table.getn(tEvents[n+1][4]) do
		            		if tEvents[n+1][4][j+1][3] == -1 then
		            			tEvents[n+1][4][j+1][3] = AI:GetPosX()
		            		end
		            		if tEvents[n+1][4][j+1][4] == -1 then
		            			tEvents[n+1][4][j+1][4] = AI:GetPosY()
		            		end
							local k = 0
							while k < tEvents[n+1][4][j+1][2] do
								AI:SummonMonsterByPos(tEvents[n+1][4][j+1][1], tEvents[n+1][4][j+1][3] , tEvents[n+1][4][j+1][4] )
								k = k + 1
							end
							j = j + 1
						end
					else
						if tEvents[n+1][4][3] == -1 then
	            			tEvents[n+1][4][3] = AI:GetPosX()
	            		end
	            		if tEvents[n+1][4][4] == -1 then
	            			tEvents[n+1][4][4] = AI:GetPosY()
	            		end
						local k = 0
						while k < tEvents[n+1][4][2] do
							AI:SummonMonsterByPos(tEvents[n+1][4][1], tEvents[n+1][4][3] , tEvents[n+1][4][4] )
							k = k + 1
						end
            		end
            	end
			end
			n = n + 1
		end
	end
	
	--????AI??
	--nArrayNum ?????????????
	--tEvents??:{{"GUID:02621000004","GUID:02621000005"(????????-1),"GUID:02621000006"(?????????-1),{{???????,???????}...}(???????,???-1),{{?????ID,???????,?????X??,?????Y??}...}(???????,???-1),{{?????????,???????,???????}...}(???????,???-1),...}
	--tEvents??:?ClassDemo.lua
	function HpAI( AI , nArrayNum , tEvents )
		local bTarget = AI:HaveAttackTarget()
	    if bTarget == false then
	    	local n = 0
	    	while n < table.getn(tEvents) do
	    		if tEvents[n+1][6] ~= -1 then
	    			if type(tEvents[n+1][6][1]) == "table" then
    					local j = 0
						while j < table.getn(tEvents[n+1][6]) do
							AI:DelTimer(tEvents[n+1][6][j+1][1])
							j = j + 1
						end   			
	        		else
	        			AI:DelTimer(tEvents[n+1][6][1])
	        		end
	        	end
	        	n = n + 1
	        	AI:SetArray(nArrayNum,0)
	        end
	    else
	    	local playHP = AI:GetHP()
	    	local nStatus = AI:GetArray(nArrayNum)
			local n = 0
			while n < table.getn(tEvents) do
				if nStatus == n then
					if playHP < tEvents[n+1][1] then
						if tEvents[n+1][2] ~= -1 then
							AI:Say(tEvents[n+1][2])
						end
						if  tEvents[n+1][3] ~= -1 then
							AI:PlayEffect(tEvents[n+1][3])
							AI:PlayEffect(tEvents[n+1][3])
						end
						if tEvents[n+1][4] ~= -1 then
							if type(tEvents[n+1][4][1]) == "table" then
								local j = 0
								while j < table.getn(tEvents[n+1][4]) do
									AI:AddSkill(tEvents[n+1][4][j+1][1],tEvents[n+1][4][j+1][2])
									AI:UseSkill(tEvents[n+1][4][j+1][1],tEvents[n+1][4][j+1][2])
									AI:Say( j )
									j = j + 1
								end
							else
								AI:AddSkill(tEvents[n+1][4][1],tEvents[n+1][4][2])
		            			AI:UseSkill(tEvents[n+1][4][1],tEvents[n+1][4][2])
		            		end
		            	end
		            	if tEvents[n+1][5] ~= -1 then
							if type(tEvents[n+1][5][1]) == "table" then
								local j = 0
								while j < table.getn(tEvents[n+1][5]) do
									if tEvents[n+1][5][j+1][3] == -1 then
				            			tEvents[n+1][5][j+1][3] = AI:GetPosX()
				            		end
				            		if tEvents[n+1][5][j+1][4] == -1 then
				            			tEvents[n+1][5][j+1][4] = AI:GetPosY()
				            		end
									local k = 0
									while k < tEvents[n+1][5][j+1][2] do
										AI:SummonMonsterByPos(tEvents[n+1][5][j+1][1], tEvents[n+1][5][j+1][3] , tEvents[n+1][5][j+1][4] )
										k = k + 1
									end
									j = j + 1
								end
							else
								if tEvents[n+1][5][3] == -1 then
			            			tEvents[n+1][5][3] = AI:GetPosX()
			            		end
			            		if tEvents[n+1][5][4] == -1 then
			            			tEvents[n+1][5][4] = AI:GetPosY()
			            		end
								local k = 0
								while k < tEvents[n+1][5][2] do
									AI:SummonMonsterByPos(tEvents[n+1][5][1], tEvents[n+1][5][3] , tEvents[n+1][5][4] )
									k = k + 1
								end
		            		end
		            	end
		            	if tEvents[n+1][6] ~= -1 then
							if type(tEvents[n+1][6][1]) == "table" then
								local j = 0
								while j < table.getn(tEvents[n+1][6]) do
									AI:SetTimer(tEvents[n+1][6][j+1][1],tEvents[n+1][6][j+1][2],tEvents[n+1][6][j+1][3])
									j = j + 1
								end
							else
								AI:SetTimer(tEvents[n+1][6][1],tEvents[n+1][6][2],tEvents[n+1][6][3])
		            		end
		            	end
		            	AI:SetArray(nArrayNum,n+1)
					end
				end
				n = n + 1
			end
		end
	end
	
	--??????????AI???
	--tEvents??:{????,"GUID:02621000007"(????????-1),"GUID:02621000008"(?????????-1),{{???????,???????}...}(???????,???-1),{{?????ID,???????,?????X??,?????Y??}...}(???????,???-1),????(-1????,1???,2?????)}
	function LessDistanceAI( AI , tEvents )
		local bTarget = AI:HaveAttackTarget() --????
	    if bTarget == true then
			local targetDistance = AI:GetTargetDistance() --???????????
			if targetDistance <= tEvents[1] then
				if tEvents[2] ~= -1 then
					AI:Say(tEvents[2])
				end
				if  tEvents[3] ~= -1 then
					AI:PlayEffect(tEvents[3])
				end
				if tEvents[4] ~= -1 then
					if type(tEvents[4][1]) == "table" then
						local j = 0
						while j < table.getn(tEvents[4]) do
							AI:AddSkill(tEvents[4][j+1][1],tEvents[4][j+1][2])
							AI:UseSkill(tEvents[4][j+1][1],tEvents[4][j+1][2])
							j = j + 1
						end
					else
						AI:AddSkill(tEvents[4][1],tEvents[4][2])
            			AI:UseSkill(tEvents[4][1],tEvents[4][2])
            		end
            	end
            	if tEvents[5] ~= -1 then
					if type(tEvents[5][1]) == "table" then
						local j = 0
						while j < table.getn(tEvents[5]) do
							if tEvents[5][j+1][3] == -1 then
		            			tEvents[5][j+1][3] = AI:GetPosX()
		            		end
		            		if tEvents[5][j+1][4] == -1 then
		            			tEvents[5][j+1][4] = AI:GetPosY()
		            		end
							local k = 0
							while k < tEvents[5][j+1][2] do
								AI:SummonMonsterByPos(tEvents[5][j+1][1], tEvents[5][j+1][3] , tEvents[5][j+1][4] )
								k = k + 1
							end
							j = j + 1
						end
					else
						if tEvents[5][3] == -1 then
	            			tEvents[5][3] = AI:GetPosX()
	            		end
	            		if tEvents[5][4] == -1 then
	            			tEvents[5][4] = AI:GetPosY()
	            		end
						local k = 0
						while k < tEvents[5][2] do
							AI:SummonMonsterByPos(tEvents[5][1], tEvents[5][3] , tEvents[5][4] )
							k = k + 1
						end
            		end
            	end
            	if tEvents[6] == 1 then
            		AI:SelfMurder()
            	elseif tEvents[6] == 2 then
            		AI:Exit()
            	end
        	end
        end	
	end
	
	--??????????AI???
	--tEvents??:{????,"GUID:02621000009"(????????-1),"GUID:02621000010"(?????????-1),{{???????,???????}...}(???????,???-1),{{?????ID,???????,?????X??,?????Y??}...}(???????,???-1),????(-1????,1???,2?????)}
	function MoreDistanceAI( AI , tEvents )
		local bTarget = AI:HaveAttackTarget() --????
	    if bTarget == true then
			local targetDistance = AI:GetTargetDistance() --???????????
			if targetDistance >= tEvents[1] then
				if tEvents[2] ~= -1 then
					AI:Say(tEvents[2])
				end
				if  tEvents[3] ~= -1 then
					AI:PlayEffect(tEvents[3])
				end
				if tEvents[4] ~= -1 then
					if type(tEvents[4][1]) == "table" then
						local j = 0
						while j < table.getn(tEvents[4]) do
							AI:AddSkill(tEvents[4][j+1][1],tEvents[4][j+1][2])
							AI:UseSkill(tEvents[4][j+1][1],tEvents[4][j+1][2])
							j = j + 1
						end
					else
						AI:AddSkill(tEvents[4][1],tEvents[4][2])
            			AI:UseSkill(tEvents[4][1],tEvents[4][2])
            		end
            	end
            	if tEvents[5] ~= -1 then
					if type(tEvents[5][1]) == "table" then
						local j = 0
						while j < table.getn(tEvents[5]) do
							if tEvents[5][j+1][3] == -1 then
		            			tEvents[5][j+1][3] = AI:GetPosX()
		            		end
		            		if tEvents[5][j+1][4] == -1 then
		            			tEvents[5][j+1][4] = AI:GetPosY()
		            		end
							local k = 0
							while k < tEvents[5][j+1][2] do
								AI:SummonMonsterByPos(tEvents[5][j+1][1], tEvents[5][j+1][3] , tEvents[5][j+1][4] )
								k = k + 1
							end
							j = j + 1
						end
					else
						if tEvents[5][3] == -1 then
	            			tEvents[5][3] = AI:GetPosX()
	            		end
	            		if tEvents[5][4] == -1 then
	            			tEvents[5][4] = AI:GetPosY()
	            		end
						local k = 0
						while k < tEvents[5][2] do
							AI:SummonMonsterByPos(tEvents[5][1], tEvents[5][3] , tEvents[5][4] )
							k = k + 1
						end
            		end
            	end
            	if tEvents[6] == 1 then
            		AI:SelfMurder()
            	elseif tEvents[6] == 2 then
            		AI:Exit()
            	end
        	end
        end	
	end