function jd = doy2jd(year,doy)
%jd = doy2jd(year,doy)
%年积日转儒略日
%input:year,doy
%output:jd
    jd1 = ymd2jd(year,1,1);
    jd = jd1 + doy -1;
end