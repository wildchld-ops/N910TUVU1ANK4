.class public Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceGooglePlusItem;
.super Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;
.source "SocialNetworkServiceGooglePlusItem.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V

    return-void
.end method

.method private loadProfileIntentWithRawContactId(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 10

    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.android.contacts/raw_contacts/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "mimetype"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "profile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_1
    invoke-virtual {v7, v9, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v7

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method


# virtual methods
.method public getAppIconResourceId()I
    .locals 1

    const v0, 0x7f02009f

    return v0
.end method

.method public getCommentsCountColumnName()Ljava/lang/String;
    .locals 1

    const-string v0, "comments_count"

    return-object v0
.end method

.method public getLikesCountColumnName()Ljava/lang/String;
    .locals 1

    const-string v0, "likes_count"

    return-object v0
.end method

.method public getLocationColumnName()Ljava/lang/String;
    .locals 1

    const-string v0, "location_name"

    return-object v0
.end method

.method public getMessageColumnName()Ljava/lang/String;
    .locals 1

    const-string v0, "message"

    return-object v0
.end method

.method public getPictureColumnName()Ljava/lang/String;
    .locals 1

    const-string v0, "media_url"

    return-object v0
.end method

.method public getUpdateColumnName()Ljava/lang/String;
    .locals 1

    const-string v0, "timestamp_utc"

    return-object v0
.end method

.method public launch()V
    .locals 4

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mCookieWrapper:Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;

    iget-wide v2, v2, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->id:J

    invoke-direct {p0, v1, v2, v3}, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceGooglePlusItem;->loadProfileIntentWithRawContactId(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected setItem(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;->setItem(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V

    return-void
.end method
