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