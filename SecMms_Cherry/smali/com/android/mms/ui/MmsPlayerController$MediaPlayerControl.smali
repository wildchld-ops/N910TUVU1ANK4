.class public interface abstract Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;
.super Ljava/lang/Object;
.source "MmsPlayerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsPlayerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MediaPlayerControl"
.end annotation


# virtual methods
.method public abstract SlideShowActivityRunnable(Lcom/android/mms/model/SlideshowModel;)V
.end method

.method public abstract canPause()Z
.end method

.method public abstract getBufferPercentage()I
.end method

.method public abstract getCurrentPosition()I
.end method

.method public abstract getDuration()I
.end method

.method public abstract isPaused()Z
.end method

.method public abstract isPlayed()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract isStartAction()Z
.end method

.method public abstract isStop()Z
.end method

.method public abstract next()V
.end method

.method public abstract pause()V
.end method

.method public abstract pauseSmilPlayer()V
.end method

.method public abstract prev()V
.end method

.method public abstract seek(I)V
.end method

.method public abstract setPlayerState(Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method

.method public abstract stopSmilPlayer()V
.end method
