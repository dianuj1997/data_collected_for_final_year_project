Fs = 256;
DAT1=fastfatigue;
%DAT1(7,1)=1;
length=10000;
num_data=20;
fb = cwtfilterbank('SignalLength',length,'SamplingFrequency',Fs);
Mat=DAT1(:,1:length);
%Mat=X';
for indie=1:num_data
    fig = figure;
    cwt(Mat(indie,:),'FilterBank',fb)
    title('Magnitude Scalogram — Morse (3,60)')
    drawnow
    frame = getframe(fig);
    im= frame2im(frame);
    im= imresize(im,[227 227]);
    imwrite(im,strcat('im',num2str(indie),'.jpg'));
end