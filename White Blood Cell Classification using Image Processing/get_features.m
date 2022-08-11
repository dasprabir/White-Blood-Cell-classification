function features = get_features(img_dir,n)
    features = zeros(n,59);
    srcDir = img_dir;
    srcFiles = dir(fullfile(srcDir,'*.jpeg'));
    for k=1:n
        filename = fullfile(srcDir,srcFiles(k).name);
        I = imread(filename);
        Ihsv=rgb2hsv(I);
        features(k,:) = extractLBPFeatures(Ihsv(:,:,2));
    end
end