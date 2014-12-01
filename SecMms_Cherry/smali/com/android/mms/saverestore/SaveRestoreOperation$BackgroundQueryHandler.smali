.class Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "SaveRestoreOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/saverestore/SaveRestoreOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;


# direct methods
.method public constructor <init>(Lcom/android/mms/saverestore/SaveRestoreOperation;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 19

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const/4 v13, 0x0

    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v14

    if-lez v14, :cond_0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    iget-object v14, v14, Lcom/android/mms/saverestore/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v7}, Lcom/android/mms/saverestore/SaveRestoreOperation;->saveSmsToSdCard(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mSaveCompleteListener:Lcom/android/mms/saverestore/SaveRestoreOperation$SaveRestoreListener;
    invoke-static {v14}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$000(Lcom/android/mms/saverestore/SaveRestoreOperation;)Lcom/android/mms/saverestore/SaveRestoreOperation$SaveRestoreListener;

    move-result-object v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mSaveCompleteListener:Lcom/android/mms/saverestore/SaveRestoreOperation$SaveRestoreListener;
    invoke-static {v14}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$000(Lcom/android/mms/saverestore/SaveRestoreOperation;)Lcom/android/mms/saverestore/SaveRestoreOperation$SaveRestoreListener;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/mms/saverestore/SaveRestoreOperation$SaveRestoreListener;->onSaveCompleted()V

    :cond_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->MAX_MESSAGES_PER_FILE:I
    invoke-static {v15}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$100(Lcom/android/mms/saverestore/SaveRestoreOperation;)I

    move-result v15

    if-le v14, v15, :cond_2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mSDcardFolderName:Ljava/lang/String;
    invoke-static {v15}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$200(Lcom/android/mms/saverestore/SaveRestoreOperation;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mActivity:Landroid/app/Activity;
    invoke-static {v14}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$300(Lcom/android/mms/saverestore/SaveRestoreOperation;)Landroid/app/Activity;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mActivity:Landroid/app/Activity;
    invoke-static {v15}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$300(Lcom/android/mms/saverestore/SaveRestoreOperation;)Landroid/app/Activity;

    move-result-object v15

    const v16, 0x7f0c038c

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v8, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mSDcardFolderName:Ljava/lang/String;
    invoke-static {v15}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$200(Lcom/android/mms/saverestore/SaveRestoreOperation;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".xml"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mActivity:Landroid/app/Activity;
    invoke-static {v14}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$300(Lcom/android/mms/saverestore/SaveRestoreOperation;)Landroid/app/Activity;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mActivity:Landroid/app/Activity;
    invoke-static {v15}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$300(Lcom/android/mms/saverestore/SaveRestoreOperation;)Landroid/app/Activity;

    move-result-object v15

    const v16, 0x7f0c037e

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_2
    if-eqz p3, :cond_4

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v14

    if-lez v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    move-object/from16 v16, v0

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->MAX_MESSAGES_PER_FILE:I
    invoke-static/range {v16 .. v16}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$100(Lcom/android/mms/saverestore/SaveRestoreOperation;)I

    move-result v16

    add-int v15, v15, v16

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    move-object/from16 v16, v0

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->MAX_MESSAGES_PER_FILE:I
    invoke-static/range {v16 .. v16}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$100(Lcom/android/mms/saverestore/SaveRestoreOperation;)I

    move-result v16

    div-int v15, v15, v16

    # setter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mFileCount:I
    invoke-static {v14, v15}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$402(Lcom/android/mms/saverestore/SaveRestoreOperation;I)I

    check-cast p2, [J

    move-object/from16 v10, p2

    check-cast v10, [J

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mIsThreadId:Z
    invoke-static {v15}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$500(Lcom/android/mms/saverestore/SaveRestoreOperation;)Z

    move-result v15

    # invokes: Lcom/android/mms/saverestore/SaveRestoreOperation;->checkIfMmsInSelection([JZ)V
    invoke-static {v14, v10, v15}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$600(Lcom/android/mms/saverestore/SaveRestoreOperation;[JZ)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    const/4 v15, 0x0

    # setter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mFileCount:I
    invoke-static {v14, v15}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$402(Lcom/android/mms/saverestore/SaveRestoreOperation;I)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # invokes: Lcom/android/mms/saverestore/SaveRestoreOperation;->showNoSmsSelectedDialog()V
    invoke-static {v14}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$700(Lcom/android/mms/saverestore/SaveRestoreOperation;)V

    goto/16 :goto_0

    :pswitch_3
    check-cast p2, [J

    move-object/from16 v10, p2

    check-cast v10, [J

    if-eqz p3, :cond_5

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v14

    if-lez v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # invokes: Lcom/android/mms/saverestore/SaveRestoreOperation;->showMmsSelectedDialog([J)V
    invoke-static {v14, v10}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$800(Lcom/android/mms/saverestore/SaveRestoreOperation;[J)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mIsThreadId:Z
    invoke-static {v15}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$500(Lcom/android/mms/saverestore/SaveRestoreOperation;)Z

    move-result v15

    # invokes: Lcom/android/mms/saverestore/SaveRestoreOperation;->showSavedMsgsListDialog([JZ)V
    invoke-static {v14, v10, v15}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$900(Lcom/android/mms/saverestore/SaveRestoreOperation;[JZ)V

    goto/16 :goto_0

    :pswitch_4
    if-eqz p3, :cond_a

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v14

    if-lez v14, :cond_a

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ""

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$1000(Lcom/android/mms/saverestore/SaveRestoreOperation;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v9, v14, :cond_9

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$1000(Lcom/android/mms/saverestore/SaveRestoreOperation;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/mms/saverestore/SavedSmsMessage;

    invoke-virtual {v14}, Lcom/android/mms/saverestore/SavedSmsMessage;->getBody()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$1000(Lcom/android/mms/saverestore/SaveRestoreOperation;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/mms/saverestore/SavedSmsMessage;

    invoke-virtual {v14}, Lcom/android/mms/saverestore/SavedSmsMessage;->getDate()J

    move-result-wide v3

    const/4 v14, -0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_6
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_7

    const-string v14, "body"

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v14, "date"

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    cmp-long v14, v3, v5

    if-nez v14, :cond_6

    const-string v14, "Mms/SaveRestoreOperation"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Message: ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] is duplicated"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x1

    :cond_7
    if-nez v11, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$1000(Lcom/android/mms/saverestore/SaveRestoreOperation;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # setter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v14, v12}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$1002(Lcom/android/mms/saverestore/SaveRestoreOperation;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    invoke-virtual {v14}, Lcom/android/mms/saverestore/SaveRestoreOperation;->restoreSmsFromSdCard()V

    goto/16 :goto_0

    :cond_a
    const-string v14, "Mms/SaveRestoreOperation"

    const-string v15, "Thread ids not found - there are no duplicated messages"

    invoke-static {v14, v15}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
