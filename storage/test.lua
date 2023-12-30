local bankWorld = World:new("survival3");

local bank1_strikeLocation1 = Location:new("survival3", 19472, 61, -20755);
local bank1_strikeLocation2 = Location:new("survival3", 19472, 61, -20755);

function bank1_attempt(data)
                        local player = Player:new(data["player"]);
                        bank1_strikeLocation1:lightningStrike();
                        bank1_strikeLocation2:lightningStrike();
                        player:kill();
                end

registerHook("INTERACT", "bank1_attempt", 143, "survival3", 19470.0, 63.0, -20759.0);

