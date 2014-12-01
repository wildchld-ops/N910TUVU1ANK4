.class Lcom/android/mms/ui/RecipientFilterItem$ContactProfileSyncTask;
.super Landroid/os/AsyncTask;
.source "RecipientFilterItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/RecipientFilterItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactProfileSyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/RecipientFilterItem;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/RecipientFilterItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/RecipientFilterItem$ContactProfileSyncTask;->this$0:Lcom/android/mms/ui/RecipientFilterItem;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/RecipientFilterItem;Lcom/android/mms/ui/RecipientFilterItem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/RecipientFilterItem$ContactProfileSyncTask;-><init>(Lcom/android/mms/ui/RecipientFilterItem;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 13

    const/4 v0, 0x0

    const/4 v3, 0x0

    aget-object v1, p1, v0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const/4 v12, 0x0

    const/4 v10, 0x0

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/RecipientFilterItem$ContactProfileSyncTask;->this$0:Lcom/android/mms/ui/RecipientFilterItem;

    # getter for: Lcom/android/mms/ui/RecipientFilterItem;->mAdapter:Lcom/android/mms/ui/RecipientsAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/RecipientFilterItem;->access$200(Lcom/android/mms/ui/RecipientFilterItem;)Lcom/android/mms/ui/RecipientsAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/RecipientFilterItem$ContactProfileSyncTask;->this$0:Lcom/android/mms/ui/RecipientFilterItem;

    # getter for: Lcom/android/mms/ui/RecipientFilterItem;->mAdapter:Lcom/android/mms/ui/RecipientsAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/RecipientFilterItem;->access$200(Lcom/android/mms/ui/RecipientFilterItem;)Lcom/android/mms/ui/RecipientsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsAdapter;->getCache()Landroid/util/LruCache;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/RecipientFilterItem$ContactProfileSyncTask;->this$0:Lcom/android/mms/ui/RecipientFilterItem;

    # getter for: Lcom/android/mms/ui/RecipientFilterItem;->mAdapter:Lcom/android/mms/ui/RecipientsAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/RecipientFilterItem;->access$200(Lcom/android/mms/ui/RecipientFilterItem;)Lcom/android/mms/ui/RecipientsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsAdapter;->getCache()Landroid/util/LruCache;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    if-eqz v12, :cond_2

    const/4 v10, 0x1

    :cond_2
    if-eqz v10, :cond_3

    const/4 v6, 0x0

    const/4 v0, 0x0

    :try_start_0
    array-length v2, v12

    invoke-static {v12, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    const/4 v7, 0x0

    move-object v3, v6

    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_1
    const-string v0, "Mms/RecipientFilterItem"

    const-string v2, "bindView Error"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v6, 0x0

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/RecipientFilterItem$ContactProfileSyncTask;->this$0:Lcom/android/mms/ui/RecipientFilterItem;

    # getter for: Lcom/android/mms/ui/RecipientFilterItem;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/RecipientFilterItem;->access$300(Lcom/android/mms/ui/RecipientFilterItem;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mms/ui/RecipientFilterItem$PhotoQuery;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_5

    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    iget-object v0, p0, Lcom/android/mms/ui/RecipientFilterItem$ContactProfileSyncTask;->this$0:Lcom/android/mms/ui/RecipientFilterItem;

    # getter for: Lcom/android/mms/ui/RecipientFilterItem;->mAdapter:Lcom/android/mms/ui/RecipientsAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/RecipientFilterItem;->access$200(Lcom/android/mms/ui/RecipientFilterItem;)Lcom/android/mms/ui/RecipientsAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/RecipientFilterItem$ContactProfileSyncTask;->this$0:Lcom/android/mms/ui/RecipientFilterItem;

    # getter for: Lcom/android/mms/ui/RecipientFilterItem;->mAdapter:Lcom/android/mms/ui/RecipientsAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/RecipientFilterItem;->access$200(Lcom/android/mms/ui/RecipientFilterItem;)Lcom/android/mms/ui/RecipientsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsAdapter;->getCache()Landroid/util/LruCache;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/RecipientFilterItem$ContactProfileSyncTask;->this$0:Lcom/android/mms/ui/RecipientFilterItem;

    # getter for: Lcom/android/mms/ui/RecipientFilterItem;->mAdapter:Lcom/android/mms/ui/RecipientsAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/RecipientFilterItem;->access$200(Lcom/android/mms/ui/RecipientFilterItem;)Lcom/android/mms/ui/RecipientsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsAdapter;->getCache()Landroid/util/LruCache;

    move-result-object v0

    invoke-virtual {v0, v1, v12}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_4
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v12, :cond_0

    const/4 v6, 0x0

    const/4 v0, 0x0

    :try_start_3
    array-length v2, v12

    invoke-static {v12, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v6

    const/4 v7, 0x0

    move-object v3, v6

    goto/16 :goto_0

    :catch_1
    move-exception v9

    :try_start_4
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0

    :catch_2
    move-exception v8

    :try_start_5
    const-string v0, "Mms/RecipientFilterItem"

    const-string v2, "bindView Error"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v6, 0x0

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    const/4 v6, 0x0

    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/RecipientFilterItem$ContactProfileSyncTask;->doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected onCancelled(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/RecipientFilterItem$ContactProfileSyncTask;->onCancelled(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/RecipientFilterItem$ContactProfileSyncTask;->this$0:Lcom/android/mms/ui/RecipientFilterItem;

    # getter for: Lcom/android/mms/ui/RecipientFilterItem;->mAvatar:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/mms/ui/RecipientFilterItem;->access$100(Lcom/android/mms/ui/RecipientFilterItem;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/RecipientFilterItem$ContactProfileSyncTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
