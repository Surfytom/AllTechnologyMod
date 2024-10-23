local recipes = require "recipes"
local config = require "config"
local UEHelpers = require("UEHelpers")

-- Mod Prefix
local prefix = "[ATM]"
local CharacterLevel = nil
local listOfUnlockedTechnologies = {}
local length = 0
local technologyArray = nil

-- Checks if table contains certain value
local function has_value (tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end

    return false
end

-- Registers a function onto the client restart event
RegisterHook("/Script/Engine.PlayerController:ClientRestart", function (Context)

    -- Registers a function onto the On Complete Initialise Parameter event
    RegisterHook("/Script/Pal.PalPlayerCharacter:OnCompleteInitializeParameter", function(self)
        print(prefix .. " [CALLED]: OnCompleteInitializeParameter")

        -- Gets player character object
        PlayerCharacter = self:get()
        
        -- Checks if playter is valid
        local PlayerController = PlayerCharacter.Controller
        if PlayerController == nil then
          print(prefix .. " PlayerController is NIL!")
          return
        end
        if not PlayerController:IsValid() then
          print(prefix .. " PlayerController is INVALID!")
          return
        end
      
        local PlayerState = PlayerController.PlayerState
        if PlayerState == nil then
          print(prefix .. " PlayerState is NIL!")
          return
        end
        if not PlayerState:IsValid() then
          print(prefix .. " PlayerState is INVALID!")
          return
        end

        -- Gets players current level
        CharacterLevel = PlayerCharacter:GetCharacterParameterComponent():GetLevel()
        print(prefix .. " Player Level: " .. tostring(CharacterLevel))

        -- Hooks update function onto get level function to check whether the player has leveled
        -- If the player has leveled unlock the appropriate technologies for those levels
        RegisterHook("/Script/Pal.PalIndividualCharacterParameter:GetLevel", function(self)
            local level = PlayerCharacter:GetCharacterParameterComponent():GetLevel()
            local oldLevel = CharacterLevel

            -- Checks level is greater than recorded level
            if level > CharacterLevel then
                -- Updates level
                CharacterLevel = level
                print(prefix .. " Player Level: " .. tostring(CharacterLevel))
                
                local length = technologyArray:GetArrayNum()
                local count = length
                
                -- Loops through recipes
                for k, v in ipairs(recipes.recipes) do
                    -- If the recipe is lesser than the current level and higher than the old level unlock the recipe
                    if k <= CharacterLevel and k > oldLevel then
                        for i=1, #v do
                            print(prefix .. " " .. tostring(i) .." appending " .. tostring(v[i]) .. " to technology data array")
                            technologyArray[count+1+i] = UEHelpers.FindOrAddFName(tostring(v[i]))
                            technologyArray[count+i] = UEHelpers.FindOrAddFName(tostring(v[i]))
                            count = count + 1
                        end
                    end
                end
            end
        end)
    end)

    -- Attaches function on the event the players technology data loads
    NotifyOnNewObject("/Script/Pal.PalTechnologyData", function (technologyData)
        print(prefix .. " Found Technology Data State!")

        print(prefix .. " Will try to load technologies in 10 seconds...")

        -- Delays function incase computer is too slow at loading into game
        -- This function attempts to unlock technologies for the player based on configs
        ExecuteWithDelay(config.delayToAttemptToLoadTechnologies, function()

            -- Gets players current technology array
            technologyArray = technologyData.UnlockedTechnologyNameArray

            local length = technologyData.UnlockedTechnologyNameArray:GetArrayNum()
            print(prefix .. " Number of Technologies you have unlocked: " .. tostring(length))
            print(prefix .. " Total Technolgies that can be unlocked: " .. tostring(recipes.numOfRecipes - length))

            if recipes.numOfRecipes == length then
                print(prefix .. " Character Already Unlocked All Technology")
            else

                -- Empty map to fill with each levels technologies
                -- This map is used to keep track of players unlocked tech without the need to call the UE API all the time
                for i = 0, 51 do
                    listOfUnlockedTechnologies[i] = {}
                end

                -- Fills map
                for i = 1, length do
                    print(prefix .. " Tech adding to list of unlocked: " .. technologyData.UnlockedTechnologyNameArray[i]:ToString())
                    local levelCap = technologyData:GetTechlonogyBaseData(UEHelpers.FindOrAddFName(technologyData.UnlockedTechnologyNameArray[i]:ToString())).LevelCap
                    listOfUnlockedTechnologies[levelCap][#listOfUnlockedTechnologies[levelCap]+1] = technologyData.UnlockedTechnologyNameArray[i]:ToString()
                end

                -- Make sure character has level
                if CharacterLevel == nil then
                    CharacterLevel = 1
                    print(prefix .. " player level was nil so set to 1")
                end

                local tempLength = length+1

                -- If player only wants technologies up to current level unlocked
                if config.onlyUnlockUpToCurrentLevel == true then

                    print(prefix .. " onlyUnlockUpToCurrentLevel is set to " .. tostring(config.onlyUnlockUpToCurrentLevel) .. ". Only Technologies up to level " .. "1" .. " will be loaded...")
                    
                    -- Gets recipe object
                    local fname = UEHelpers.FindOrAddFName(tostring(recipes.recipes[1][0]))
                    print(prefix .. " Filling TArray with None values")
                    
                    print(prefix .. " Replacing None values with new recipes")

                    -- Loop through recipes adding unlocking the tech if the recipe is not already unlocked
                    for k, v in ipairs(recipes.recipes) do
                        if k > CharacterLevel then
                            print(prefix .. " Player level reached stopping technology addition")
                            break
                        end
                        for i = 1, #v do
                            if has_value(listOfUnlockedTechnologies[k], v[i]) == false then
                                technologyData.UnlockedTechnologyNameArray[(tempLength + 1)] = fname

                                print(prefix .. " " .. tostring(k) .." appending " .. tostring(v[i]) .. " to technology data array")
                                technologyData.UnlockedTechnologyNameArray[tempLength] = UEHelpers.FindOrAddFName(tostring(v[i]))

                                listOfUnlockedTechnologies[k][#listOfUnlockedTechnologies[k]+1] = v[i]
                                
                                tempLength = tempLength + 1
                            end
                        end
                    end

                else
                    -- This will unlock all technologies all the way up to the max level
                    print(prefix .. " onlyUnlockUpToCurrentLevel is set to " .. tostring(config.onlyUnlockUpToCurrentLevel) .. ". All Technologies will be loaded...")

                    local fname = UEHelpers.FindOrAddFName(tostring(recipes.recipes[1][0]))
                    print(prefix .. " Filling TArray with None values")

                    technologyData.UnlockedTechnologyNameArray[(recipes.numOfRecipes + 1)] = fname
                    print(prefix .. " Replacing None values with new recipes")

                    local reachedLevel = false

                    -- Loops through all recipes unlocking them when the player has not already unlocked them
                    for k, v in ipairs(recipes.recipes) do
                        if k > CharacterLevel then
                            reachedLevel = true
                            print(prefix .. " Reached Character Level")
                        else
                            reachedLevel = false
                        end
                        for i = 1, #v do
                            if reachedLevel == false then
                                if has_value(listOfUnlockedTechnologies[k], v[i]) == false then
                                    print(prefix .. " " .. tostring(k) .." appending " .. tostring(v[i]) .. " to technology data array")
                                    technologyData.UnlockedTechnologyNameArray[tempLength] = UEHelpers.FindOrAddFName(tostring(v[i]))    
                                    listOfUnlockedTechnologies[k][#listOfUnlockedTechnologies[k]+1] = v[i]
                                    tempLength = tempLength + 1
                                end
                            else
                                print(prefix .. " " .. tostring(k) .. " appending " .. tostring(v[i]) .. " to technology data array")
                                technologyData.UnlockedTechnologyNameArray[tempLength] = UEHelpers.FindOrAddFName(tostring(v[i]))
                                tempLength = tempLength + 1
                            end
                        end
                    end
                end
            end
        end)
    end)
end)

