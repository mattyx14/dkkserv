-- Minlevel and multiplier are MANDATORY
-- Maxlevel is OPTIONAL, but is considered infinite by default
-- Create a stage with minlevel 1 and no maxlevel to disable stages
experienceStages = {
	{
		minlevel = 1,
		maxlevel = 50,
		multiplier = 15
	},
	{
		minlevel = 51,
		maxlevel = 100,
		multiplier = 13
	},
	{
		minlevel = 101,
		maxlevel = 200,
		multiplier = 10
	},
	{
		minlevel = 201,
		maxlevel = 400,
		multiplier = 8
	},
	{
		minlevel = 401,
		maxlevel = 600,
		multiplier = 6
	},
	{
		minlevel = 601,
		maxlevel = 999,
		multiplier = 5
	},
	{
		minlevel = 1000,
		multiplier = 4
	}
}

skillsStages = {
	{
		minlevel = 1,
		maxlevel = 999,
		multiplier = 50
	},
	{
		minlevel = 1000,
		multiplier = 70
	}
}

magicLevelStages = {
	{
		minlevel = 1,
		maxlevel = 999,
		multiplier = 25
	},
	{
		minlevel = 1000,
		multiplier = 35
	}
}
