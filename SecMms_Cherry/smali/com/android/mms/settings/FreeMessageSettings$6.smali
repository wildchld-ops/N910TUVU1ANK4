.class Lcom/android/mms/settings/FreeMessageSettings$6;
.super Ljava/lang/Object;
.source "FreeMessageSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/settings/FreeMessageSettings;->startChangeFreeMessageStatusProgressDialogDismissTimer(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/settings/FreeMessageSettings;

.field final synthetic val$detectLogin:Z


# direct methods
.method constructor <init>(Lcom/android/mms/settings/FreeMessageSettings;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/settings/FreeMessageSettings$6;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    iput-boolean p2, p0, Lcom/android/mms/settings/FreeMessageSettings$6;->val$detectLogin:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/settings/FreeMessageSettings$6;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    # getter for: Lcom/android/mms/settings/FreeMessageSettings;->mLogInOutProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/settings/FreeMessageSettings;->access$400(Lcom/android/mms/settings/FreeMessageSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/settings/FreeMessageSettings$6;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    # getter for: Lcom/android/mms/settings/FreeMessageSettings;->mLogInOutProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/settings/FreeMessageSettings;->access$400(Lcom/android/mms/settings/FreeMessageSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/settings/FreeMessageSettings$6;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    # getter for: Lcom/android/mms/settings/FreeMessageSettings;->mLogInOutProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/settings/FreeMessageSettings;->access$400(Lcom/android/mms/settings/FreeMessageSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/android/mms/settings/FreeMessageSettings$6;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    const/4 v1, 0x0

    # setter for: Lcom/android/mms/settings/FreeMessageSettings;->mLogInOutProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/mms/settings/FreeMessageSettings;->access$402(Lcom/android/mms/settings/FreeMessageSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/mms/settings/FreeMessageSettings$6;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    iget-boolean v1, p0, Lcom/android/mms/settings/FreeMessageSettings$6;->val$detectLogin:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/settings/FreeMessageSettings;->makeCannotChangeDialog(Z)V

    :cond_0
    return-void
.end method
