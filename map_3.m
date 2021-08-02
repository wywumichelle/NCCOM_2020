clear all
close all
file= 'BstdCon_EM_multi_sig.nc';
LON = ncread(file,'LONGXY'); % longitude  

%ID=ncread('Nature_f09_g16.nc','number')';
%temp=ID;
%ID(1:192,1:144,:) = temp(192:-1:1,145:288,:);
%ID(1:192,145:288,:) = temp(192:-1:1,1:144,:);

temp=LON;
LON(1:192,1:144,:) = temp(192:-1:1,145:288,:);
LON(1:192,145:288,:) = temp(192:-1:1,1:144,:);


LAT = ncread(file,'LATIXY');  % latitude      
temp=LAT;
LAT(1:192,1:144,:) = temp(192:-1:1,145:288,:);
LAT(1:192,145:288,:) = temp(192:-1:1,1:144,:);


RGB= ncread(file,'delta_R_multi');  % three factors ((0 - 1))
temp=RGB;
RGB(1:192,1:144,:) = temp(192:-1:1,145:288,:);
RGB(1:192,145:288,:) = temp(192:-1:1,1:144,:);

for x = 1:192
    for y=1:288
        if any(isnan(RGB(x,y,:)))
            RGB(x,y,:)=1;
        end
         %if any(ID(x,y,:)==0)
         %   RGB(x,y,:)=1;
        %end
    end
end
  
load geoid
figure(2)
axesm eckert4; 
framem
gridm
plabel
%mlabel('MlabelLocation',90)
mlabel('MlabelLocation',60,'MapLatLimit',[-60 60])
setm(gca,'MLabelLocation',60)
setm(gca,'PLabelLocation',[-60:30:60])
%setm(gca,'PLabelMeridian',0);
setm(gca,'MLabelParallel','south');
geoshow(LAT,LON,RGB) 
geoshow('landareas.shp','FaceColor','No','LineWidth',1);
rivers = shaperead('worldrivers', 'UseGeoCoords', true);
geoshow(rivers, 'Color', 'black')
%axis off
%print('MAP_mask','-r1200','-dpdf')


