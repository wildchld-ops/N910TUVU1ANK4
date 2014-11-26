.class public Lcom/android/mms/ui/VMessageViewerActivity;
.super Landroid/app/Activity;
.source "VMessageViewerActivity.java"


# static fields
.field private static final VMSG_BODY:I = 0x5

.field private static final VMSG_DATE:I = 0x4

.field private static final VMSG_INBOX_ADDR:I = 0x2

.field private static final VMSG_SENT_ADDR:I = 0x3

.field private static final VMSG_TYPE:I


# instance fields
.field private TAG:Ljava/lang/String;

.field private mMessageList:Landroid/widget/ListView;

.field private mMsgListAdapter:Lcom/android/mms/ui/VMessageListAdapter;

.field private msgItem:Lcom/android/mms/ui/MsgItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "VMessageViewerActivity"

    iput-object v0, p0, Lcom/android/mms/ui/VMessageViewerActivity;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public importMessageFromSDCARD()Z
    .locals 18

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    const/4 v12, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v12

    new-instance v1, Lcom/android/mms/ui/VMessage;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/mms/ui/VMessage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v12}, Lcom/android/mms/ui/VMessage;->readStreamFromViewer1(Ljava/io/InputStream;)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v16, Ljava/text/SimpleDateFormat;

    const-string v1, "h:mma, yyyy MMM dd"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v16

    invoke-direct {v0, v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v9, 0x0

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    const-string v1, "SENT"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_0
    if-nez v2, :cond_0

    const v1, 0x7f0c013b

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-nez v17, :cond_1

    const-string v17, "2000.1.1.12.00.00"
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :try_start_1
    invoke-virtual/range {v16 .. v17}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    :goto_1
    const-wide/16 v14, 0x0

    if-eqz v9, :cond_5

    :try_start_2
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    :goto_2
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "SENT"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Landroid/provider/Telephony$Sms$Sent;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    const/4 v1, 0x1

    if-eqz v12, :cond_2

    :try_start_3
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    :cond_2
    :goto_4
    return v1

    :cond_3
    const/4 v1, 0x2

    :try_start_4
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v10

    :try_start_5
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v12, :cond_4

    :try_start_6
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_4
    :goto_5
    const/4 v1, 0x0

    goto :goto_4

    :cond_5
    :try_start_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/VMessageViewerActivity;->TAG:Ljava/lang/String;

    const-string v4, "value of date is null!"

    invoke-static {v1, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    goto :goto_2

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Landroid/provider/Telephony$Sms$Inbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)Landroid/net/Uri;
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    :catch_2
    move-exception v10

    :try_start_8
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v12, :cond_4

    :try_start_9
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_5

    :catch_3
    move-exception v10

    :goto_6
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :catchall_0
    move-exception v1

    if-eqz v12, :cond_7

    :try_start_a
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :cond_7
    :goto_7
    throw v1

    :catch_4
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    :catch_5
    move-exception v10

    goto :goto_6

    :catch_6
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v9, 0x7f0400c1

    invoke-virtual {p0, v9}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    new-instance v9, Lcom/android/mms/ui/MsgItem;

    invoke-direct {v9}, Lcom/android/mms/ui/MsgItem;-><init>()V

    iput-object v9, p0, Lcom/android/mms/ui/VMessageViewerActivity;->msgItem:Lcom/android/mms/ui/MsgItem;

    if-eqz v1, :cond_0

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    new-instance v9, Lcom/android/mms/ui/VMessage;

    invoke-direct {v9, p0}, Lcom/android/mms/ui/VMessage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v8}, Lcom/android/mms/ui/VMessage;->readStreamFromViewer2(Ljava/io/InputStream;)Lcom/android/mms/ui/MsgItem;

    move-result-object v9

    iput-object v9, p0, Lcom/android/mms/ui/VMessageViewerActivity;->msgItem:Lcom/android/mms/ui/MsgItem;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_0

    :try_start_1
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/android/mms/ui/VMessageViewerActivity;->msgItem:Lcom/android/mms/ui/MsgItem;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/mms/ui/VMessageViewerActivity;->msgItem:Lcom/android/mms/ui/MsgItem;

    iget v9, v9, Lcom/android/mms/ui/MsgItem;->boxId:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_1

    iget-object v9, p0, Lcom/android/mms/ui/VMessageViewerActivity;->msgItem:Lcom/android/mms/ui/MsgItem;

    iget v9, v9, Lcom/android/mms/ui/MsgItem;->boxId:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    :cond_1
    iget-object v9, p0, Lcom/android/mms/ui/VMessageViewerActivity;->msgItem:Lcom/android/mms/ui/MsgItem;

    iget-object v9, v9, Lcom/android/mms/ui/MsgItem;->body:Ljava/lang/String;

    if-nez v9, :cond_4

    :cond_2
    const v9, 0x7f0c026e

    const/4 v10, 0x0

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void

    :catch_0
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_0

    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v7

    :goto_2
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v6

    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v8, :cond_0

    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    :catch_3
    move-exception v7

    goto :goto_2

    :catch_4
    move-exception v2

    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v8, :cond_0

    :try_start_7
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_0

    :catch_5
    move-exception v7

    goto :goto_2

    :catchall_0
    move-exception v9

    if-eqz v8, :cond_3

    :try_start_8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :cond_3
    :goto_3
    throw v9

    :cond_4
    const v9, 0x7f0b03c0

    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ListView;

    iput-object v9, p0, Lcom/android/mms/ui/VMessageViewerActivity;->mMessageList:Landroid/widget/ListView;

    new-instance v9, Lcom/android/mms/ui/VMessageListAdapter;

    const v10, 0x7f0400c2

    iget-object v11, p0, Lcom/android/mms/ui/VMessageViewerActivity;->msgItem:Lcom/android/mms/ui/MsgItem;

    invoke-direct {v9, p0, v10, v11}, Lcom/android/mms/ui/VMessageListAdapter;-><init>(Landroid/content/Context;ILcom/android/mms/ui/MsgItem;)V

    iput-object v9, p0, Lcom/android/mms/ui/VMessageViewerActivity;->mMsgListAdapter:Lcom/android/mms/ui/VMessageListAdapter;

    iget-object v9, p0, Lcom/android/mms/ui/VMessageViewerActivity;->mMessageList:Landroid/widget/ListView;

    iget-object v10, p0, Lcom/android/mms/ui/VMessageViewerActivity;->mMsgListAdapter:Lcom/android/mms/ui/VMessageListAdapter;

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v9, 0x7f0b0338

    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    new-instance v9, Lcom/android/mms/ui/VMessageViewerActivity$1;

    invoke-direct {v9, p0}, Lcom/android/mms/ui/VMessageViewerActivity$1;-><init>(Lcom/android/mms/ui/VMessageViewerActivity;)V

    invoke-virtual {v4, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v9, 0x7f0b0339

    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v9, Lcom/android/mms/ui/VMessageViewerActivity$2;

    invoke-direct {v9, p0}, Lcom/android/mms/ui/VMessageViewerActivity$2;-><init>(Lcom/android/mms/ui/VMessageViewerActivity;)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :catch_6
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :catch_7
    move-exception v7

    goto :goto_2
.end method
