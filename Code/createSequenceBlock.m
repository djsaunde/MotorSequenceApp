function block = createBlock(type)
if strcmp(type,'sequence')
    block = [ 2 4 1 3 4 2 3 1 ...
              2 4 1 3 4 2 3 1 ...
              2 4 1 3 4 2 3 1 ...
              2 4 1 3 4 2 3 1 ...
              2 4 1 3 4 2 3 1 ...
              2 4 1 3 4 2 3 1 ...
              2 4 1 3 4 2 3 1 ];
          
elseif strcmp(type,'random')
    block = zeros(1,56);
    for i = 1:length(block)
        nextNum = block(i-1);
        if i>2
            while nextNum == block(i-1) || nextNum == block(i-2)
                nextNum = randi(4);
            end
        elseif i==2
            while nextNum == block(i-1)
                nextNum = randi(4);
            end
        else
            nextNum = randi(4);
        end
        block(i) = nextNum;
    end
end