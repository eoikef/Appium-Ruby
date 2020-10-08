def capabilities(device)
    Appium.load_appium_txt :file => File.expand_path("capabilities/#{device}.txt", __FILE__), verbose:true
end

case env['PLATFORM'] 

when 'android'
    caps = capabilities(env)
when 'ios'
    caps = Appium.load_appium_txt file: File.join('./capabilities/ios_device.txt')
end


Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object
