Fs = 256;
%DAT1=fastfatigue;
%DAT1(7,1)=1;
num_data=numel(XTrain);
fb=cell(num_data,1);
for i=1:numel(XTrain)
    fb{i}= cwtfilterbank('SignalLength',length(XTrain{i}),'SamplingFrequency',Fs);
end
%Mat=DAT1(:,1:length);
%Mat=X';
for indie=1:num_data
    siggy=XTrain{indie};
    fig = figure;
    cwt(siggy,'FilterBank',fb{indie})
    title('Magnitude Scalogram — Morse (3,60)')
    drawnow
    frame = getframe(fig);
    im= frame2im(frame);
    im= imresize(im,[227 227]);
    imwrite(im,strcat('im',num2str(indie),'.jpg'));
end