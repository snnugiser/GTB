function jd = doy2jd(year,doy)
    jd1 = ymd2jd(year,1,1);
    jd = jd1 + doy -1;
end