function handle = Iterate(n , N)
    handle = @generator;
    function yield = generator()
        yield = n <= N;
        if ~yield
            return;
        end
        disp(n);
        n = n + 1;
    end
end

% usage:
%    iterator = Iterate(1, 10);   % display from 1 to 10 with increment of 1
%    while iterator(); end;
