.class Lcom/android/settings/motion2013/SMotionSettings$13;
.super Ljava/lang/Object;
.source "SMotionSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion2013/SMotionSettings;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2013/SMotionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2013/SMotionSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/motion2013/SMotionSettings$13;->this$0:Lcom/android/settings/motion2013/SMotionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings$13;->this$0:Lcom/android/settings/motion2013/SMotionSettings;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings$13;->this$0:Lcom/android/settings/motion2013/SMotionSettings;

    # invokes: Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/motion2013/SMotionSettings;->access$1800(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "surface_motion_engine"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings$13;->this$0:Lcom/android/settings/motion2013/SMotionSettings;

    invoke-virtual {v0}, Lcom/android/settings/motion2013/SMotionSettings;->isAllHandMotionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings$13;->this$0:Lcom/android/settings/motion2013/SMotionSettings;

    const v1, 0x7f090ff0

    const v2, 0x7f090ffd

    const-string v3, "surface"

    # invokes: Lcom/android/settings/motion2013/SMotionSettings;->showAllOptionDisabledDialog(IILjava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/motion2013/SMotionSettings;->access$1000(Lcom/android/settings/motion2013/SMotionSettings;IILjava/lang/String;)V

    :cond_0
    return-void
.end method
