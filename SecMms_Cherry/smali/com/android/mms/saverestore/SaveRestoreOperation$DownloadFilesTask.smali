.class Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;
.super Landroid/os/AsyncTask;
.source "SaveRestoreOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/saverestore/SaveRestoreOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadFilesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field mProgressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;


# direct methods
.method private constructor <init>(Lcom/android/mms/saverestore/SaveRestoreOperation;)V
    .locals 1

    iput-object p1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/saverestore/SaveRestoreOperation;Lcom/android/mms/saverestore/SaveRestoreOperation$1;)V
    .locals 0
    .param p1    # Lcom/android/mms/saverestore/SaveRestoreOperation;
    .param p2    # Lcom/android/mms/saverestore/SaveRestoreOperation$1;

    invoke-direct {p0, p1}, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;-><init>(Lcom/android/mms/saverestore/SaveRestoreOperation;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 12
    .param p1    # [Ljava/lang/Void;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v6, "Mms/SaveRestoreOperation"

    const-string v9, "Inside  doInBackground called !!!"

    invoke-static {v6, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x1

    const/4 v1, 0x0

    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v6, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$1000(Lcom/android/mms/saverestore/SaveRestoreOperation;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_6

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_1
    return-object v6

    :cond_0
    new-array v6, v8, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-virtual {p0, v6}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$1000(Lcom/android/mms/saverestore/SaveRestoreOperation;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/saverestore/SavedSmsMessage;

    invoke-virtual {v6}, Lcom/android/mms/saverestore/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v6

    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v2, 0x1

    const-string v6, "type"

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_2
    const-string v9, "date"

    iget-object v6, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$1000(Lcom/android/mms/saverestore/SaveRestoreOperation;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/saverestore/SavedSmsMessage;

    invoke-virtual {v6}, Lcom/android/mms/saverestore/SavedSmsMessage;->getDate()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "read"

    iget-object v6, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$1000(Lcom/android/mms/saverestore/SaveRestoreOperation;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/saverestore/SavedSmsMessage;

    invoke-virtual {v6}, Lcom/android/mms/saverestore/SavedSmsMessage;->getRead()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "type"

    iget-object v6, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$1000(Lcom/android/mms/saverestore/SaveRestoreOperation;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/saverestore/SavedSmsMessage;

    invoke-virtual {v6}, Lcom/android/mms/saverestore/SavedSmsMessage;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "body"

    iget-object v6, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$1000(Lcom/android/mms/saverestore/SaveRestoreOperation;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/saverestore/SavedSmsMessage;

    invoke-virtual {v6}, Lcom/android/mms/saverestore/SavedSmsMessage;->getBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_4

    iget-object v6, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$300(Lcom/android/mms/saverestore/SaveRestoreOperation;)Landroid/app/Activity;

    move-result-object v9

    iget-object v6, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$1000(Lcom/android/mms/saverestore/SaveRestoreOperation;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/saverestore/SavedSmsMessage;

    invoke-virtual {v6}, Lcom/android/mms/saverestore/SavedSmsMessage;->getCanonicalAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :goto_3
    const-string v6, "thread_id"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "locked"

    iget-object v6, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$1000(Lcom/android/mms/saverestore/SaveRestoreOperation;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/saverestore/SavedSmsMessage;

    invoke-virtual {v6}, Lcom/android/mms/saverestore/SavedSmsMessage;->getLocked()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v6, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$300(Lcom/android/mms/saverestore/SaveRestoreOperation;)Landroid/app/Activity;

    move-result-object v6

    iget-object v9, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mActivity:Landroid/app/Activity;
    invoke-static {v9}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$300(Lcom/android/mms/saverestore/SaveRestoreOperation;)Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v9, v10, v5}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v3, :cond_1

    if-nez v1, :cond_5

    move v3, v7

    :cond_1
    :goto_4
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    const-string v6, "Mms/SaveRestoreOperation"

    const-string v9, "update the draft status for this thread"

    invoke-static {v6, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v6, v9, v10, v8}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V

    const/4 v2, 0x0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    const-string v9, "address"

    iget-object v6, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$1000(Lcom/android/mms/saverestore/SaveRestoreOperation;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/saverestore/SavedSmsMessage;

    invoke-virtual {v6}, Lcom/android/mms/saverestore/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    iget-object v6, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$300(Lcom/android/mms/saverestore/SaveRestoreOperation;)Landroid/app/Activity;

    move-result-object v9

    iget-object v6, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$1000(Lcom/android/mms/saverestore/SaveRestoreOperation;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/saverestore/SavedSmsMessage;

    invoke-virtual {v6}, Lcom/android/mms/saverestore/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto/16 :goto_3

    :cond_5
    move v3, v8

    goto :goto_4

    :cond_6
    if-eqz v3, :cond_7

    const/4 v6, 0x4

    :goto_5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto/16 :goto_1

    :cond_7
    const/4 v6, 0x5

    goto :goto_5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 3

    const-string v0, "Mms/SaveRestoreOperation"

    const-string v1, "DownloadFile onCancelled"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->SaveRestoreDestroyed:Z
    invoke-static {v0}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$1500(Lcom/android/mms/saverestore/SaveRestoreOperation;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->SaveRestoreDestroyed:Z
    invoke-static {v0}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$1500(Lcom/android/mms/saverestore/SaveRestoreOperation;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mHandler:Lcom/android/mms/saverestore/SaveRestoreOperation$MessageHandler;
    invoke-static {v0}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$1600(Lcom/android/mms/saverestore/SaveRestoreOperation;)Lcom/android/mms/saverestore/SaveRestoreOperation$MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mHandler:Lcom/android/mms/saverestore/SaveRestoreOperation$MessageHandler;
    invoke-static {v1}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$1600(Lcom/android/mms/saverestore/SaveRestoreOperation;)Lcom/android/mms/saverestore/SaveRestoreOperation$MessageHandler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1    # Ljava/lang/Integer;

    const-string v0, "Mms/SaveRestoreOperation"

    const-string v1, "DownloadFile task onPostExecute"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->SaveRestoreDestroyed:Z
    invoke-static {v0}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$1500(Lcom/android/mms/saverestore/SaveRestoreOperation;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mHandler:Lcom/android/mms/saverestore/SaveRestoreOperation$MessageHandler;
    invoke-static {v0}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$1600(Lcom/android/mms/saverestore/SaveRestoreOperation;)Lcom/android/mms/saverestore/SaveRestoreOperation$MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mHandler:Lcom/android/mms/saverestore/SaveRestoreOperation$MessageHandler;
    invoke-static {v1}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$1600(Lcom/android/mms/saverestore/SaveRestoreOperation;)Lcom/android/mms/saverestore/SaveRestoreOperation$MessageHandler;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$300(Lcom/android/mms/saverestore/SaveRestoreOperation;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0c0387

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$300(Lcom/android/mms/saverestore/SaveRestoreOperation;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0385

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$1000(Lcom/android/mms/saverestore/SaveRestoreOperation;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, -0x3

    iget-object v2, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$300(Lcom/android/mms/saverestore/SaveRestoreOperation;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c004e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask$1;

    invoke-direct {v3, p0}, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask$1;-><init>(Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1    # [Ljava/lang/Integer;

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
