function [] = cp_file(file_of_files,target)
%函数名:cp_file(file_of_files,target)
%参数：
%   file_of_files:[路径+文件名]存储站名
%   target:目标目录
%函数功能：将file_of_files同目录下  含有 file_of_files文件中第一列字符串的文件拷贝至target中
%如file_of_files中为

%f  
%f2
%则将该目录下f* f2*文件拷贝至target目录
if exist(target,'dir') == 0
    ok = input('there is no dir named %s,will you want to mkdir %s(yes or no)?','s');
    if strcmp(ok,'yes')
        mkdir(target);
    else
        return;
    end
end
fid = fopen(file_of_files);
while 1
    if feof(fid)
        break;
    end
    file_line = fgetl(fid);
    station_name = file_line(1:4);
    here = strfind(file_of_files,'\');
    deep = length(here);
    path = file_of_files(1:here(deep));
    sourse = [path  station_name '*']
    copyfile(sourse,target,'f');
end
fclose(fid);
end