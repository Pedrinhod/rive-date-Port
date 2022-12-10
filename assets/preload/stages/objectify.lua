i = 0

function onCreate()
	makeLuaSprite('bg', 'bgobjectify', 400, 500)
	makeLuaSprite('sun', 'sunlight', 350, 450)

	addLuaSprite('bg', false)
	addLuaSprite('sun', true)
	setBlendMode('sun', 'add')

	makeLuaSprite('bartop','',0,0)
	makeGraphic('bartop',1280,100,'000000')
	addLuaSprite('bartop',true)

	makeLuaSprite('barbot','',0,620)
	makeGraphic('barbot',1280,100,'000000')
	addLuaSprite('barbot',true)
	setScrollFactor('bartop',0,0)
	setScrollFactor('barbot',0,0)
	setObjectCamera('bartop','hud')
	setObjectCamera('barbot','hud')
end

function onCreatePost()
	for i = 4, 7 do
		setProperty('strumsBlocked['..i..']', true)
	end
end