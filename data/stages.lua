-- Minlevel and multiplier are MANDATORY
-- Maxlevel is OPTIONAL, but is considered infinite by default
-- Create a stage with minlevel 1 and no maxlevel to disable stages
experienceStages = {
	{
		minlevel = 1,
		maxlevel = 200,
		multiplier = 3
	},
	{
		minlevel = 201,
		maxlevel = 400,
		multiplier = 2.5
	},
	{
		minlevel = 401,
		maxlevel = 600,
		multiplier = 2.2
	},
	{
		minlevel = 601,
		maxlevel = 1000,
		multiplier = 2
	},
}

skillsStages = {
	{
		minlevel = 1,
		maxlevel = 600,
		multiplier = 50
	},
	{
		minlevel = 601,
		multiplier = 60
	}
}

magicLevelStages = {
	{
		minlevel = 1,
		maxlevel = 600,
		multiplier = 25
	},
	{
		minlevel = 601,
		multiplier = 30
	}
}
