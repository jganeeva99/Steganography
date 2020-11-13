function [ ] = Embed(ContainerImgName, WatermarkedImgName, wmtype)

tmc = ['/Applications/Wine.app/Contents/MacOS/Wine gen_' wmtype '_sig -o /Applications/Wine.app/Contents/MacOS/Wine ./' wmtype '.sig'];
system(tmc,'-echo');
tmc = ['/Applications/Wine.app/Contents/MacOS/Wine wm_' wmtype '_e -s ' wmtype '.sig -o /Applications/Wine.app/Contents/MacOS/Wine ./', WatermarkedImgName, ' ', ContainerImgName];
system(tmc,'-echo');

end

