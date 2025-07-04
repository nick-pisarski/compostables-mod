-- Item Subgroups
local compostables_subgroup = {
    type = "item-subgroup",
    name = "compostables",
    group = "intermediate-products",
    order = "b",
}


-- Wood Chips
local wood_chips_icon = "__compostables__/graphics/wood-chips.png"
local wood_chips_item = {
    type = "item",
    name = "wood-chips",
    localised_name = "Wood Chips",
    subgroup = "compostables",
    icon = wood_chips_icon,
    icon_size = 64,
    order = "a[wood-chips]",
    stack_size = 100,
}
local wood_chips_recipe = {
    type = "recipe",
    name = "wood-chips",
    localised_name = "Wood Chips",
    ingredients = {
        { type = "item", name = "wood", amount = 1 },
    },
    results = {
        { type = "item", name = "wood-chips", amount = 10 },
    },
    energy_required = 1,
    category = "crafting",
}


local compost_icon = "__compostables__/graphics/compost.png"
local compost_item = {
    type = "item",
    name = "compost",
    localised_name = "Compost",
    subgroup = "compostables",
    icon = compost_icon,
    icon_size = 64,
    order = "a[compost]",
    stack_size = 100,
    spoil_result = "landfill",
    spoil_ticks = 600
}

-- Compost Recipes
local compost_spoilage_recipe = {
    type = "recipe",
    name = "compost-mixing-spoilage",
    localised_name = "Compost Mixing (Spoilage)",
    ingredients = {
        { type = "item",  name = "spoilage", amount = 10 },
        { type = "fluid", name = "water",    amount = 100 },
    },
    results = {
        { type = "item", name = "compost", amount = 10 },
    },
    energy_required = 1,
    category = "crafting-with-fluid",
}

local compost_wood_chips_recipe = {
    type = "recipe",
    name = "compost-mixing-wood-chips",
    localised_name = "Compost Mixing (Wood Chips)",
    ingredients = {
        { type = "item",  name = "wood-chips", amount = 10 },
        { type = "fluid", name = "water",      amount = 100 },
    },
    results = {
        { type = "item", name = "compost", amount = 10 },
    },
    energy_required = 1,
    category = "crafting-with-fluid",
}

data:extend({
    compostables_subgroup,
    wood_chips_item,
    wood_chips_recipe,
    compost_item,
    compost_spoilage_recipe,
    compost_wood_chips_recipe,
})
