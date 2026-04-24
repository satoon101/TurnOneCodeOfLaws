-- ===========================================================================
--  Turn One Code of Laws - Gameplay Script
--  Grants Code of Laws civic on turn 1.
-- ===========================================================================

print("=== Turn One Code of Laws (Gameplay) Loading ===")

function OnPlayerTurnActivated(playerID)
    local currentTurn = Game.GetCurrentGameTurn()
    if currentTurn ~= 1 then
        return
    end

    local player = Players[playerID]
    if not player:IsHuman() then
        return
    end

    local culture = player:GetCulture()
    local civicIndex = GameInfo.Civics["CIVIC_CODE_OF_LAWS"].Index
    local cost = culture:GetCultureCost(civicIndex)
    culture:SetCulturalProgress(civicIndex, cost)
end

Events.PlayerTurnActivated.Add(OnPlayerTurnActivated)

print("=== Turn One Code of Laws (Gameplay) Loaded ===")
