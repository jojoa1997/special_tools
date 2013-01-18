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

--	
--Crowbar	
--
minetest.register_tool("special_tools:crowbar", {	
	description = "Normal Crowbar",
	inventory_image = "crowbar.png",	
	wield_image = "crowbar.png",
	stack_max = 1,
	max_drop_level=3,
	tool_capabilities = {
		full_punch_interval = 1.4,
		max_drop_level=3,
		groupcaps={
			cracky={times={[1]=3.0, [2]=3.0, [3]=0.72}, uses=10, maxlevel=3},
			crumbly={times={[1]=3.0, [2]=3.0, [3]=0.72}, uses=10, maxlevel=3},	
			snappy={times={[1]=3.0, [2]=3.0, [3]=0.72}, uses=10, maxlevel=3}	
			}
		}
	})
	
minetest.register_craft({
	output = 'special_tools:crowbar',
	recipe = {
		{'default:steel_ingot', 'default:stick', ''},
		{'', 'default:mese', ''},
		{'', 'default:stick', 'default:steel_ingot'},
	}
})

print("special_tools loaded! by jojoa1997 and Likwid H-Craft")
