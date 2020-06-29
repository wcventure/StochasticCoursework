function [outputSeq] = Coder_null(inputSeq,mode)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明

if strcmp(mode,'encode')
    outputSeq=inputSeq;
elseif strcmp(mode,'decode')
    outputSeq=inputSeq;
else
    outputSeq=[0];
end

end

