function [outputSeq] = Coder_redun(inputSeq,mode,redunNum)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
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

