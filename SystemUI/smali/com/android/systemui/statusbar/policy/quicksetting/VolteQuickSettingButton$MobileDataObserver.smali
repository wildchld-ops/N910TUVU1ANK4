.class Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton$MobileDataObserver;
.super Landroid/database/ContentObserver;
.source "VolteQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobileDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "mobile_data"

    const/4 v5, -0x2

    invoke-static {v0, v4, v1, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    # setter for: Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mMobileData:Z
    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->access$402(Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    # setter for: Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->isAirPlaneMode:I
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->access$002(Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;I)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->access$500(Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "voicecall_type"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    # setter for: Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mState:Z
    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->access$302(Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;Z)Z

    const-string v0, "STATUSBAR-VolteQuickSettingButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onChange mState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mState:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->access$300(Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/mMobileData:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mMobileData:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->access$400(Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/isAirPlaneMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->isAirPlaneMode:I
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;)I

    move-result v4

    if-ne v4, v1, :cond_3

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mMobileData:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->access$400(Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method
