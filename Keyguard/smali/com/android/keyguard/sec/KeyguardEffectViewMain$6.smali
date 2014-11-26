.class Lcom/android/keyguard/sec/KeyguardEffectViewMain$6;
.super Landroid/database/ContentObserver;
.source "KeyguardEffectViewMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setWallpaperContentObservers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardEffectViewMain;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardEffectViewMain;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$6;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1    # Z
    .param p2    # Landroid/net/Uri;

    const/16 v4, 0x12f2

    const/16 v3, 0x12f1

    const/16 v2, 0x12f0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "lockscreen_wallpaper"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$6;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->access$700(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$6;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->access$700(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$6;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->access$700(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$6;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->access$700(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    const-string v0, "lockscreen_ripple_effect"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$6;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->access$700(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$6;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->access$700(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$6;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->access$700(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$6;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->access$700(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_5
    const-string v0, "lockscreen_wallpaper_path"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "lockscreen_wallpaper_path_2"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_6
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$6;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    # invokes: Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setWallpaperFileObserver()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->access$500(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)V

    const-string v0, "KeyguardEffectViewMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWallpaperPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$6;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    iget-object v2, v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mWallpaperPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$6;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->access$700(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$6;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->access$700(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$6;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->access$700(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$6;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->access$700(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_8
    const-string v0, "emergency_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$6;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->access$700(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$6;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->access$700(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_9
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$6;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    const/4 v1, 0x1

    # setter for: Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mEmergencyModeStateChanged:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->access$802(Lcom/android/keyguard/sec/KeyguardEffectViewMain;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$6;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->access$700(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$6;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->access$700(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
