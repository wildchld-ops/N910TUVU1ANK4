.class public Lcom/android/incallui/callerinfocard/item/MessageItem;
.super Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;
.source "MessageItem.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V

    return-void
.end method

.method private getLogTypeDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020450

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020451

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getMessageTypeDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "mms"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020458

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "change_message_icon_for_att"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020459

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02045a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "change_message_icon_for_att"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02045b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private setLogType(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/callerinfocard/item/MessageItem;->getLogTypeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mImageType1:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method private setMainText(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, -0x1

    const/4 v3, 0x0

    const-string v5, "sub_cs"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    :cond_0
    const/4 v2, 0x0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v1, v3, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    const/4 v4, 0x0

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    if-nez v4, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mMainText:Ljava/lang/String;

    :goto_0
    iget-object v5, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mMainText:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mMainTextTTS:Ljava/lang/String;

    return-void

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mMainText:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iput-object v4, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mMainText:Ljava/lang/String;

    goto :goto_0
.end method

.method private setMessageType(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/incallui/callerinfocard/item/MessageItem;->getMessageTypeDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mImageType2:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public launch()V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    const-string v3, "smsto"

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mCookieWrapper:Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;

    iget-object v1, v1, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    check-cast v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "com.android.mms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected setItem(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, -0x1

    if-nez p3, :cond_0

    const-string v2, "MessageItem"

    const-string v3, "cursor is null"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mDeleted:Z

    :goto_0
    return-void

    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "MessageItem"

    const-string v3, "cursor count is 0. return false"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    const/4 p3, 0x0

    iput-boolean v4, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mDeleted:Z

    goto :goto_0

    :cond_1
    const v2, 0x7f0200a2

    invoke-virtual {p0, v2}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setAppIcon(I)V

    const-string v2, "change_message_icon_for_att"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0200a3

    invoke-virtual {p0, v2}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setAppIcon(I)V

    :cond_2
    const v2, 0x7f090331

    invoke-virtual {p0, p1, v2}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setTitle(Landroid/content/Context;I)V

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "transport_type"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_4

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mms"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "msg_box"

    invoke-direct {p0, p3, v2}, Lcom/android/incallui/callerinfocard/item/MessageItem;->setLogType(Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v2, "date"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_3

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mUpdateTime:J

    iget-wide v2, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mUpdateTime:J

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getUpdateTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mUpdateTimeString:Ljava/lang/String;

    :cond_3
    invoke-direct {p0, v1}, Lcom/android/incallui/callerinfocard/item/MessageItem;->setMessageType(Ljava/lang/String;)V

    const-string v2, "sub"

    const-string v3, "text"

    invoke-direct {p0, p3, v2, v3}, Lcom/android/incallui/callerinfocard/item/MessageItem;->setMainText(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_5
    const-string v2, "type"

    invoke-direct {p0, p3, v2}, Lcom/android/incallui/callerinfocard/item/MessageItem;->setLogType(Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v2, "date"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_6

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mUpdateTime:J

    iget-wide v2, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mUpdateTime:J

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getUpdateTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mUpdateTimeString:Ljava/lang/String;

    :cond_6
    invoke-direct {p0, v1}, Lcom/android/incallui/callerinfocard/item/MessageItem;->setMessageType(Ljava/lang/String;)V

    const-string v2, "body"

    invoke-virtual {p0, p3, v2}, Lcom/android/incallui/callerinfocard/item/MessageItem;->setMainText(Landroid/database/Cursor;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected setMainText(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 4

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "\n"

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mMainText:Ljava/lang/String;

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mMainText:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mMainTextTTS:Ljava/lang/String;

    return-void
.end method
