.class Lcom/android/settings/motion2014/MotionSettings2014$2;
.super Ljava/lang/Object;
.source "MotionSettings2014.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/android/settings/motion2014/MotionSettings2014$2;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014$2;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014$2;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    # getter for: Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/motion2014/MotionSettings2014;->access$000(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_engine"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014$2;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    # invokes: Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/motion2014/MotionSettings2014;->access$200(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "surface_palm_swipe"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
