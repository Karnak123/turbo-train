function aligned = align(green,red)
    [red_r,red_c] = size(red);
    [green_r,green_c] = size(green); 
    cropped_red = red(ceil((red_r-50)/2) : ceil((red_r-50)/2) + 50,ceil((red_c-50)/2) :ceil((red_c-50)/2) + 50);
    cropped_green = green(ceil((green_r-50)/2) : ceil((green_r-50)/2) + 50,ceil((green_c-50)/2) :ceil((green_c-50)/2) + 50);
    MiN = inf;
    r_index = 0;
    r_dim = 1;
    for i = -10:10
        for j = -10:10
            ssd = SSD(cropped_green,circshift(cropped_red,[i,j]));
            if ssd < MiN
                MiN = ssd;
                r_index = i;
                r_dim = j;
            end
        end
    end
    aligned = circshift(red,[r_index,r_dim]);
end