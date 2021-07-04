ass_len=10000;
no_data=20;

Mat=zeros(no_data,ass_len+1);

L1=[VarName1;zeros(ass_len-length(VarName1),1)];
L2=[VarName2;zeros(ass_len-length(VarName2),1)];
L3=[VarName3;zeros(ass_len-length(VarName3),1)];
L4=[VarName4;zeros(ass_len-length(VarName4),1)];
L5=[VarName5;zeros(ass_len-length(VarName5),1)];
L6=[VarName6;zeros(ass_len-length(VarName6),1)];
L7=[VarName7;zeros(ass_len-length(VarName7),1)];
L8=[VarName8;zeros(ass_len-length(VarName8),1)];
L9=[VarName9;zeros(ass_len-length(VarName9),1)];
L10=[VarName10;zeros(ass_len-length(VarName10),1)];

L11=[gFz;zeros(ass_len-length(gFz),1)];
L12=[gFz1;zeros(ass_len-length(gFz1),1)];
L13=[gFz2;zeros(ass_len-length(gFz2),1)];
L14=[gFz3;zeros(ass_len-length(gFz3),1)];
L15=[gFz4;zeros(ass_len-length(gFz4),1)];
L16=[gFz5;zeros(ass_len-length(gFz5),1)];
L17=[gFz6;zeros(ass_len-length(gFz6),1)];
L18=[gFz7;zeros(ass_len-length(gFz7),1)];
L19=[gFz8;zeros(ass_len-length(gFz8),1)];
L20=[gFz9;zeros(ass_len-length(gFz9),1)];

Mat(1,1:ass_len)=(L1)';
Mat(2,1:ass_len)=(L2)';
Mat(3,1:ass_len)=(L3)';
Mat(4,1:ass_len)=(L4)';
Mat(5,1:ass_len)=(L5)';
Mat(6,1:ass_len)=(L6)';
Mat(7,1:ass_len)=(L7)';
Mat(8,1:ass_len)=(L8)';
Mat(9,1:ass_len)=(L9)';
Mat(10,1:ass_len)=(L10)';
Mat(11,1:ass_len)=(L11)';
Mat(12,1:ass_len)=(L12)';
Mat(13,1:ass_len)=(L13)';
Mat(14,1:ass_len)=(L14)';
Mat(15,1:ass_len)=(L15)';
Mat(16,1:ass_len)=(L16)';
Mat(17,1:ass_len)=(L17)';
Mat(18,1:ass_len)=(L18)';
Mat(19,1:ass_len)=(L19)';
Mat(20,1:ass_len)=(L20)';


Mat(:,ass_len)=[1;1;1;1;1;1;1;1;1;1;2;2;2;2;2;2;2;2;2;2];
csvwrite('10_fast_fatigue.csv',Mat);