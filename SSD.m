function ssd = SSD(a1,a2)
    x = double(a1)-double(a2);
    ssd = sum(x(:).^2);
end 