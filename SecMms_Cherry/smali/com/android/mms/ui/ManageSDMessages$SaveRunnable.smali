.class Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;
.super Ljava/lang/Object;
.source "ManageSDMessages.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ManageSDMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ManageSDMessages;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ManageSDMessages;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ManageSDMessages;Lcom/android/mms/ui/ManageSDMessages$1;)V
    .locals 0
    .param p1    # Lcom/android/mms/ui/ManageSDMessages;
    .param p2    # Lcom/android/mms/ui/ManageSDMessages$1;

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;-><init>(Lcom/android/mms/ui/ManageSDMessages;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->finish:Z
    invoke-static {v3}, Lcom/android/mms/ui/ManageSDMessages;->access$1200(Lcom/android/mms/ui/ManageSDMessages;)Z

    move-result v3

    if-eqz v3, :cond_2

    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/mms/ui/ManageSDMessages;->access$1300(Lcom/android/mms/ui/ManageSDMessages;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/mms/ui/ManageSDMessages;->access$1300(Lcom/android/mms/ui/ManageSDMessages;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    :goto_0
    # setter for: Lcom/android/mms/ui/ManageSDMessages;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v3, v5}, Lcom/android/mms/ui/ManageSDMessages;->access$1302(Lcom/android/mms/ui/ManageSDMessages;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v3, p0, Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    goto :goto_0

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # setter for: Lcom/android/mms/ui/ManageSDMessages;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/android/mms/ui/ManageSDMessages;->access$1302(Lcom/android/mms/ui/ManageSDMessages;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    throw v3

    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/mms/ui/ManageSDMessages;->access$1100(Lcom/android/mms/ui/ManageSDMessages;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/mms/ui/ManageSDMessages;->access$1100(Lcom/android/mms/ui/ManageSDMessages;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    long-to-int v4, v0

    # invokes: Lcom/android/mms/ui/ManageSDMessages;->copyToPhoneMemory(I)Z
    invoke-static {v3, v4}, Lcom/android/mms/ui/ManageSDMessages;->access$1400(Lcom/android/mms/ui/ManageSDMessages;I)Z

    iget-object v3, p0, Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mUncheckItems:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/mms/ui/ManageSDMessages;->access$1500(Lcom/android/mms/ui/ManageSDMessages;)Ljava/util/ArrayList;

    move-result-object v3

    long-to-int v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/mms/ui/ManageSDMessages;->access$1300(Lcom/android/mms/ui/ManageSDMessages;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    iget-object v3, p0, Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/mms/ui/ManageSDMessages;->access$1100(Lcom/android/mms/ui/ManageSDMessages;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/mms/ui/ManageSDMessages;->access$1100(Lcom/android/mms/ui/ManageSDMessages;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/ManageSDMessages;->access$800(Lcom/android/mms/ui/ManageSDMessages;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # setter for: Lcom/android/mms/ui/ManageSDMessages;->finish:Z
    invoke-static {v3, v7}, Lcom/android/mms/ui/ManageSDMessages;->access$1202(Lcom/android/mms/ui/ManageSDMessages;Z)Z

    iget-object v3, p0, Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/ManageSDMessages;->access$800(Lcom/android/mms/ui/ManageSDMessages;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method
