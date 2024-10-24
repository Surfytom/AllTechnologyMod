-- Global List Of Technologies to Unlock

local recipeLib={}
recipeLib.numOfRecipes = 300
recipeLib.recipes = {
	[1] = {
		'Workbench',
		'Product_Axe_Grade_01',
		'Product_Pickaxe_Grade_01',
		'HandTorch',
		'Battle_MeleeWeapon_Bat',
	},
	[2] = {
		'PalBox',
		'Special_PalSphere_Grade_01',
		'Product_Cooking_Grade_01',
		'Infra_ItemChest_Grade_01',
		'RepairBench',
		'Wooden_houseset',
	},
	[3] = {
		'Battle_RangeWeapon_Bow1',
		'Arrow',
		'Infra_PlayerBed_Grade_01',
		'Infra_PalBed_Grade_01',
		'RepairKit',
		'Battle_Cloth',
	},
	[4] = {
		'Shield_01',
		'Spear',
		'Battle_Armor_Grade_01_Cloth',
		'PalFoodBox',
		'BaseCampBattleDirector',
		'Trap_Noose',
	},
	[5] = {
		'Product_Farm_Berries',
		'MonsterFarm',
		'Battle_Glider_Grade_01',
		'Battle_RangeWeapon_Bow_Fire',
		'Arrow_Fire',
		'FurnitureSet_1',
	},
	[6] = {
		'Product_WorkBench_SkillUnlock',
		'BuildableGoddessStatue',
		'Torch',
		'SkillUnlock_Boar',
		'SkillUnlock_Kitsunebi',
		'FurnitureSet_3',
	},
	[7] = {
		'Product_StationDeforest',
		'Product_StonePit',
		'Signboard',
		'Battle_MeleeWeapon_Bat2',
		'SkillUnlock_Alpaca',
		'SkillUnlock_FlyingManta',
		'Special_HatchingPalEgg',
	},
	[8] = {
		'Crusher',
		'Battle_RangeWeapon_Bow_Poison',
		'Arrow_Poison',
		'SkillUnlock_Hedgehog',
		'SkillUnlock_DreamDemon',
		'FurnitureSet_2',
	},
	[9] = {
		'Battle_Armor_Grade_01_Cloth_Heat',
		'Battle_Armor_Grade_01_Cloth_Cold',
		'Spa',
		'DefenseWait',
		'SkillUnlock_Garm',
		'SkillUnlock_NegativeOctopus',
	},
	[10] = {
		'Battle_RangeWeapon_Bow3',
		'Product_Ingot_Grade_01_Copper',
		'Battle_Helm_Grade_02_Fur',
		'Trap_LegHold',
		'Infra_MachineParts',
		'SkillUnlock_Serpent',
		'AutoMealPouch_Tier1',
	},
	[11] = {
		'Product_Axe_Grade_02',
		'Product_Pickaxe_Grade_02',
		'Product_Factory_Hard_Grade_01',
		'Wood_Gate',
		'SkillUnlock_Carbunclo',
		'SkillUnlock_Hedgehog_Ice',
	},
	[12] = {
		'Battle_Armor_Grade_02_Fur',
		'MeatCutterKnife',
		'Product_Medicine_Grade_01',
		'SkillUnlock_Monkey',
		'SkillUnlock_Deer',
		'GrapplingGun',
		'FurnitureSet_9',
	},
	[13] = {
		'Battle_RangeWeapon_BowGun',
		'Spear_2',
		'DamagedScarecrow',
		'CoolerBox',
		'SkillUnlock_NaughtyCat',
		'SkillUnlock_WeaselDragon',
	},
	[14] = {
		'Special_PalSphere_Grade_02',
		'Special_SphereFactory_Black_Grade_01',
		'WallTorch',
		'SkillUnlock_MopKing',
		'SkillUnlock_Kirin',
		'Special_PalRankUp',
		'FurnitureSet_21',
	},
	[15] = {
		'Battle_RangeWeapon_BowGun_Fire',
		'Product_Farm_wheat',
		'FlourMill',
		'BaseCampWorkHard',
		'DisplayCharacter',
		'SkillUnlock_HawkBird',
	},
	[16] = {
		'Shield_02',
		'Battle_Armor_Grade_02_Fur_Heat',
		'Infra_ItemChest_Grade_02',
		'DefenseWall_Wood',
		'SkillUnlock_FlameBuffalo',
		'FurnitureSet_4',
	},
	[17] = {
		'Battle_RangeWeapon_BowGun_Poison',
		'Product_Cooking_Grade_02',
		'Heater',
		'SkillUnlock_Penguin',
		'SkillUnlock_FlowerRabbit',
		'GrapplingGun2',
		'FurnitureSet_28',
	},
	[18] = {
		'Battle_Glider_Grade_02',
		'Battle_Armor_Grade_02_Fur_Cold',
		'Stone_houseset',
		'Cooler',
		'SkillUnlock_ColorfulBird',
		'FurnitureSet_17',
	},
	[19] = {
		'BreedFarm',
		'Cement',
		'ToolBoxV1',
		'SkillUnlock_FlowerDinosaur',
		'SkillUnlock_DrillGame',
		'FurnitureSet_19',
	},
	[20] = {
		'Special_PalSphere_Grade_03',
		'Product_WeaponFactory_Dirty_Grade_01',
		'OlympicCauldron',
		'SkillUnlock_SakuraSaurus',
		'SkillUnlock_WindChimes',
		'AutoMealPouch_Tier2',
		'FurnitureSet_22',
	},
	[21] = {
		'Musket',
		'Battle_GunPowder_Grade_02',
		'RoughBullet',
		'SkillUnlock_BirdDragon',
		'SkillUnlock_FairyDragon',
		'FurnitureSet_24',
	},
	[22] = {
		'ElecBaton',
		'Trap_LegHold_Big',
		'SkillUnlock_KingAlpaca',
		'SkillUnlock_RaijinDaughter',
		'Lantern',
		'FurnitureSet_18',
	},
	[23] = {
		'Battle_Armor_Grade_03_Copper',
		'Battle_Helm_Grade_03_Copper',
		'Fountain',
		'SkillUnlock_GhostBeast',
		'SkillUnlock_Eagle',
		'FurnitureSet_20',
	},
	[24] = {
		'Infra_PalBed_Grade_02',
		'FlowerBed',
		'SkillUnlock_Serpent_Ground',
		'SkillUnlock_GrassPanda',
		'SkillUnlock_BlueDragon',
		'FurnitureSet_16',
	},
	[25] = {
		'MakeshiftHandgun',
		'Battle_Armor_Grade_03_Copper_Heat',
		'Silo',
		'SkillUnlock_GrassPanda_Electric',
		'SkillUnlock_Deer_Ground',
		'FurnitureSet_15',
	},
	[26] = {
		'Infra_ElectricGenerator_Grade_01',
		'Lamp',
		'Battle_Defense_BowGun',
		'SkillUnlock_FengyunDeeper',
		'SkillUnlock_ThunderDog',
		'AutoMealPouch_Tier3',
		'FurnitureSet_30',
	},
	[27] = {
		'Special_PalSphere_Grade_04',
		'Special_SphereFactory_Black_Grade_02',
		'Battle_Armor_Grade_03_Copper_Cold',
		'CeilingLamp',
		'SkillUnlock_SakuraSaurus_Water',
		'FurnitureSet_25',
	},
	[28] = {
		'Shield_03',
		'Product_Factory_Hard_Grade_02',
		'Stump',
		'SkillUnlock_FairyDragon_Water',
		'SkillUnlock_GrassMammoth',
		'FurnitureSet_32',
	},
	[29] = {
		'Battle_RangeWeapon_HandGun',
		'HandgunBullet',
		'DefenseWall',
		'SkillUnlock_FlowerDinosaur_Electric',
		'SkillUnlock_IceDeer',
		'Battle_RangeWeapon_SphereLauncher_Once',
	},
	[30] = {
		'Trap_MineAttack',
		'Infra_PlayerBed_Grade_02',
		'Metal_houseset',
		'MiningTool',
		'SkillUnlock_AmaterasuWolf',
		'SkillUnlock_FireKirin',
	},
	[31] = {
		'Spa2',
		'FragGrenade',
		'Stone_Gate',
		'SkillUnlock_VolcanicMonster',
		'SkillUnlock_WindChimes_Ice',
		'FurnitureSet_23',
	},
	[32] = {
		'Product_WeaponFactory_Dirty_Grade_02',
		'FragGrenade_Elec',
		'Product_Farm_tomato',
		'Cauldron',
		'SkillUnlock_Manticore',
		'GrapplingGun3',
		'FurnitureSet_6',
	},
	[33] = {
		'Polymer',
		'Trap_MineElecShock',
		'Snowman',
		'SkillUnlock_HadesBird',
		'SkillUnlock_FireKirin_Dark',
		'FurnitureSet_13',
	},
	[34] = {
		'Product_Ingot_Grade_02_Iron',
		'Product_Axe_Grade_03',
		'Product_Pickaxe_Grade_03',
		'Spear_3',
		'SkillUnlock_ThunderBird',
		'FurnitureSet_29',
	},
	[35] = {
		'Special_PalSphere_Grade_05',
		'Special_SphereFactory_Black_Grade_03',
		'Infra_ElectronicCircuit',
		'CarbonFiber',
		'SkillUnlock_Manticore_Dark',
		'AutoMealPouch_Tier4',
		'FurnitureSet_14',
	},
	[36] = {
		'Battle_RangeWeapon_Rifle',
		'RifleBullet',
		'Cloth2',
		'MedicalPalBed_04',
		'SkillUnlock_SkyDragon',
		'FurnitureSet_31',
	},
	[37] = {
		'Battle_Armor_Grade_03_Iron',
		'Battle_Helm_Grade_04_Iron',
		'FragGrenade_Ice',
		'SkillUnlock_RedArmorBird',
		'SkillUnlock_VolcanicMonster_Ice',
		'FurnitureSet_5',
	},
	[38] = {
		'Refrigerator',
		'Product_Farm_Lettuce',
		'Trap_MineFreeze',
		'SkillUnlock_KingBahamut',
		'SkillUnlock_Horus',
		'Battle_RangeWeapon_SphereLauncher',
	},
	[39] = {
		'Battle_RangeWeapon_ShotGun',
		'ShotgunBullet',
		'Infra_ItemChest_Grade_03',
		'SkillUnlock_Umihebi',
		'FurnitureSet_7',
	},
	[40] = {
		'Battle_Armor_Grade_03_Iron_Heat',
		'Battle_Glider_Grade_03',
		'Battle_Defense_MachineGun',
		'SkillUnlock_Suzaku',
		'SkillUnlock_ElecPanda',
		'Spear_ForestBoss',
		'FurnitureSet_27',
	},
	[41] = {
		'FragGrenade_Fire',
		'Battle_Armor_Grade_03_Iron_Cold',
		'Product_Cooking_Grade_03',
		'ElectricHeater',
		'SkillUnlock_BirdDragon_Ice',
		'FurnitureSet_26',
	},
	[42] = {
		'Battle_RangeWeapon_ShotGun_Multi',
		'Product_Factory_Hard_Grade_03',
		'ElectricCooler',
		'Metal_Gate',
		'SkillUnlock_KingAlpaca_Ice',
		'DecalGunSet',
		'FurnitureSet_8',
	},
	[43] = {
		'Shield_04',
		'Product_Medicine_Grade_02',
		'DefenseWall_Metal',
		'SkillUnlock_Suzaku_Water',
		'SkillUnlock_Umihebi_Fire',
	},
	[44] = {
		'Special_PalSphere_Grade_06',
		'Product_Ingot_Grade_03_Steal',
		'Battle_MeleeWeapon_Sword',
		'SkillUnlock_LazyDragon',
		'SkillUnlock_Yeti',
	},
	[45] = {
		'Battle_RangeWeapon_AssaultRifle',
		'AssaultRifleBullet',
		'SkillUnlock_Yeti_Grass',
		'SkillUnlock_GrassMammoth_Ice',
		'AutoMealPouch_Tier5',
		'FurnitureSet_11',
	},
	[46] = {
		'Battle_Armor_Grade_04_Steal',
		'Battle_Helm_Grade_05_Steal',
		'LargeLamp',
		'SkillUnlock_LazyDragon_Electric',
		'FurnitureSet_12',
	},
	[47] = {
		'Product_WeaponFactory_Dirty_Grade_03',
		'LargeCeilingLamp',
		'SkillUnlock_BlackMetalDragon',
		'SkillUnlock_BlackGriffon',
		'GrapplingGun4',
	},
	[48] = {
		'Battle_Armor_Grade_04_Steal_Heat',
		'TransmissionTower',
		'SkillUnlock_IceHorse',
		'SkillUnlock_IceHorse_Dark',
		'FurnitureSet_10',
	},
	[49] = {
		'Battle_RangeWeapon_RocketLauncher',
		'LauncherBullet',
		'SkillUnlock_SaintCentaur',
		'SkillUnlock_BlackCentaur',
	},
	[50] = {
		'Battle_RangeWeapon_HomingSphereLauncher',
		'Battle_Armor_Grade_04_Steal_Cold',
		'Battle_Defense_Missile',
		'SkillUnlock_JetDragon',
	}
}

return recipeLib