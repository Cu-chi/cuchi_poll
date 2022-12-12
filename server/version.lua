CreateThread(function()
    PerformHttpRequest("https://api.github.com/repos/Cu-chi/cuchi_poll/releases/latest", function(status, response)
        if status ~= 200 then return end
        local currentVersion = GetResourceMetadata(GetCurrentResourceName(), "version", 0)
        local latest = json.decode(response)

        if currentVersion ~= latest.tag_name then
            print("^1Version outdated: update it from ^7"..latest.html_url)
        end
    end, "GET")
end)
