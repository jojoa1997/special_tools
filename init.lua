--
--Shears
--

minetest.register_tool("special_tools:shears", {
	description = "Shears",
    inventory_image = "shears.png",
    wield_image = "shears.png",
    stack_max = 1,
	max_drop_level=3,
    tool_capabilities = {
        full_punch_interval = 1.0,
        max_drop_level=0,
        groupcaps={
            snappy={times={[3]=0.2}, maxwear=0.05, maxlevel=3},
			wool={times={[3]=0.2}, maxwear=0.05, maxlevel=3}
        }
    }
})

minetest.register_craft({
	output = 'special_tools:shears',
	recipe = {
		{'', 'default:steel_ingot', ''},
		{'default:stick', 'default:wood', 'default:steel_ingot'},
		{'', '', 'default:stick'},
	}
})


--Aliases
minetest.register_aliase("shears", "special_tools:shears")

print("special_tools loaded! by jojoa1997")
