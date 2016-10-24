function [ vals ] = INET( inputVec )
cd('C:\Users\prewi\Documents\Senior Project');
inet = load('ANNNET.mat','-mat','FINALNET')
[inputVecn, inputVecs] = mapminmax(inputVec');
y = sim(inet,inputVecn)
for i = 1:length(inN)
    if (inN(i) > 1.8) & (inN(i)  < 2.2)
        inN(i) = 2;
    elseif (inN(i) > 0.8) & (inN(i)  < 1.2)
        inN(i) = 1;
    elseif (inN(i) > -0.2) & (inN(i)  < 0.2)
        inN(i) = 0;
    end
for i = 1:length(inN)
   switch inN(i)
        case 2
           vals(i) = 'I. Virginica';
       case 1
           vals(i) = 'I. Setosa';
       case 0
           vals(i) = 'I. Versicolor';
       otherwise
           vals(i) = 'Inconclusive';
   end
end
           
            
end

