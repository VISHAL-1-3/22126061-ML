function [ CON,A,P, R, F1 ] = confusionmatrix(ypred,yactual)

 a=0;
 b=0;
 c=0;
 d=0;
 for i=1:1:length(ypred)
    if ypred(i)==1 && yactual(i)==1
        a=a+1;
    else if ypred(i)==1 && yactual(i)==0
        b=b+1;
    else if ypred(i)==0 && yactual(i)==1
        c=c+1;
    else if ypred(i)==0 && yactual(i)==0
        d=d+1;
    end
    end
    end
    end
 end
     
 
     %%%%%%%%%%%Your code here to compute a b c d


 
CON=[a c; d b];%%%confusion matrix
A=((a+b)/(a+b+c+d))*100 ;%%%% percentage predicted correctly
P=a/(a+b); %% precision=true positive/predicted positive
R=a/(a+d); %% recall=true positive/actual positive
F1=2*P*R/(P+R);%%% F1 socre
end