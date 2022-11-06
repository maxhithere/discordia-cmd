local discordia = require("discordia")
local client = discordia.Client()


client:on("messageCreate", function(message)

    local channelTable = {}

	if message.content == "!getChannels" then
	    
	    	local channels = client.guild.channels.cache:get(message.guild.id)
	    	for i,v in pairs(channels) do
	    	      message:reply('Channel: '..v.name)
	    	    end
	    
	
	end

end)

client:run("Bot Token") -- replace with your bot token
