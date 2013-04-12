function JD = ymd2jd(year,month,day,hour,minute,sec)
% 输入：年月日时分秒
% 输出：儒略日
% 输出：
if nargin ==3
    hour = 0;
    minute = 0;
    sec = 0;
end
if nargin == 4
    minute = 0;
    sec = 0;
end
if nargin == 5
    sec =0;
end
h=hour+minute/60+sec/3600;
if month <=2
    y = year-1;
    m = month+12;
else
    y=year;
    m=month;
end
JD = floor(365.25*y)+floor(30.6001*(m+1))+day + h/24 + 1720981.5;
end