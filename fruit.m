% This function determines divisibility of numbers 1:N by 2 and 5.

% INPUT1 = N - number in which the function stops (goes from 1:N)
% OUTPUT1 = primes 

function primes = fruit(N) % I left 'primes' here since it was specifically listed, but there were no instructions for it as a specific output.

    for i = 1:N

        if rem(i, 2) == 0

            fprintf("apple")

        end

        if rem(i, 5) == 0

            fprintf("banana")

        elseif rem(i, 2) ~= 0 && rem(i, 5) ~= 0 

            fprintf("%d", i)

        end

        fprintf("\n")

    end

end