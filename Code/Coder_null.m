function [outputSeq] = Coder_null(inputSeq,mode)
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��

if strcmp(mode,'encode')
    outputSeq=inputSeq;
elseif strcmp(mode,'decode')
    outputSeq=inputSeq;
else
    outputSeq=[0];
end

end

