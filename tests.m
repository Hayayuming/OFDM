close all;
%clear variables;

%w = warning('query','last');    %ici j'enl�ve des warnings, YOLO
%id=w.identifier;
%warning('off',id);
%set_param('OFDM','InitFcn','');     %j'enl�ve le script init qui s'execute � chaque d�marrage de la sim
%set_param('OFDM','StopTime','0.06');

init;

%results=zeros(210,5);
i=1;        %num�ro de la simulation

for N=[32,64,128,256,512,1024,2048]
    nbZeros = N/8;
    powersOfTwo = 2.^[1:log2(N/4)];
    for nbPilots=powersOfTwo
        for SNR_ = [10:5:30]
            setMyParams(B,N,nbPilots,nbZeros,SNR_,delayMax);
            disp(['N=' num2str(N) ', nbPilots=' num2str(nbPilots) ', SNR=' num2str(SNR_) 'dB' ', débit =' num2str(debit)])
            %sim('OFDM');
            %progression=i/210*100;
            %disp(['   => BER =' num2str(BER.data(end,1)) '            progression: ' num2str(progression) '%'])
            result(i,5)=debit;
            i=i+1;
        end
    end
end

%set_param('OFDM','StopTime','inf');
%set_param('OFDM','InitFcn','init');


