function pred = predict_class(I,mean_features)
    Ihsv=rgb2hsv(I);
    features = extractLBPFeatures(Ihsv(:,:,2));
    % cosine function gives scalar value
    cosAB1= Cosine(features,mean_features(1,:));
    cosAB2= Cosine(features,mean_features(2,:));
    cosAB3= Cosine(features,mean_features(3,:));
    cosAB4= Cosine(features,mean_features(4,:));
    % inserting all above 4 value into CosMatrix
    CosMatrix=[cosAB1,cosAB2,cosAB3,cosAB4];
    % finding max of CosMatrix
    maximum=max(CosMatrix);
    % finding position/index of maximum value of CosMatrix
    pos=find(CosMatrix==maximum);
    % based on index/pos classification is performed 
    if pos==1
        pred = 1; % NEUTRO
    elseif pos==2
        pred = 2; % MONO
    elseif pos==3
        pred = 3; %ESNO
    elseif pos==4
        pred = 4; %LYMPHO
    else
        pred = nan;
    end
end
