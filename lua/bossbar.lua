-- Boss Bar Object
BossBar = class('BossBar');
function BossBar:initialize()
end

function BossBar:createBossBar(title)
    self.id = EventEngine.bossbar.createBossBar(title);
end

function BossBar:removeBossBar()
    EventEngine.bossbar.removeBossBar(self.id);
end

function BossBar:setTitle(newTitle)
    EventEngine.bossbar.setTitle(self.id, newTitle);
end

function BossBar:getTitle()
    return EventEngine.bossbar.getTitle(self.id);
end

function BossBar:setProgress(progress)
    EventEngine.bossbar.setProgress(self.id, progress);
end

function BossBar:getProgress()
    return EventEngine.bossbar.getProgress(self.id);
end

function BossBar:addFlag(flag)
    EventEngine.bossbar.addFlag(self.id, flag);
end

function BossBar:hasFlag(flag)
    return EventEngine.bossbar.hasFlag(self.id, flag);
end

function BossBar:removeFlag(flag)
    EventEngine.bossbar.removeFlag(self.id, flag);
end

function BossBar:setStyle(style)
    EventEngine.bossbar.setStyle(self.id, style);
end

function BossBar:setColour(colour)
    EventEngine.bossbar.setColour(self.id, colour);
end

function BossBar:addPlayer(player)
    EventEngine.bossbar.addPlayer(self.id, player);
end

function BossBar:removePlayer(player)
    EventEngine.bossbar.removePlayer(self.id, player);
end

function BossBar:removeAllPlayers()
    EventEngine.bossbar.removeAllPlayers(self.id);
end

function BossBar:getPlayerList()
    return EventEngine.bossbar.getPlayerList(self.id);
end

function BossBar:setVisible(isVisible)
    EventEngine.bossbar.setVisible(self.id, isVisible);
end

function BossBar:isVisible()
    return EventEngine.bossbar.isVisible(self.id);
