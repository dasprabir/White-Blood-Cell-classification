function count = get_class_counts(img_dir,mean_features)
    srcDir = img_dir;
    srcFiles = dir(fullfile(srcDir,'*.jpeg'));
    count = zeros(1,4);
    for k=1:numel(srcFiles)
        filename = fullfile(srcDir,srcFiles(k).name);
        I = imread(filename);
        pred = predict_class(I,mean_features);
        if pred == 1
            count(1) = count(1) + 1;
            
            
        elseif pred == 2
            count(2) = count(2) +1;
           
           
        elseif pred == 3
             count(3) = count(3) +1;
             
          
        elseif pred == 4
            count(4) = count(4) +1;
             
           
        end
        
    end
end