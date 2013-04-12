function doy0 = ymd2doy(year,month,day)
%doy0 = ymd2doy(year,month,day)
%输入：年月日
%输出：年积日
    jd2 = ymd2jd(year,month,day);
    jd1 = ymd2jd(year,1,1);
    doy0 = jd2 - jd1 + 1;
end