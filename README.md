# QRGVideo
在"KRVideoPlayer"基础上加以优化，集成视频播放功能 Demo
video 播放分两种情况：

1.加载到当前 view 上使用简单，不便于控制，实际运用有好多 Bug  
```
[self addSubview:self.videoController.view]
```

2.video 显示在 window 便于控制
```
[self.videoController showInWindow]
```