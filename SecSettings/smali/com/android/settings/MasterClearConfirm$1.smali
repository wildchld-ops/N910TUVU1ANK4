.class Lcom/android/settings/MasterClearConfirm$1;
.super Ljava/lang/Object;
.source "MasterClearConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MasterClearConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MasterClearConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/MasterClearConfirm;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/settings/MasterClearConfirm;->isSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "VZW"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    # invokes: Lcom/android/settings/MasterClearConfirm;->storeResetDate()V
    invoke-static {v2}, Lcom/android/settings/MasterClearConfirm;->access$000(Lcom/android/settings/MasterClearConfirm;)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    # invokes: Lcom/android/settings/MasterClearConfirm;->DoMasterReset()V
    invoke-static {v2}, Lcom/android/settings/MasterClearConfirm;->access$100(Lcom/android/settings/MasterClearConfirm;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    # invokes: Lcom/android/settings/MasterClearConfirm;->StartPassword()V
    invoke-static {v2}, Lcom/android/settings/MasterClearConfirm;->access$200(Lcom/android/settings/MasterClearConfirm;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {v2}, Lcom/android/settings/MasterClearConfirm;->getAdminSamsungId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v2, "MasterClearConfirm"

    const-string v3, "onClick : SPC Device"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.spc.spcsetting.ACTION_ACCOUNT_MANAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    iget-object v3, p0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/settings/MasterClearConfirm;->isIntentExists(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "MasterClearConfirm"

    const-string v3, "Starting Activty to check this is ADMIN user"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "key_request_for"

    const-string v3, "resetrequest"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    const/16 v3, 0x7d1

    invoke-virtual {v2, v1, v3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "MasterClearConfirm"

    const-string v3, "ActivityNotFoundException for SPC_INTENT_TO_CHECK_IS_ADMIN"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v2, "VZW"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    # invokes: Lcom/android/settings/MasterClearConfirm;->storeResetDate()V
    invoke-static {v2}, Lcom/android/settings/MasterClearConfirm;->access$000(Lcom/android/settings/MasterClearConfirm;)V

    :cond_5
    iget-object v2, p0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    # invokes: Lcom/android/settings/MasterClearConfirm;->DoMasterReset()V
    invoke-static {v2}, Lcom/android/settings/MasterClearConfirm;->access$100(Lcom/android/settings/MasterClearConfirm;)V

    goto :goto_0
.end method
