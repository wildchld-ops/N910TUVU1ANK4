.class Lcom/android/settings/dormantmode/DormantmodeSettings$1;
.super Landroid/database/ContentObserver;
.source "DormantmodeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dormantmode/DormantmodeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dormantmode/DormantmodeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/dormantmode/DormantmodeSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings$1;->this$0:Lcom/android/settings/dormantmode/DormantmodeSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const-string v1, "DormantModeSettings"

    const-string v2, "onChange() DORMANTMODE_SWITCH_CHANGED"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings$1;->this$0:Lcom/android/settings/dormantmode/DormantmodeSettings;

    # getter for: Lcom/android/settings/dormantmode/DormantmodeSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->access$000(Lcom/android/settings/dormantmode/DormantmodeSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dormant_switch_onoff"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings$1;->this$0:Lcom/android/settings/dormantmode/DormantmodeSettings;

    # getter for: Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimePickerDlg:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->access$100(Lcom/android/settings/dormantmode/DormantmodeSettings;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings$1;->this$0:Lcom/android/settings/dormantmode/DormantmodeSettings;

    # getter for: Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimePickerDlg:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->access$100(Lcom/android/settings/dormantmode/DormantmodeSettings;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings$1;->this$0:Lcom/android/settings/dormantmode/DormantmodeSettings;

    invoke-virtual {v1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->updateDormantmodepage()V

    return-void
.end method
