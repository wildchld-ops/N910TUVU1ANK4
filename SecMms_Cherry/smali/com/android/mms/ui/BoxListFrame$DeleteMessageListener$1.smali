.class Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;
.super Ljava/lang/Object;
.source "BoxListFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    iget-object v0, v0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    iget-object v0, v0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mQueryHandler:Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$1600(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;

    move-result-object v0

    const/16 v1, 0x70a

    new-instance v2, Lcom/android/mms/ui/DeleteInfo;

    const-wide/16 v3, 0x0

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    iget-object v5, v5, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    const/4 v14, 0x0

    invoke-direct {v2, v3, v4, v5, v14}, Lcom/android/mms/ui/DeleteInfo;-><init>(JLandroid/net/Uri;Z)V

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    # getter for: Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->mDeleteStartHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->access$1700(Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    # getter for: Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->mDeleteStartHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->access$1700(Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    iget-object v0, v0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$600(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v7

    const/4 v13, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    iget-boolean v0, v0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->mDeleteLockedMessages:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    iget-object v0, v0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # invokes: Lcom/android/mms/ui/BoxListFrame;->getCountOfNotDelMsg(Landroid/database/Cursor;)I
    invoke-static {v0, v7}, Lcom/android/mms/ui/BoxListFrame;->access$1800(Lcom/android/mms/ui/BoxListFrame;Landroid/database/Cursor;)I

    move-result v13

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    iget-object v0, v0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$600(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    iget-object v1, v1, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mCheckedList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$1900(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_5

    if-nez v13, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    iget-object v0, v0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    iget-object v1, v1, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    iget v1, v1, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    # invokes: Lcom/android/mms/ui/BoxListFrame;->deleteAllMessage(I)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/BoxListFrame;->access$2000(Lcom/android/mms/ui/BoxListFrame;I)V

    :cond_4
    :goto_1
    const-string v0, "ril.sms.gcf-mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "On"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/BoxListFrame;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GCF Mode On"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput v0, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.intent.action.GCF_DEVICE_STORAGE_OK"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    iget-object v0, v0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$1100(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_5
    if-eqz v7, :cond_9

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_6
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    iget-object v0, v0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$600(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v11, v1}, Lcom/android/mms/ui/BoxListAdapter;->isCheckedMsgId(JLjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    const/16 v0, 0xc

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-eqz v12, :cond_7

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    iget-boolean v0, v0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->mDeleteLockedMessages:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    :cond_7
    add-int/lit8 v8, v8, 0x1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    iget-object v0, v0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    iget-boolean v1, v1, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->mDeleteLockedMessages:Z

    # invokes: Lcom/android/mms/ui/BoxListFrame;->deleteMessage(Landroid/database/Cursor;ZII)V
    invoke-static {v0, v7, v1, v8, v13}, Lcom/android/mms/ui/BoxListFrame;->access$2100(Lcom/android/mms/ui/BoxListFrame;Landroid/database/Cursor;ZII)V

    :cond_8
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_9
    if-nez v8, :cond_a

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    iget-object v0, v0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$2200(Lcom/android/mms/ui/BoxListFrame;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    iget-object v0, v0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$2200(Lcom/android/mms/ui/BoxListFrame;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    iget-object v0, v0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$600(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListAdapter;->clearCheckedList()V

    goto/16 :goto_1
.end method
