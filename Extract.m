function [ corr ] = Extract(ContainerImgName, WatermarkedImgName, wmtype)

tmc = ['sudo ' 'wm_' wmtype '_d -s ' wmtype '.sig -i ' ContainerImgName ' -o ' wmtype '.wm ' WatermarkedImgName];
[p,corr] = system(tmc, '-echo');
tmc = ['sudo ' 'cmp_' wmtype '_sig -C -s ' wmtype '.sig ' wmtype '.wm'];
[p,corr] = system(tmc, '-echo');

end

