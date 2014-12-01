.class Lcom/android/mms/settings/FreeMessageSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "FreeMessageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/settings/FreeMessageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/settings/FreeMessageSettings;


# direct methods
.method constructor <init>(Lcom/android/mms/settings/FreeMessageSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/settings/FreeMessageSettings$2;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "Mms/FreeMessageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mResponseReceiver - action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.sec.orca.easysignup.ACTION_SERVICE_ON_RESULT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings$2;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    const-string v2, "extra_service_on_result"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/android/mms/settings/FreeMessageSettings;->result:I
    invoke-static {v1, v2}, Lcom/android/mms/settings/FreeMessageSettings;->access$102(Lcom/android/mms/settings/FreeMessageSettings;I)I

    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings$2;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    # setter for: Lcom/android/mms/settings/FreeMessageSettings;->detectLogin:Z
    invoke-static {v1, v4}, Lcom/android/mms/settings/FreeMessageSettings;->access$202(Lcom/android/mms/settings/FreeMessageSettings;Z)Z

    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings$2;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    # getter for: Lcom/android/mms/settings/FreeMessageSettings;->result:I
    invoke-static {v1}, Lcom/android/mms/settings/FreeMessageSettings;->access$100(Lcom/android/mms/settings/FreeMessageSettings;)I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings$2;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    iget-object v2, p0, Lcom/android/mms/settings/FreeMessageSettings$2;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    iget-object v2, v2, Lcom/android/mms/settings/FreeMessageSettings;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/sec/orca/easysignup/sdk/EasySignUpManager;->getServiceStatus(Landroid/content/Context;I)I

    move-result v2

    # setter for: Lcom/android/mms/settings/FreeMessageSettings;->serviceStatus:I
    invoke-static {v1, v2}, Lcom/android/mms/settings/FreeMessageSettings;->access$302(Lcom/android/mms/settings/FreeMessageSettings;I)I

    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings$2;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    # getter for: Lcom/android/mms/settings/FreeMessageSettings;->serviceStatus:I
    invoke-static {v1}, Lcom/android/mms/settings/FreeMessageSettings;->access$300(Lcom/android/mms/settings/FreeMessageSettings;)I

    move-result v1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings$2;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    # getter for: Lcom/android/mms/settings/FreeMessageSettings;->mLogInOutProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/mms/settings/FreeMessageSettings;->access$400(Lcom/android/mms/settings/FreeMessageSettings;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings$2;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    # getter for: Lcom/android/mms/settings/FreeMessageSettings;->mLogInOutProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/mms/settings/FreeMessageSettings;->access$400(Lcom/android/mms/settings/FreeMessageSettings;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings$2;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    # getter for: Lcom/android/mms/settings/FreeMessageSettings;->mLogInOutProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/mms/settings/FreeMessageSettings;->access$400(Lcom/android/mms/settings/FreeMessageSettings;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings$2;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    # setter for: Lcom/android/mms/settings/FreeMessageSettings;->mLogInOutProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v5}, Lcom/android/mms/settings/FreeMessageSettings;->access$402(Lcom/android/mms/settings/FreeMessageSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_2
    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings$2;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    iget-object v1, v1, Lcom/android/mms/settings/FreeMessageSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/settings/FreeMessageSettings$2;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    # getter for: Lcom/android/mms/settings/FreeMessageSettings;->mSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/mms/settings/FreeMessageSettings;->access$500(Lcom/android/mms/settings/FreeMessageSettings;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->changeFreeMessageOption(Landroid/content/Context;Z)Z

    const-string v1, "Mms/FreeMessageSettings"

    const-string v2, "Success to Free message login"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v1, "Mms/FreeMessageSettings"

    const-string v2, "fail to Free message login"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings$2;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    # getter for: Lcom/android/mms/settings/FreeMessageSettings;->mLogInOutProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/mms/settings/FreeMessageSettings;->access$400(Lcom/android/mms/settings/FreeMessageSettings;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings$2;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    # getter for: Lcom/android/mms/settings/FreeMessageSettings;->mLogInOutProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/mms/settings/FreeMessageSettings;->access$400(Lcom/android/mms/settings/FreeMessageSettings;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings$2;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    # getter for: Lcom/android/mms/settings/FreeMessageSettings;->mLogInOutProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/mms/settings/FreeMessageSettings;->access$400(Lcom/android/mms/settings/FreeMessageSettings;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings$2;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    # setter for: Lcom/android/mms/settings/FreeMessageSettings;->mLogInOutProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v5}, Lcom/android/mms/settings/FreeMessageSettings;->access$402(Lcom/android/mms/settings/FreeMessageSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_4
    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings$2;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    iget-object v2, p0, Lcom/android/mms/settings/FreeMessageSettings$2;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    # getter for: Lcom/android/mms/settings/FreeMessageSettings;->detectLogin:Z
    invoke-static {v2}, Lcom/android/mms/settings/FreeMessageSettings;->access$200(Lcom/android/mms/settings/FreeMessageSettings;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/mms/settings/FreeMessageSettings;->makeCannotChangeDialog(Z)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "com.sec.orca.easysignup.ACTION_SERVICE_OFF_RESULT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings$2;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    const-string v2, "extra_service_off_result"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/android/mms/settings/FreeMessageSettings;->result:I
    invoke-static {v1, v2}, Lcom/android/mms/settings/FreeMessageSettings;->access$102(Lcom/android/mms/settings/FreeMessageSettings;I)I

    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings$2;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    const/4 v2, 0x0

    # setter for: Lcom/android/mms/settings/FreeMessageSettings;->detectLogin:Z
    invoke-static {v1, v2}, Lcom/android/mms/settings/FreeMessageSettings;->access$202(Lcom/android/mms/settings/FreeMessageSettings;Z)Z

    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings$2;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    # getter for: Lcom/android/mms/settings/FreeMessageSettings;->result:I
    invoke-static {v1}, Lcom/android/mms/settings/FreeMessageSettings;->access$100(Lcom/android/mms/settings/FreeMessageSettings;)I

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings$2;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    iget-object v2, p0, Lcom/android/mms/settings/FreeMessageSettings$2;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    iget-object v2, v2, Lcom/android/mms/settings/FreeMessageSettings;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/sec/orca/easysignup/sdk/EasySignUpManager;->getServiceStatus(Landroid/content/Context;I)I

    move-result v2

    # setter for: Lcom/android/mms/settings/FreeMessageSettings;->serviceStatus:I
    invoke-static {v1, v2}, Lcom/android/mms/settings/FreeMessageSettings;->access$302(Lcom/android/mms/settings/FreeMessageSettings;I)I

    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings$2;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    # getter for: Lcom/android/mms/settings/FreeMessageSettings;->serviceStatus:I
    invoke-static {v1}, Lcom/android/mms/settings/FreeMessageSettings;->access$300(Lcom/android/mms/settings/FreeMessageSettings;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings$2;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    # getter for: Lcom/android/mms/settings/FreeMessageSettings;->mLogInOutProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/mms/settings/FreeMessageSettings;->access$400(Lcom/android/mms/settings/FreeMessageSettings;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings$2;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    # getter for: Lcom/android/mms/settings/FreeMessageSettings;->mLogInOutProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/mms/settings/FreeMessageSettings;->access$400(Lcom/android/mms/settings/FreeMessageSettings;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings$2;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    # getter for: Lcom/android/mms/settings/FreeMessageSettings;->mLogInOutProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/mms/settings/FreeMessageSettings;->access$400(Lcom/android/mms/settings/FreeMessageSettings;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings$2;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    # setter for: Lcom/android/mms/settings/FreeMessageSettings;->mLogInOutProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v5}, Lcom/android/mms/settings/FreeMessageSettings;->access$402(Lcom/android/mms/settings/FreeMessageSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_6
    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings$2;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    iget-object v1, v1, Lcom/android/mms/settings/FreeMessageSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/settings/FreeMessageSettings$2;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    # getter for: Lcom/android/mms/settings/FreeMessageSettings;->mSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/mms/settings/FreeMessageSettings;->access$500(Lcom/android/mms/settings/FreeMessageSettings;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->changeFreeMessageOption(Landroid/content/Context;Z)Z

    const-string v1, "Mms/FreeMessageSettings"

    const-string v2, "Success to Free message logout"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v1, "Mms/FreeMessageSettings"

    const-string v2, "fail to Free message logout"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings$2;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    # getter for: Lcom/android/mms/settings/FreeMessageSettings;->mLogInOutProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/mms/settings/FreeMessageSettings;->access$400(Lcom/android/mms/settings/FreeMessageSettings;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings$2;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    # getter for: Lcom/android/mms/settings/FreeMessageSettings;->mLogInOutProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/mms/settings/FreeMessageSettings;->access$400(Lcom/android/mms/settings/FreeMessageSettings;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings$2;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    # getter for: Lcom/android/mms/settings/FreeMessageSettings;->mLogInOutProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/mms/settings/FreeMessageSettings;->access$400(Lcom/android/mms/settings/FreeMessageSettings;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings$2;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    # setter for: Lcom/android/mms/settings/FreeMessageSettings;->mLogInOutProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v5}, Lcom/android/mms/settings/FreeMessageSettings;->access$402(Lcom/android/mms/settings/FreeMessageSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_8
    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings$2;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    iget-object v2, p0, Lcom/android/mms/settings/FreeMessageSettings$2;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    # getter for: Lcom/android/mms/settings/FreeMessageSettings;->detectLogin:Z
    invoke-static {v2}, Lcom/android/mms/settings/FreeMessageSettings;->access$200(Lcom/android/mms/settings/FreeMessageSettings;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/mms/settings/FreeMessageSettings;->makeCannotChangeDialog(Z)V

    goto/16 :goto_0
.end method
