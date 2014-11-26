.class Lcom/android/mms/freemessage/FreeMessageReceiverService$1;
.super Ljava/lang/Object;
.source "FreeMessageReceiverService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/freemessage/FreeMessageReceiverService;->handleFreeFileTransferAttached(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/freemessage/FreeMessageReceiverService;

.field final synthetic val$FreeMessageUri:Landroid/net/Uri;

.field final synthetic val$MediaUri:Landroid/net/Uri;

.field final synthetic val$chatType:I

.field final synthetic val$content_type:Ljava/lang/String;

.field final synthetic val$file_path:Ljava/lang/String;

.field final synthetic val$file_size:J

.field final synthetic val$mediaId:J

.field final synthetic val$msgType:I

.field final synthetic val$recipientList:Ljava/util/ArrayList;

.field final synthetic val$sessionID:Ljava/lang/String;

.field final synthetic val$threadID:J

.field final synthetic val$transactionID:J

.field final synthetic val$writingBuddyBitmap:Z


# direct methods
.method constructor <init>(Lcom/android/mms/freemessage/FreeMessageReceiverService;Landroid/net/Uri;ZLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/util/ArrayList;JIIJLandroid/net/Uri;)V
    .locals 2

    iput-object p1, p0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->this$0:Lcom/android/mms/freemessage/FreeMessageReceiverService;

    iput-object p2, p0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->val$FreeMessageUri:Landroid/net/Uri;

    iput-boolean p3, p0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->val$writingBuddyBitmap:Z

    iput-object p4, p0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->val$file_path:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->val$content_type:Ljava/lang/String;

    iput-wide p6, p0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->val$mediaId:J

    iput-wide p8, p0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->val$file_size:J

    iput-object p10, p0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->val$sessionID:Ljava/lang/String;

    iput-object p11, p0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->val$recipientList:Ljava/util/ArrayList;

    iput-wide p12, p0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->val$transactionID:J

    move/from16 v0, p14

    iput v0, p0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->val$msgType:I

    move/from16 v0, p15

    iput v0, p0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->val$chatType:I

    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->val$threadID:J

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->val$MediaUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    sget-object v1, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageFT;->URI_FILE:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->val$FreeMessageUri:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-static {v1, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    sget-object v1, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageFT;->URI_THUMBNAIL:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->val$FreeMessageUri:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-static {v1, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->val$writingBuddyBitmap:Z

    if-eqz v1, :cond_0

    sget-object v3, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageFT;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->this$0:Lcom/android/mms/freemessage/FreeMessageReceiverService;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v1, "status"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->this$0:Lcom/android/mms/freemessage/FreeMessageReceiverService;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->val$FreeMessageUri:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->this$0:Lcom/android/mms/freemessage/FreeMessageReceiverService;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v15}, Lcom/android/mms/ui/MessageUtils;->getPathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->this$0:Lcom/android/mms/freemessage/FreeMessageReceiverService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->val$file_path:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->val$writingBuddyBitmap:Z

    # invokes: Lcom/android/mms/freemessage/FreeMessageReceiverService;->createImageThumbnail(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Z)Z
    invoke-static {v1, v15, v15, v5, v6}, Lcom/android/mms/freemessage/FreeMessageReceiverService;->access$000(Lcom/android/mms/freemessage/FreeMessageReceiverService;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Z)Z

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->val$content_type:Ljava/lang/String;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->val$content_type:Ljava/lang/String;

    const-string v5, "image"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->this$0:Lcom/android/mms/freemessage/FreeMessageReceiverService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->val$file_path:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->val$writingBuddyBitmap:Z

    move-object/from16 v0, v17

    # invokes: Lcom/android/mms/freemessage/FreeMessageReceiverService;->createImageThumbnail(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Z)Z
    invoke-static {v1, v15, v0, v5, v6}, Lcom/android/mms/freemessage/FreeMessageReceiverService;->access$000(Lcom/android/mms/freemessage/FreeMessageReceiverService;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Z)Z

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->this$0:Lcom/android/mms/freemessage/FreeMessageReceiverService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->this$0:Lcom/android/mms/freemessage/FreeMessageReceiverService;

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->val$mediaId:J

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->val$writingBuddyBitmap:Z

    if-eqz v1, :cond_4

    move-object/from16 v9, v18

    :goto_1
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->val$file_size:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->val$content_type:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->val$FreeMessageUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/mms/freemessage/FreeMessageReceiverService;->storeContent(Landroid/content/Context;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    invoke-static/range {v5 .. v13}, Lcom/android/mms/freemessage/FreeMessageReceiverService;->access$200(Lcom/android/mms/freemessage/FreeMessageReceiverService;Landroid/content/Context;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->val$FreeMessageUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->val$sessionID:Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v16, Landroid/content/Intent;

    const-string v1, "com.sec.orca.freemessage.intent.ACTION_SEND_CHAT_REQUEST"

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra_receivers_list"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->val$recipientList:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "extra_msg_id"

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->val$transactionID:J

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "extra_msg_type"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->val$msgType:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "extra_session_id"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->val$sessionID:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_chat_type"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->val$chatType:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "extra_thread_id"

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->val$threadID:J

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "extra_media_uri"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->val$MediaUri:Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "extra_media_type"

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->this$0:Lcom/android/mms/freemessage/FreeMessageReceiverService;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_2
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->val$content_type:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->val$content_type:Ljava/lang/String;

    const-string v5, "video"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->this$0:Lcom/android/mms/freemessage/FreeMessageReceiverService;

    move-object/from16 v0, v17

    # invokes: Lcom/android/mms/freemessage/FreeMessageReceiverService;->createVideoThumbnail(Landroid/net/Uri;Landroid/net/Uri;)Z
    invoke-static {v1, v15, v0}, Lcom/android/mms/freemessage/FreeMessageReceiverService;->access$100(Lcom/android/mms/freemessage/FreeMessageReceiverService;Landroid/net/Uri;Landroid/net/Uri;)Z

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mms/freemessage/FreeMessageReceiverService$1;->val$file_path:Ljava/lang/String;

    goto/16 :goto_1
.end method
