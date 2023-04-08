BackEngineVehicles = {
    [`ninef`] = true,
    [`adder`] = true,
    [`vagner`] = true,
    [`t20`] = true,
    [`infernus`] = true,
    [`zentorno`] = true,
    [`reaper`] = true,
    [`comet2`] = true,
    [`jester`] = true,
    [`jester2`] = true,
    [`cheetah`] = true,
    [`cheetah2`] = true,
    [`prototipo`] = true,
    [`turismor`] = true,
    [`pfister811`] = true,
    [`ardent`] = true,
    [`nero`] = true,
    [`nero2`] = true,
    [`tempesta`] = true,
    [`vacca`] = true,
    [`bullet`] = true,
    [`osiris`] = true,
    [`entityxf`] = true,
    [`turismo2`] = true,
    [`fmj`] = true,
    [`re7b`] = true,
    [`tyrus`] = true,
    [`italigtb`] = true,
    [`penetrator`] = true,
    [`monroe`] = true,
    [`ninef2`] = true,
    [`stingergt`] = true,
    [`surfer`] = true,
    [`surfer2`] = true,
    [`comet3`] = true,
}

-- Configuration:

-- IMPORTANT: Some of these values MUST be defined as a floating point number. ie. 10.0 instead of 10
Config              = {}
Config.Paid = true
Config.Price = 750

cfg = {
	deformationMultiplier = -1,					-- À quel point le véhicule devrait-il se déformer visuellement à la suite d'une collision? Plage de valeurs de 0,0 à 10,0 où 0,0 correspond à aucune déformation et 10,0 correspond à une déformation 10x. -1 = Ne touche pas. Les dégâts visuels ne se synchronisent pas bien avec les autres joueurs.
	deformationExponent = 1.0,					-- Dans quelle mesure le paramètre de déformation du fichier de traitement doit-il être compressé vers 1.0? (Rendre les voitures plus similaires). Une valeur de 1 = pas de changement. Les valeurs inférieures compriment plus, les valeurs supérieures à 1 se développent. Ne pas mis à zéro ou négatif.
	collisionDamageExponent = 1.0,				-- Dans quelle mesure le paramètre de déformation du fichier de traitement doit-il être compressé vers 1.0? (Rendre les voitures plus similaires). Une valeur de 1 = pas de changement. Les valeurs inférieures compriment plus, les valeurs supérieures à 1 se développent. Ne pas mis à zéro ou négatif.

	damageFactorEngine = 10.0,					-- Les valeurs normales sont comprises entre 1 et 100. Plus les valeurs sont élevées, plus le véhicule est endommagé. Un bon point de départ est 10.
	damageFactorBody = 15.0,					-- Les valeurs normales sont comprises entre 1 et 100. Plus les valeurs sont élevées, plus le véhicule est endommagé. Un bon point de départ est 10.
	damageFactorPetrolTank = 32.0,				-- Les valeurs normales sont comprises entre 1 et 200. Plus les valeurs sont élevées, plus le véhicule est endommagé. Un bon point de départ est 64.
	engineDamageExponent = 0.4,					-- À quel point le paramètre d’endommagement du moteur de fichiers doit-il être compressé vers 1.0. (Rendre les voitures plus similaires). Une valeur de 1 = pas de changement. Les valeurs inférieures compriment plus, les valeurs supérieures à 1 se développent. Ne pas mettre à zéro ou en négatif.
	weaponsDamageMultiplier = 3.0,				-- Combien de dégâts le véhicule devrait-il avoir à cause des tirs d'armes? Plage 0,0 à 10,0, où 0,0 ne cause aucun dommage et 10,0 correspond à 10 fois les dégâts. -1 = Aucun dégâts.
	degradingHealthSpeedFactor = 4,				-- Vitesse de dégradation lente de la santé, mais pas d'échec. Une valeur de 10 signifie que cela prendra environ 0,25 seconde par point de santé, donc une dégradation de 800 à 305 nécessitera environ 2 minutes de conduite propre. Des valeurs plus élevées signifient une dégradation plus rapide.
	cascadingFailureSpeedFactor = 15.0,			-- Les valeurs saines sont comprises entre 1 et 100. Lorsque la santé du véhicule tombe en dessous d'un certain point, une défaillance en cascade s'installe et diminue rapidement jusqu'à la mort du véhicule. Des valeurs plus élevées signifient une défaillance plus rapide. Un bon point de départ est 8.

	degradingFailureThreshold = 450.0,			-- En dessous de cette valeur, une dégradation lente de la santé va s'installer.
	cascadingFailureThreshold = 200.0,			-- En dessous de cette valeur, l’échec en cascade de la santé sera défini
	engineSafeGuard = 150.0,					-- Valeur d'échec finale. Réglez-le trop haut et le véhicule ne fumera pas s'il est désactivé. Si le véhicule est réglé trop bas, la voiture s’enflammera d’une balle au moteur. À la santé 100, une voiture typique peut porter 3 à 4 balles au moteur avant de prendre feu.

	torqueMultiplierEnabled = true,				-- Diminuer le couple moteur car le moteur est de plus en plus endommagé

	limpMode = false,							-- Si "true", le moteur ne tombe jamais complètement en panne. Vous pourrez donc toujours vous rendre chez un mécanicien, à moins que vous ne retourniez votre véhicule et que vous empêchiez le blocage de VehiculeFlip.
	limpModeMultiplier = 0.15,					-- Le multiplicateur de couple à utiliser lorsque le véhicule est en train de boiter. Les valeurs normales sont de 0,05 à 0,25

	preventVehicleFlip = false,					-- Si "true", vous ne pouvez pas retourner un véhicule à l'envers.

	sundayDriver = true,						-- Si "true", la réponse de l'accélérateur est mise à l'échelle pour permettre une conduite lente et facile. N'empêchera pas le plein régime. Ne fonctionne pas avec les accélérateurs binaires comme un clavier. Définissez sur false pour désactiver. La fonction d'arrêt-sans-inversion et de blocage du feu de freinage incluse fonctionne également pour les claviers.
	sundayDriverAcceleratorCurve = 7.5,			-- La courbe de réponse à appliquer à l'accélérateur. Plage 0,0 à 10,0. Des valeurs plus élevées facilitent la conduite lente, ce qui signifie qu'il faut davantage de pression sur l'accélérateur pour accélérer. Ne fait rien pour les pilotes de clavier.
	sundayDriverBrakeCurve = 5.0,				-- La courbe de réponse à appliquer au frein. Plage 0,0 à 10,0. Des valeurs plus élevées facilitent le freinage, ce qui signifie qu'une plus grande pression sur la manette des gaz est nécessaire pour freiner fort. Ne fait rien pour les pilotes de clavier.

	displayBlips = false,						-- Afficher les blips pour les emplacements des mécaniciens.

	compatibilityMode = false,					-- Empêche d'autres scripts de modifier l'état de fonctionnement du réservoir de carburant pour éviter les pannes de moteur aléatoires avec BVA 2.01 (le système de prévention d'explosion est désactivé).

	randomTireBurstInterval = 0,				-- Nombre de minutes (statistiquement, pas précisément) pour conduire au-dessus de 22 mph avant que vous ne creviez un pneu. 0 = fonctionnalité désactivée.


	-- Class Damagefactor Multiplier
	-- The damageFactor for engine, body and Petroltank will be multiplied by this value, depending on vehicle class
	-- Use it to increase or decrease damage for each class

	classDamageMultiplier = {
		[0] = 	1.0,		--	0: Compacts
				1.0,		--	1: Sedans
				1.0,		--	2: SUVs
				0.95,		--	3: Coupes
				1.0,		--	4: Muscle
				0.95,		--	5: Sports Classics
				0.95,		--	6: Sports
				0.95,		--	7: Super
				0.27,		--	8: Motorcycles
				0.7,		--	9: Off-road
				0.25,		--	10: Industrial
				0.35,		--	11: Utility
				0.85,		--	12: Vans
				1.0,		--	13: Cycles
				0.4,		--	14: Boats
				0.7,		--	15: Helicopters
				0.7,		--	16: Planes
				0.75,		--	17: Service
				0.85,		--	18: Emergency
				0.67,		--	19: Military
				0.43,		--	20: Commercial
				1.0			--	21: Trains
	}
}



--[[

	-- Alternate configuration values provided by ImDylan93 - Vehicles can take more damage before failure, and the balance between vehicles has been tweaked.
	-- To use: comment out the settings above, and uncomment this section.

cfg = {

	deformationMultiplier = -1,					-- How much should the vehicle visually deform from a collision. Range 0.0 to 10.0 Where 0.0 is no deformation and 10.0 is 10x deformation. -1 = Don't touch
	deformationExponent = 1.0,					-- How much should the handling file deformation setting be compressed toward 1.0. (Make cars more similar). A value of 1=no change. Lower values will compress more, values above 1 it will expand. Dont set to zero or negative.
	collisionDamageExponent = 1.0,				-- How much should the handling file deformation setting be compressed toward 1.0. (Make cars more similar). A value of 1=no change. Lower values will compress more, values above 1 it will expand. Dont set to zero or negative.

	damageFactorEngine = 5.1,					-- Sane values are 1 to 100. Higher values means more damage to vehicle. A good starting point is 10
	damageFactorBody = 5.1,						-- Sane values are 1 to 100. Higher values means more damage to vehicle. A good starting point is 10
	damageFactorPetrolTank = 61.0,				-- Sane values are 1 to 100. Higher values means more damage to vehicle. A good starting point is 64
	engineDamageExponent = 1.0,					-- How much should the handling file engine damage setting be compressed toward 1.0. (Make cars more similar). A value of 1=no change. Lower values will compress more, values above 1 it will expand. Dont set to zero or negative.
	weaponsDamageMultiplier = 0.124,			-- How much damage should the vehicle get from weapons fire. Range 0.0 to 10.0, where 0.0 is no damage and 10.0 is 10x damage. -1 = don't touch
	degradingHealthSpeedFactor = 7.4,			-- Speed of slowly degrading health, but not failure. Value of 10 means that it will take about 0.25 second per health point, so degradation from 800 to 305 will take about 2 minutes of clean driving. Higher values means faster degradation
	cascadingFailureSpeedFactor = 1.5,			-- Sane values are 1 to 100. When vehicle health drops below a certain point, cascading failure sets in, and the health drops rapidly until the vehicle dies. Higher values means faster failure. A good starting point is 8

	degradingFailureThreshold = 677.0,			-- Below this value, slow health degradation will set in
	cascadingFailureThreshold = 310.0,			-- Below this value, health cascading failure will set in
	engineSafeGuard = 100.0,					-- Final failure value. Set it too high, and the vehicle won't smoke when disabled. Set too low, and the car will catch fire from a single bullet to the engine. At health 100 a typical car can take 3-4 bullets to the engine before catching fire.

	torqueMultiplierEnabled = true,				-- Decrease engine torge as engine gets more and more damaged

	limpMode = true,							-- If true, the engine never fails completely, so you will always be able to get to a mechanic unless you flip your vehicle and preventVehicleFlip is set to true
	limpModeMultiplier = 0.15,					-- The torque multiplier to use when vehicle is limping. Sane values are 0.05 to 0.25

	preventVehicleFlip = true,					-- If true, you can't turn over an upside down vehicle

	sundayDriver = true,						-- If true, the accelerator response is scaled to enable easy slow driving. Will not prevent full throttle. Does not work with binary accelerators like a keyboard. Set to false to disable. The included stop-without-reversing and brake-light-hold feature does also work for keyboards.
	sundayDriverAcceleratorCurve = 7.5,			-- The response curve to apply to the accelerator. Range 0.0 to 10.0. Higher values enables easier slow driving, meaning more pressure on the throttle is required to accelerate forward. Does nothing for keyboard drivers
	sundayDriverBrakeCurve = 5.0,				-- The response curve to apply to the Brake. Range 0.0 to 10.0. Higher values enables easier braking, meaning more pressure on the throttle is required to brake hard. Does nothing for keyboard drivers

	displayBlips = true,						-- Show blips for mechanics locations

	classDamageMultiplier = {
		[0] = 	1.0,		--	0: Compacts
				1.0,		--	1: Sedans
				1.0,		--	2: SUVs
				0.95,		--	3: Coupes
				1.0,		--	4: Muscle
				0.95,		--	5: Sports Classics
				0.95,		--	6: Sports
				0.95,		--	7: Super
				0.27,		--	8: Motorcycles
				0.7,		--	9: Off-road
				0.25,		--	10: Industrial
				0.35,		--	11: Utility
				0.85,		--	12: Vans
				1.0,		--	13: Cycles
				0.4,		--	14: Boats
				0.7,		--	15: Helicopters
				0.7,		--	16: Planes
				0.75,		--	17: Service
				0.85,		--	18: Emergency
				0.67,		--	19: Military
				0.43,		--	20: Commercial
				1.0			--	21: Trains
	}
}

]]--





-- End of Main Configuration

-- Configure Repair system

-- id=446 for wrench icon, id=72 for spraycan icon

repairCfg = {
	mechanics = {
		{name="Garage", id=446, r=25.0, x=-337.0,  y=-135.0,  z=39.0},	-- LSC Burton
		{name="Garage", id=446, r=25.0, x=-1155.0, y=-2007.0, z=13.0},	-- LSC by airport
		{name="Garage", id=446, r=25.0, x=734.0,   y=-1085.0, z=22.0},	-- LSC La Mesa
		{name="Garage", id=446, r=25.0, x=1177.0,  y=2640.0,  z=37.0},	-- LSC Harmony
		{name="Garage", id=446, r=25.0, x=108.0,   y=6624.0,  z=31.0},	-- LSC Paleto Bay
		{name="Garage", id=446, r=18.0, x=538.0,   y=-183.0,  z=54.0},	-- Mechanic Hawic
		{name="Garage", id=446, r=15.0, x=1774.0,  y=3333.0,  z=41.0},	-- Mechanic Sandy Shores Airfield
		{name="Garage", id=446, r=15.0, x=1143.0,  y=-776.0,  z=57.0},	-- Mechanic Mirror Park
		{name="Garage", id=446, r=30.0, x=2508.0,  y=4103.0,  z=38.0},	-- Mechanic East Joshua Rd.
		{name="Garage", id=446, r=16.0, x=2006.0,  y=3792.0,  z=32.0},	-- Mechanic Sandy Shores gas station
		{name="Garage", id=446, r=25.0, x=484.0,   y=-1316.0, z=29.0},	-- Hayes Auto, Little Bighorn Ave.
		{name="Garage", id=446, r=33.0, x=-1419.0, y=-450.0,  z=36.0},	-- Hayes Auto Body Shop, Del Perro
		{name="Garage", id=446, r=33.0, x=268.0,   y=-1810.0, z=27.0},	-- Hayes Auto Body Shop, Davis
	--	{name="Mechanic", id=446, r=24.0, x=288.0,   y=-1730.0, z=29.0},	-- Hayes Auto, Rancho (Disabled, looks like a warehouse for the Davis branch)
		{name="Garage", id=446, r=27.0, x=1915.0,  y=3729.0,  z=32.0},	-- Otto's Auto Parts, Sandy Shores
		{name="Garage", id=446, r=45.0, x=-29.0,   y=-1665.0, z=29.0},	-- Mosley Auto Service, Strawberry
		{name="Garage", id=446, r=44.0, x=-212.0,  y=-1378.0, z=31.0},	-- Glass Heroes, Strawberry
		{name="Garage", id=446, r=33.0, x=258.0,   y=2594.0,  z=44.0},	-- Mechanic Harmony
		{name="Garage", id=446, r=18.0, x=-32.0,   y=-1090.0, z=26.0},	-- Simeons
		--{name="Garage", id=446, r=25.0, x=-211.0,  y=-1325.0, z=31.0},	-- Bennys
		{name="Garage", id=446, r=25.0, x=903.0,   y=3563.0,  z=34.0},	-- Auto Repair, Grand Senora Desert
		{name="Garage", id=446, r=25.0, x=437.0,   y=3568.0,  z=38.0},		-- Auto Shop, Grand Senora Desert
	},

    fixMessageCount = 7,
	noFixMessageCount = 6
}
