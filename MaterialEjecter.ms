macroScript Material_Ejecter
			category: "!z209 scripts"
			tooltip: "Material Ejecter"
			buttontext: "Material Ejecter"
			Icon:#("Material_Modifiers",3)

(
rollout materialEjecter_roll "Material Ejecter 1.0" (
	
	group "Slot settings" (	
		spinner material_num "Material #:" range:[0,24,1] type:#integer
	)	

	group "Final settings" (	
		button btn_go  "Go!" width:150	
	)	
----------------------------------------------------------------------------FUNCTIONS--------------------------------------------------------------------
	fn eject_scenematerials state =
	(	
		meditMaterials[material_num.value] = Multimaterial ()	
		
		for i = 1 to sceneMaterials.count do (
			meditMaterials[material_num.value].materialList[i+1] = sceneMaterials[i]
		)
	)
		
---------------------------------------------------------------------------USER INTERFACE---------------------------------------------------------------
	on btn_go pressed do(	
		eject_scenematerials on 
	)
)

createDialog materialEjecter_roll 180 100
)