.class Lcom/touchtype/personalizer/ContactsParser$1;
.super Landroid/os/AsyncTask;
.source "ContactsParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype/personalizer/ContactsParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/touchtype/personalizer/ContactsParser;


# direct methods
.method constructor <init>(Lcom/touchtype/personalizer/ContactsParser;)V
    .locals 0

    iput-object p1, p0, Lcom/touchtype/personalizer/ContactsParser$1;->this$0:Lcom/touchtype/personalizer/ContactsParser;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/touchtype/personalizer/ContactsParser$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 20
    .param p1    # [Ljava/lang/Void;

    :try_start_0
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype/personalizer/ContactsParser$1;->this$0:Lcom/touchtype/personalizer/ContactsParser;

    # getter for: Lcom/touchtype/personalizer/ContactsParser;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/touchtype/personalizer/ContactsParser;->access$000(Lcom/touchtype/personalizer/ContactsParser;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->getInstance()Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;

    move-result-object v17

    if-eqz v10, :cond_8

    const/4 v14, 0x0

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v19

    if-nez v19, :cond_3

    # getter for: Lcom/touchtype/personalizer/ContactsParser;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/touchtype/personalizer/ContactsParser;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v5, "No messages to parse!"

    invoke-static {v2, v5}, Lcom/touchtype_fluency/service/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v5, 0x0

    const/4 v6, -0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x1

    const/4 v6, -0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :goto_1
    const/4 v2, 0x0

    return-object v2

    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v15, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->learnFieldSpecificContext(Ljava/lang/String;I)V

    :cond_2
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->getPosition()I

    move-result v14

    rem-int/lit8 v2, v14, 0xa

    if-nez v2, :cond_3

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "display_name"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_4

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    const-string v2, " "

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v16, Ljava/util/StringTokenizer;

    const-string v2, " "

    move-object/from16 v0, v16

    invoke-direct {v0, v15, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    const/4 v2, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->learnFieldSpecificContext(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    :catch_0
    move-exception v11

    # getter for: Lcom/touchtype/personalizer/ContactsParser;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/touchtype/personalizer/ContactsParser;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error building Contacts query: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/touchtype_fluency/service/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_4
    :try_start_1
    # getter for: Lcom/touchtype/personalizer/ContactsParser;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/touchtype/personalizer/ContactsParser;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Null message found. Ignoring..."

    invoke-static {v2, v5}, Lcom/touchtype_fluency/service/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v11

    # getter for: Lcom/touchtype/personalizer/ContactsParser;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/touchtype/personalizer/ContactsParser;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Contacts read permission denied: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/touchtype_fluency/service/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype/personalizer/ContactsParser$1;->this$0:Lcom/touchtype/personalizer/ContactsParser;

    # getter for: Lcom/touchtype/personalizer/ContactsParser;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/touchtype/personalizer/ContactsParser;->access$000(Lcom/touchtype/personalizer/ContactsParser;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    :cond_6
    :goto_4
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "data1"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    const/4 v2, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v12, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->learnFieldSpecificContext(Ljava/lang/String;I)V

    goto :goto_4

    :cond_7
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v5, 0x0

    add-int/lit8 v6, v14, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    if-nez v2, :cond_0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype/personalizer/ContactsParser$1;->this$0:Lcom/touchtype/personalizer/ContactsParser;

    # getter for: Lcom/touchtype/personalizer/ContactsParser;->mSession:Lcom/touchtype_fluency/util/SwiftKeySession;
    invoke-static {v2}, Lcom/touchtype/personalizer/ContactsParser;->access$200(Lcom/touchtype/personalizer/ContactsParser;)Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/touchtype_fluency/util/SwiftKeySession;->writeDynamicModel()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_2
    move-exception v11

    const/4 v2, 0x2

    :try_start_4
    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    # getter for: Lcom/touchtype/personalizer/ContactsParser;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/touchtype/personalizer/ContactsParser;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Contacts Parsing cursor was null"

    invoke-static {v2, v5}, Lcom/touchtype_fluency/service/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/touchtype/personalizer/ContactsParser$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1    # Ljava/lang/Void;

    iget-object v0, p0, Lcom/touchtype/personalizer/ContactsParser$1;->this$0:Lcom/touchtype/personalizer/ContactsParser;

    invoke-virtual {v0}, Lcom/touchtype/personalizer/ContactsParser;->onComplete()V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3
    .param p1    # [Ljava/lang/Integer;

    iget-object v0, p0, Lcom/touchtype/personalizer/ContactsParser$1;->this$0:Lcom/touchtype/personalizer/ContactsParser;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/touchtype/personalizer/ContactsParser;->onProgress(II)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/touchtype/personalizer/ContactsParser$1;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
