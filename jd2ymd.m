function [year,month,day] = jd2ymd(jd,flag)
%[year,month,day] = jd2ymd(jd,flag)
%jd:儒略日
%flag:如果flag == 0 day取整
%输出：年月日

    if nargin == 1
        flag = 0;
    end
    a = floor(jd + 0.5);
    b = a + 1537;
    c = floor((b-122.1)/365.25);
    d = floor(365.25 * c);
    e = floor((b-d)/30.6001);
    day = b - d - floor(30.6001 * e) + frac(jd + 0.5);
    month = e - 1 - 12*floor(e/14);
    year = c - 4715 - floor((7+month)/10);
    if flag == 0
        day = floor(day);
    end
end
function f = frac(num)
    f = num - floor(num);
end