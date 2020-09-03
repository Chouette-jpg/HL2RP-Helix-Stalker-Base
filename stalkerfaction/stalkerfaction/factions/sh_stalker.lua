FACTION.name = "Stalker"
FACTION.description = "A human that has been Convicted of a crime by the Combine."
FACTION.color = Color(150, 125, 100, 255)
FACTION.isDefault = false
FACTION.runSounds = {[0] = "npc/stalker/stalker_footstep_left1.wav", [1] = "npc/stalker/stalker_footstep_right1.wav"}
FACTION.models = {
    "models/stalker.mdl",
}
function FACTION:GetDefaultName(client)
	return "UU:VICE-" .. Schema:ZeroNumber(math.random(1, 99999), 5), true
end

function FACTION:OnTransfered(client)
	local character = client:GetCharacter()

	character:SetModel(self.models[1])
end

FACTION_STALKER = FACTION.index
