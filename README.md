# CustomProgressView
自定义的一个Progress下载进度动画

UIImageView分类 主要使用runtime动态关联属性，demo中使用一个定时器来完成进度监听，在实际项目中一般使用

     [[SDWebImageDownloader sharedDownloader]downloadImageWithURL:[NSURL URLWithString:@""] options:SDWebImageDownloaderHighPriority progress:^(NSInteger receivedSize, NSInteger expectedSize) {
        //在此给分类中的的progressVaule赋值 
       } completed:^(UIImage *image, NSData *data, NSError *error, BOOL finished) {
    }];
    
    
