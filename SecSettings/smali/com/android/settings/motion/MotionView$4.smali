.class Lcom/android/settings/motion/MotionView$4;
.super Ljava/lang/Object;
.source "MotionView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/MotionView;->showMotionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/MotionView;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/MotionView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/motion/MotionView$4;->this$0:Lcom/android/settings/motion/MotionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v1, "MotionView"

    const-string v2, "showMotionDialog, positive click"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/motion/MotionView$4;->this$0:Lcom/android/settings/motion/MotionView;

    # invokes: Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/motion/MotionView;->access$500(Lcom/android/settings/motion/MotionView;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion/MotionView$4;->this$0:Lcom/android/settings/motion/MotionView;

    # getter for: Lcom/android/settings/motion/MotionView;->mCurrentDB:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/motion/MotionView;->access$200(Lcom/android/settings/motion/MotionView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2013"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/motion/MotionView$4;->this$0:Lcom/android/settings/motion/MotionView;

    # invokes: Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/motion/MotionView;->access$600(Lcom/android/settings/motion/MotionView;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "master_motion"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/motion/MotionView$4;->this$0:Lcom/android/settings/motion/MotionView;

    # invokes: Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/motion/MotionView;->access$800(Lcom/android/settings/motion/MotionView;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "master_motion"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/motion/MotionView$4;->this$0:Lcom/android/settings/motion/MotionView;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/motion/MotionView$4;->this$0:Lcom/android/settings/motion/MotionView;

    # invokes: Lcom/android/settings/motion/MotionView;->startTryActually()V
    invoke-static {v1}, Lcom/android/settings/motion/MotionView;->access$900(Lcom/android/settings/motion/MotionView;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/motion/MotionView$4;->this$0:Lcom/android/settings/motion/MotionView;

    # invokes: Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/motion/MotionView;->access$700(Lcom/android/settings/motion/MotionView;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_engine"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method
