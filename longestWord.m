% This function reads a given input file and determines the longest word found within it.
% Note: All characters are counted as letters, except specifically: ' ', '.', ',', '!', '?'.

% INPUT1 = input file name

function result = longestWord(inputFile)

    % Preliminary information:
    fID = fopen(inputFile, 'r');
    streak = 0;
    highestStreak = 0;
    
    % Determining file eligibility:
    if fID == -1

        error("Input file could not be opened!")

    end

    % Running file:
    while 1

        % Establishing byte and conditional for while-loop:
        character = fread(fID, 1);

        if isempty(character)

            break

        end

        % Tracking streak:
        if character == uint8(' ')

            streak = 0;

        elseif character == uint8('.')

            streak = 0;

        elseif character == uint8(',')

            streak = 0;

        elseif character == uint8('!')

            streak = 0;

        elseif character == uint8('?')

            streak = 0;

        else

            streak = streak + 1;

        end

        % Determining highestStreak:
        if streak > highestStreak

            highestStreak = streak;

        end

    end

    result = highestStreak;

    fclose(fID);

end