PLUGIN.name = "Stalker Faction"
PLUGIN.author = "Chouette"
PLUGIN.description = "Adds Basic Stalkers"

local CHAR = ix.meta.character

function CHAR:IsStalker()
	local faction = self:GetFaction()
	return faction == FACTION_STALKER
end

function PLUGIN:GetPlayerPainSound(client)
	if (client:GetCharacter():IsStalker()) then
		local PainStalker = {
			"npc/stalker/stalker_pain1.wav",
			"npc/stalker/stalker_pain2.wav",
			"npc/stalker/stalker_pain3.wav",
		}
		local stalker_pain = table.Random(PainStalker)
		return stalker_pain
	end
end

function PLUGIN:GetPlayerDeathSound(client)
	if (client:GetCharacter():IsStalker()) then
		return false
	end
end
