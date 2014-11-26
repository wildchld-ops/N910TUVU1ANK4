.class Lcom/android/settings/fmm/RemoteControls$2;
.super Ljava/lang/Object;
.source "RemoteControls.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fmm/RemoteControls;->showMobileDateChargeEnableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fmm/RemoteControls;

.field final synthetic val$layout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/fmm/RemoteControls;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fmm/RemoteControls$2;->this$0:Lcom/android/settings/fmm/RemoteControls;

    iput-object p2, p0, Lcom/android/settings/fmm/RemoteControls$2;->val$layout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v8, 0x1

    const-string v5, "RemoteControls"

    const-string v6, "showMobileDateChargeEnableDialog enable"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isSupportLMM()Z

    move-result v5

    if-eqz v5, :cond_2

    :try_start_0
    const-string v5, "terrier"

    invoke-static {v5}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/fmm/RemoteControls$2;->this$0:Lcom/android/settings/fmm/RemoteControls;

    # invokes: Lcom/android/settings/fmm/RemoteControls;->setServiceFlagOn()I
    invoke-static {v5}, Lcom/android/settings/fmm/RemoteControls;->access$600(Lcom/android/settings/fmm/RemoteControls;)I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/fmm/RemoteControls$2;->this$0:Lcom/android/settings/fmm/RemoteControls;

    # invokes: Lcom/android/settings/fmm/RemoteControls;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/android/settings/fmm/RemoteControls;->access$700(Lcom/android/settings/fmm/RemoteControls;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "remote_control"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.settings.remotecontrol_on"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "RemoteControls"

    const-string v6, " onCheckedChanged[remotecontrol_on]"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/fmm/RemoteControls$2;->this$0:Lcom/android/settings/fmm/RemoteControls;

    invoke-virtual {v5}, Lcom/android/settings/fmm/RemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    const-string v5, "RemoteControls"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCheckedChanged [ServiceFlag] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/fmm/RemoteControls$2;->this$0:Lcom/android/settings/fmm/RemoteControls;

    # invokes: Lcom/android/settings/fmm/RemoteControls;->getServiceFlag()I
    invoke-static {v7}, Lcom/android/settings/fmm/RemoteControls;->access$800(Lcom/android/settings/fmm/RemoteControls;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v5, p0, Lcom/android/settings/fmm/RemoteControls$2;->val$layout:Landroid/view/View;

    const v6, 0x7f0b0195

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/fmm/RemoteControls$2;->this$0:Lcom/android/settings/fmm/RemoteControls;

    invoke-virtual {v5}, Lcom/android/settings/fmm/RemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.android.settings.fmm.remotecontrols"

    invoke-virtual {v5, v6, v8}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/fmm/RemoteControls$2;->this$0:Lcom/android/settings/fmm/RemoteControls;

    iget-boolean v5, v5, Lcom/android/settings/fmm/RemoteControls;->mIsMobileConnected:Z

    if-eqz v5, :cond_3

    const-string v5, "DoNotShowDialogData"

    invoke-interface {v2, v5, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void

    :catch_0
    move-exception v4

    const-string v5, "RemoteControls"

    const-string v6, "WARNING: Could not load /system/lib/libterrier.so"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/settings/fmm/RemoteControls$2;->this$0:Lcom/android/settings/fmm/RemoteControls;

    # invokes: Lcom/android/settings/fmm/RemoteControls;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/android/settings/fmm/RemoteControls;->access$900(Lcom/android/settings/fmm/RemoteControls;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "remote_control"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    const-string v5, "DoNotShowDialogWlan"

    invoke-interface {v2, v5, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method
