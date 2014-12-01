.class Lcom/android/mms/ui/ComposeMessageFragment$40;
.super Landroid/database/ContentObserver;
.source "ComposeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$40;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$40;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWfcRegistrationIconHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$5100(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$40;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$40;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getRegistrationState(Landroid/content/ContentResolver;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    move-result-object v0

    sget-object v4, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->REGISTERED:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    if-eq v0, v4, :cond_0

    sget-object v4, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->NOT_REGISTERED:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    if-ne v0, v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$40;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWFCRegistered:I
    invoke-static {v4, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$5202(Lcom/android/mms/ui/ComposeMessageFragment;I)I

    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$40;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    sget-object v5, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->REGISTERED:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    if-ne v0, v5, :cond_3

    :goto_0
    # setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsWFCRegistered:Z
    invoke-static {v4, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$5302(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$40;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWFCRegistered:I
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$5200(Lcom/android/mms/ui/ComposeMessageFragment;)I

    move-result v3

    iput v3, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method
