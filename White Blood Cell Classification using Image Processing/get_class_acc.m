function class_acc = get_class_acc(classification_mat,class)
    num = classification_mat(class,class);
    res = sum(classification_mat(class,:))+sum(classification_mat(:,class));
    total = sum(classification_mat,'all');
    class_acc = (num+res)/total;

end