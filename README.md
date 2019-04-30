
## 数据在哪，cell就在哪

解放controller，不再实现UICollectionView协议  
根据需求，动态添加cell  ，非常适合feed流视图  
view：cells，需要实现绑定协议  
sectionController： 重写父类方法   
viewModel：实现IGListDiffable协议  
model：实现IGListDiffable协议  

