.class Lcom/android/settings/motion2014/SMotionGuideHub2014$SmartPauseObserver;
.super Landroid/database/ContentObserver;
.source "SMotionGuideHub2014.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/motion2014/SMotionGuideHub2014;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartPauseObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$SmartPauseObserver;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$SmartPauseObserver;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    iget-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$SmartPauseObserver;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    # invokes: Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$2900(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;

    move-result-object v2

    # setter for: Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v1, v2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$2802(Lcom/android/settings/motion2014/SMotionGuideHub2014;Landroid/content/ContentResolver;)Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$SmartPauseObserver;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    # getter for: Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSmartPause:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$1400(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$SmartPauseObserver;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    # getter for: Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$2800(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "smart_pause"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
