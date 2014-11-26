.class public interface abstract Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.super Ljava/lang/Object;
.source "CommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/CommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V
.end method

.method public abstract addNotification(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V
.end method

.method public abstract animateCollapsePanels(I)V
.end method

.method public abstract animateExpandNotificationsPanel()V
.end method

.method public abstract animateExpandSettingsPanel()V
.end method

.method public abstract applyEDMPolicy()V
.end method

.method public abstract blockRecentWindow(Z)V
.end method

.method public abstract cancelPreloadRecentApps()V
.end method

.method public abstract disable(I)V
.end method

.method public abstract hideCallOnGoingView()V
.end method

.method public abstract hideSearchPanel()V
.end method

.method public abstract preloadRecentApps()V
.end method

.method public abstract removeIcon(Ljava/lang/String;II)V
.end method

.method public abstract removeNotification(Landroid/os/IBinder;)V
.end method

.method public abstract setCallBackground(I)V
.end method

.method public abstract setHardKeyboardStatus(ZZ)V
.end method

.method public abstract setImeWindowStatus(Landroid/os/IBinder;II)V
.end method

.method public abstract setMaxBrightness(I)V
.end method

.method public abstract setMultiWindowBg(Z)V
.end method

.method public abstract setSemiTransparentMode(Z)V
.end method

.method public abstract setSystemUiVisibility(II)V
.end method

.method public abstract setTransGradationMode(Z)V
.end method

.method public abstract setUseWindowTrans(Z)V
.end method

.method public abstract setWindowSemiTransparentMode(Z)V
.end method

.method public abstract setWindowState(II)V
.end method

.method public abstract setWindowTransGradationMode(Z)V
.end method

.method public abstract showCallOnGoingView()V
.end method

.method public abstract showSearchPanel()V
.end method

.method public abstract toggleNotificationPanel()V
.end method

.method public abstract toggleRecentApps()V
.end method

.method public abstract topAppWindowChanged(Z)V
.end method

.method public abstract updateIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;Lcom/android/internal/statusbar/StatusBarIcon;)V
.end method

.method public abstract updateNotification(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V
.end method
