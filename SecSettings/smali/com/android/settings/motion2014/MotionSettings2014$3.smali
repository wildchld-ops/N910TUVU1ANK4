.class Lcom/android/settings/motion2014/MotionSettings2014$3;
.super Ljava/lang/Object;
.source "MotionSettings2014.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion2014/MotionSettings2014;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2014/MotionSettings2014;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2014/MotionSettings2014;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/motion2014/MotionSettings2014$3;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014$3;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    # getter for: Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipeSwitch:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/motion2014/MotionSettings2014;->access$300(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014$3;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    # getter for: Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/motion2014/MotionSettings2014;->access$000(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "surface_palm_swipe"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
