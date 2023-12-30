---------------------------------------
------------------pve portal-----------
---------------------------------------

local myWorld3 = "development";
local myWorld = "mobarena";
local current = 2;
local maxData = 2;
local blocks = {
        Location:new(myWorld3, 15025.0, 63.0, -14975.0),
        Location:new(myWorld3, 15025.0, 63.0, -14974.0),
        Location:new(myWorld3, 15025.0, 63.0, -14973.0),
        Location:new(myWorld3, 15024.0, 63.0, -14976.0),
        Location:new(myWorld3, 15024.0, 63.0, -14975.0),
        Location:new(myWorld3, 15024.0, 63.0, -14974.0),
        Location:new(myWorld3, 15024.0, 63.0, -14973.0),
        Location:new(myWorld3, 15024.0, 63.0, -14972.0),
        Location:new(myWorld3, 15023.0, 63.0, -14976.0),
        Location:new(myWorld3, 15023.0, 63.0, -14975.0),
        Location:new(myWorld3, 15023.0, 63.0, -14974.0),
        Location:new(myWorld3, 15023.0, 63.0, -14973.0),
        Location:new(myWorld3, 15023.0, 63.0, -14972.0),
        Location:new(myWorld3, 15022.0, 63.0, -14976.0),
        Location:new(myWorld3, 15022.0, 63.0, -14975.0),
        Location:new(myWorld3, 15022.0, 63.0, -14974.0),
        Location:new(myWorld3, 15022.0, 63.0, -14973.0),
        Location:new(myWorld3, 15022.0, 63.0, -14972.0),
        Location:new(myWorld3, 15021.0, 63.0, -14975.0),
        Location:new(myWorld3, 15021.0, 63.0, -14974.0),
        Location:new(myWorld3, 15021.0, 63.0, -14973.0),

};

function spawn_pve(data)
        if current == maxData then
                current = 1;
        else
                current = current + 1;
        end
        spawn_setAir();
end

function spawn_setAir()
        for index, key in ipairs(blocks) do
                key:setBlock(0, current);
        end
end

function spawn_setGlass()
        for index, key in ipairs(blocks) do
                key:setBlock(20, current);
        end
end

registerHook("INTERACT", "spawn_setAir", 143, "development", 15026.0, 64, -14974.0);
registerHook("REGION_LEAVE", "spawn_setGlass", "development-pve_dev_tp");

------------------------------------------------
------------------creative portal-----------------
--------------------------------------------------

local myWorld3 = "development";
local current = 3;
local maxData = 3;
local blocks = {
        Location:new(myWorld3, 15041.0, 63.0, -15001.0),
        Location:new(myWorld3, 15041.0, 63.0, -15000.0),
        Location:new(myWorld3, 15041.0, 63.0, -14999.0),
        Location:new(myWorld3, 15040.0, 63.0, -15002.0),
        Location:new(myWorld3, 15040.0, 63.0, -15001.0),
        Location:new(myWorld3, 15040.0, 63.0, -15000.0),
        Location:new(myWorld3, 15040.0, 63.0, -14999.0),
        Location:new(myWorld3, 15040.0, 63.0, -14998.0),
        Location:new(myWorld3, 15039.0, 63.0, -15002.0),
        Location:new(myWorld3, 15039.0, 63.0, -15001.0),
        Location:new(myWorld3, 15039.0, 63.0, -15000.0),
        Location:new(myWorld3, 15039.0, 63.0, -14999.0),
        Location:new(myWorld3, 15039.0, 63.0, -14998.0),
        Location:new(myWorld3, 15038.0, 63.0, -15002.0),
        Location:new(myWorld3, 15038.0, 63.0, -15001.0),
        Location:new(myWorld3, 15038.0, 63.0, -15000.0),
        Location:new(myWorld3, 15038.0, 63.0, -14999.0),
        Location:new(myWorld3, 15038.0, 63.0, -14998.0),
        Location:new(myWorld3, 15037.0, 63.0, -15001.0),
        Location:new(myWorld3, 15037.0, 63.0, -15000.0),
        Location:new(myWorld3, 15037.0, 63.0, -14999.0),

};

function spawn_creative(data)
        if current == maxData then
                current = 1;
        else
                current = current + 1;
        end
        spawn_setAir1();
end

function spawn_setAir1()
        for index, key in ipairs(blocks) do
                key:setBlock(0, current);
        end
end

function spawn_setGlass1()
        for index, key in ipairs(blocks) do
                key:setBlock(20, current);
        end
end

registerHook("INTERACT", "spawn_setAir1", 143, "development", 15042.0, 64, -15000.0);
registerHook("REGION_LEAVE", "spawn_setGlass1", "development-creative_tp");



------------------------------------------------
------------------secret shop-----------------
--------------------------------------------------

local myWorld3 = "development";
local current = 6;
local maxData = 6;
local blocks = {
        Location:new(myWorld3, 14964.0, 56.0, -15025.0),
        Location:new(myWorld3, 14964.0, 56.0, -15024.0),
        Location:new(myWorld3, 14964.0, 55.0, -15025.0),
        Location:new(myWorld3, 14964.0, 55.0, -15024.0),
        Location:new(myWorld3, 14964.0, 54.0, -15025.0),
        Location:new(myWorld3, 14964.0, 54.0, -15024.0),

};

function shop_secret(data)
        if current == maxData then
                current = 1;
        else
                current = current + 1;
        end
        shop_secret1();
end

function shop_secret1()
        for index, key in ipairs(blocks) do
                key:setBlock(0, current);
        end
end

function shop_secret2()
        for index, key in ipairs(blocks) do
                key:setBlock(1, current);
        end
end

registerHook("REGION_ENTER", "shop_secret1", "development-shop_secret_1");
registerHook("REGION_ENTER", "shop_secret2", "development-shop_secret_2");
