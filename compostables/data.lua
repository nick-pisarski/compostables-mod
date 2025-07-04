-- Wood Chips
local wood_chips_icon = "__compostables-mod__/graphics/wood-chips.png"
local wood_chips_item = {
    type = "item",
    name = "wood-chips",
    icon = wood_chips_icon,
    icon_size = 64,
    subgroup = "wood",
    order = "a",
}
local wood_chips_recipe = {
    type = "recipe",
    name = "wood-chips",
    ingredients = {
        { type = "item", name = "wood", amount = 1 },
    },
    result = "wood-chips",
    result_count = 10,
    energy_required = 1,
    category = "crafting",
}


local compost_icon = "__compostables-mod__/graphics/compost.png"
local compost_item = {
    type = "item",
    name = "compost",
    icon = compost_icon,
    icon_size = 64,
    subgroup = "compost",
    order = "a",
    stack_size = 100,
    spoil_result = "landfill",
    spoil_ticks = 600
}

-- Compost Recipes
local compost_spoilage_recipe = {
    type = "recipe",
    name = "compost",
    ingredients = {
        { type = "item",  name = "spoilage", amount = 50 },
        { type = "fluid", name = "water",    amount = 100 },
    },
    result = "compost",
    result_count = 50,
    energy_required = 1,
    category = "crafting",
}

local compost_wood_chips_recipe = {
    type = "recipe",
    name = "compost-wood-chips",
    ingredients = {
        { type = "item",  name = "wood-chips", amount = 100 },
        { type = "fluid", name = "water",      amount = 100 },
    },
    result = "compost",
    result_count = 50,
    energy_required = 1,
    category = "crafting",
}

data:extend({
    wood_chips_item,
    wood_chips_recipe,
    compost_item,
    compost_spoilage_recipe,
    compost_wood_chips_recipe,
})
