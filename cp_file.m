function [] = cp_file(file_of_files,target)
%������:cp_file(file_of_files,target)
%������
%   file_of_files:[·��+�ļ���]�洢վ��
%   target:Ŀ��Ŀ¼
%�������ܣ���file_of_filesͬĿ¼��  ���� file_of_files�ļ��е�һ���ַ������ļ�������target��
%��file_of_files��Ϊ

%f  
%f2
%�򽫸�Ŀ¼��f* f2*�ļ�������targetĿ¼
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