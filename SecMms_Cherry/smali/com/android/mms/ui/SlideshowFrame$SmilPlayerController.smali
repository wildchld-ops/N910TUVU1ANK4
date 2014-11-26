.class Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;
.super Ljava/lang/Object;
.source "SlideshowFrame.java"

# interfaces
.implements Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmilPlayerController"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

.field final synthetic this$0:Lcom/android/mms/ui/SlideshowFrame;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/SlideshowFrame;Lcom/android/mms/dom/smil/SmilPlayer;)V
    .locals 1
    .param p2    # Lcom/android/mms/dom/smil/SmilPlayer;

    iput-object p1, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Mms/SmilPlayerController"

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->TAG:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    return-void
.end method


# virtual methods
.method public SlideShowActivityRunnable(Lcom/android/mms/model/SlideshowModel;)V
    .locals 0
    .param p1    # Lcom/android/mms/model/SlideshowModel;

    return-void
.end method

.method public canPause()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPlayed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStartAction()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isStartAction()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStop()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public next()V
    .locals 2

    const-string v0, "Mms/SmilPlayerController"

    const-string v1, "next()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->next()V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->pause()V

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # invokes: Lcom/android/mms/ui/SlideshowFrame;->releaseWakeLock()V
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowFrame;->access$1500(Lcom/android/mms/ui/SlideshowFrame;)V

    :cond_0
    return-void
.end method

.method public pauseSmilPlayer()V
    .locals 0

    return-void
.end method

.method public prev()V
    .locals 2

    const-string v0, "Mms/SmilPlayerController"

    const-string v1, "prev()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->prev()V

    :cond_0
    return-void
.end method

.method public seek(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public setPlayerState(Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;)V
    .locals 0
    .param p1    # Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    return-void
.end method

.method public start()V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x0

    const-string v0, "Mms/SmilPlayerController"

    const-string v1, "start()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isCallOffhook()Z

    move-result v1

    # setter for: Lcom/android/mms/ui/SlideshowFrame;->isOnCall:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/SlideshowFrame;->access$1602(Lcom/android/mms/ui/SlideshowFrame;Z)Z

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # getter for: Lcom/android/mms/ui/SlideshowFrame;->isOnCall:Z
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowFrame;->access$1600(Lcom/android/mms/ui/SlideshowFrame;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # getter for: Lcom/android/mms/ui/SlideshowFrame;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowFrame;->access$1700(Lcom/android/mms/ui/SlideshowFrame;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v3, v2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # invokes: Lcom/android/mms/ui/SlideshowFrame;->accquireWakeLock()V
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowFrame;->access$300(Lcom/android/mms/ui/SlideshowFrame;)V

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->start()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # getter for: Lcom/android/mms/ui/SlideshowFrame;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowFrame;->access$1700(Lcom/android/mms/ui/SlideshowFrame;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    # setter for: Lcom/android/mms/ui/SlideshowFrame;->mVolumeLevel:I
    invoke-static {v0, v1}, Lcom/android/mms/ui/SlideshowFrame;->access$1802(Lcom/android/mms/ui/SlideshowFrame;I)I

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # getter for: Lcom/android/mms/ui/SlideshowFrame;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowFrame;->access$1700(Lcom/android/mms/ui/SlideshowFrame;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # getter for: Lcom/android/mms/ui/SlideshowFrame;->mVolumeLevel:I
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowFrame;->access$1800(Lcom/android/mms/ui/SlideshowFrame;)I

    move-result v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method public stop()V
    .locals 0

    return-void
.end method

.method public stopSmilPlayer()V
    .locals 0

    return-void
.end method
