require 'calabash-android/calabash_steps'
Then /^I hide the keyboard$/ do
    hide_soft_keyboard
end
Then /^I set portrait screen$/ do
    perform_action('set_activity_orientation', 'portrait')
	system 'pwd'
	query("button")
end
Then /^I set landscape screen$/ do
    perform_action('set_activity_orientation', 'landscape')
end 
Then /^I press the text view "([^"]*)"$/ do  |text|
  tap_when_element_exists("* text:'#{text}'")
end
Then (/^I tap in (\d+) (\d+)$/) do |x, y|
system("#{default_device.adb_command} shell input tap #{x} #{y}");
end
Then (/^I take an image$/) do
system("#{default_device.adb_command} push test.jpg /sdcard/0/test.jpg");
system("#{default_device.adb_command} shell am broadcast -a android.intent.action.MEDIA_MOUNTED -d file:///sdcard");
end
Then (/^I name my WiFi P2P device "([^"]*)"$/) do  |text|
system("#{default_device.adb_command} shell am broadcast -a mock.THIS_DEVICE_CHANGED_EMULATOR --es wifiP2pDeviceIp 192.168.49.1 --es wifiP2pDeviceName #{text}");
end
Then (/^I activate WiFi Direct$/) do
system("#{default_device.adb_command} shell am broadcast -a mock.STATE_CHANGED --ei wifi_p2p_state 2");
end
Then (/^I deactivate WiFi Direct$/) do
system("#{default_device.adb_command} shell am broadcast -a mock.STATE_CHANGED --ei wifi_p2p_state 1");
end
Then /^I press text "(.*?)"$/ do |arg1|
  tap_when_element_exists("* contentDescription:'#{arg1}'")
end
