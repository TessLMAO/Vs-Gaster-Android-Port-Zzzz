function onCreate()

	makeLuaSprite('textxd', 'Grass/textt', -910, 0);
	scaleObject('textxd', 1.4, 1.4);
	addLuaSprite('textxd', false);
          doTweenX('textgoo', 'textxd', 1500, 1120, 'linear')

	makeLuaSprite('sky', 'Grass/clouds', -2810, 70);
	scaleObject('sky', 1, 1);
	addLuaSprite('sky', false);
          doTweenX('skywee', 'sky', 1000, 230, 'linear')
          setProperty('sky.visible', false)

	makeLuaSprite('core', 'Grass/corebg', -900, 100);
	scaleObject('core', 4, 4);
	addLuaSprite('core', false);
         setProperty('core.antialiasing', false);
          setProperty('core.visible', false)

end

function onUpdate()

       if curStep == 8 then
          setProperty('textxd.visible',false)
          setProperty('sky.visible',true)
       end

       if curStep == 264 then
          setProperty('textxd.visible',true)
          setProperty('sky.visible',false)
       end

       if curStep == 520 then
          setProperty('textxd.visible',false)
          setProperty('core.visible',true)
          doTweenY('coreahhhhh', 'core', -400, 14, 'linear')
       end

       if curStep == 648 then
          setProperty('sky.visible',true)
          setProperty('core.visible',false)
       end

       if curStep == 776 then
          setProperty('textxd.visible',true)
          setProperty('sky.visible',false)
       end
end