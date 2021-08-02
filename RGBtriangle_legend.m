% MATLAB code for RGB lengend in Figure 3
% Wu et al., 2020; Nature Communications, 11, 3710, DOI:10.1038/s41467-020-17581-y

clear all; close all;

% filled polygonal regions using PATCH -https://www.mathworks.com/help/matlab/ref/patch.html
% https://stackoverflow.com/questions/9869167/generate-color-triangle

xy=[0 0; 1 0; 0.5 sqrt(3)/2];
col=[1 0 0; 0 1 0; 0 0 1];
patch('Vertices',xy, 'Faces',[1:size(xy,1)], 'EdgeColor','none','FaceVertexCData', col,'FaceColor','interp');
axis off

text(xy(1,1)+0.03, xy(1,2)-0.05,'Snowmelt','HorizontalAlignment', 'center','FontWeight','bold','Fontsize',27,'color','r')
text(xy(2,1), xy(2,2)-0.05,'ET','HorizontalAlignment', 'center','FontWeight','bold','Fontsize',30,'color','g')
text(xy(3,1), xy(3,2)+0.05,'Rainfall','HorizontalAlignment', 'center','FontWeight','bold','Fontsize',30,'color','b')
  
% case specific input
rain=[0.605 0.462 0.598 0.420 0.643 0.541 0.613];
melt=[0 0.295 0.207 0.400 0 0.062 0.316];
%
hold on

%plot ([0 1 0.5 0],[0 0 sqrt(3)/2 0],'linewidth',1,'color' ,'k','handlevisibility','off');

yy= rain*(sqrt(3)/2)
xx=(1-melt)-yy/sqrt(3)
  
scatter(xx,yy,50,'k','filled')
%plot([0.5 0.5],[0 0.5/sqrt(3)],'w')
%plot([0.25 0.5],[sqrt(3)/4 0.5/sqrt(3)],'w')
%plot([0.75 0.5],[sqrt(3)/4 0.5/sqrt(3)],'w')
text(xx(1)+0.035, yy(1)+0.0,'6','HorizontalAlignment', 'center','FontWeight','bold','Fontsize',30)
text(xx(2)+0.035, yy(2)+0.035,'2','HorizontalAlignment', 'center','FontWeight','bold','Fontsize',30)
text(xx(3)+0.035, yy(3)+0.035,'4','HorizontalAlignment', 'center','FontWeight','bold','Fontsize',30)
text(xx(4)+0.035, yy(4)+0.035,'3','HorizontalAlignment', 'center','FontWeight','bold','Fontsize',30)
text(xx(5)+0.035, yy(5)+0.035,'7','HorizontalAlignment', 'center','FontWeight','bold','Fontsize',30)
text(xx(6)+0.035, yy(6)+0.0,'5','HorizontalAlignment', 'center','FontWeight','bold','Fontsize',30)
text(xx(7)+0.035, yy(7)+0.035,'1','HorizontalAlignment', 'center','FontWeight','bold','Fontsize',30)
%print('basin_triangle','-r360','-dpdf')
