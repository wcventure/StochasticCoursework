function [outputSeq] = Coder_redun(inputSeq,mode,redunNum)
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
if nargin<3
    redunNum=2;
end
    
if strcmp(mode,'encode')
    outputSeq=repmat(inputSeq,redunNum,1);
    outputSeq=reshape(outputSeq,1,redunNum*length(inputSeq));
elseif strcmp(mode,'decode')
    inputSeq=reshape(inputSeq,redunNum,length(inputSeq)/redunNum);
    inputSeq=sum(inputSeq,1)/redunNum;
    outputSeq=double(inputSeq>=0.5);
else
    outputSeq=[0];
end

end

