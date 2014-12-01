.class public Lcom/android/systemui/statusbar/tv/TvStatusBar;
.super Lcom/android/systemui/statusbar/BaseStatusBar;
.source "TvStatusBar.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;-><init>()V

    return-void
.end method


# virtual methods
.method public addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0

    return-void
.end method

.method public addNotification(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    return-void
.end method

.method public animateCollapsePanels(I)V
    .locals 0

    return-void
.end method

.method public animateExpandNotificationsPanel()V
    .locals 0

    return-void
.end method

.method public animateExpandSettingsPanel()V
    .locals 0

    return-void
.end method

.method protected createAndAddWindows()V
    .locals 0

    return-void
.end method

.method public disable(I)V
    .locals 0

    return-void
.end method

.method protected getExpandedViewMaxHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getSearchLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatusBarView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected haltTicker()V
    .locals 0

    return-void
.end method

.method protected refreshLayout(I)V
    .locals 0

    return-void
.end method

.method public removeIcon(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public removeNotification(Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public resetHeadsUpDecayTimer()V
    .locals 0

    return-void
.end method

.method protected setAreThereNotifications()V
    .locals 0

    return-void
.end method

.method public setCallBackground(I)V
    .locals 0

    return-void
.end method

.method public setHardKeyboardStatus(ZZ)V
    .locals 0

    return-void
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;II)V
    .locals 0

    return-void
.end method

.method public setMultiWindowBg(Z)V
    .locals 0

    return-void
.end method

.method public setSemiTransparentMode(Z)V
    .locals 0

    return-void
.end method

.method public setSystemUiVisibility(II)V
    .locals 0

    return-void
.end method

.method public setTransGradationMode(Z)V
    .locals 0

    return-void
.end method

.method public setUseWindowTrans(Z)V
    .locals 0

    return-void
.end method

.method public setWindowSemiTransparentMode(Z)V
    .locals 0

    return-void
.end method

.method public setWindowState(II)V
    .locals 0

    return-void
.end method

.method public setWindowTransGradationMode(Z)V
    .locals 0

    return-void
.end method

.method protected shouldDisableNavbarGestures()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected tick(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;Z)V
    .locals 0

    return-void
.end method

.method public toggleRecentApps()V
    .locals 0

    return-void
.end method

.method public topAppWindowChanged(Z)V
    .locals 0

    return-void
.end method

.method protected updateExpandedViewPos(I)V
    .locals 0

    return-void
.end method

.method public updateIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0

    return-void
.end method

.method public updateNotification(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    return-void
.end method

.method protected updateNotificationIcons()V
    .locals 0

    return-void
.end method
