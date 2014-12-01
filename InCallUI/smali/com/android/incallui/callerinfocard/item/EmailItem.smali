.class public Lcom/android/incallui/callerinfocard/item/EmailItem;
.super Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;
.source "EmailItem.java"


# instance fields
.field private mId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V

    return-void
.end method

.method private getLogTypeDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-object v0

    :sswitch_0
    iget-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020450

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020451

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method private setId(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/item/EmailItem;->mId:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private setLogType(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/callerinfocard/item/EmailItem;->getLogTypeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mImageType1:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method private setSubjectText(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mSubjectText:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public launch()V
    .locals 9

    const/4 v4, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/item/EmailItem;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Email;->CONTENT_URI:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    const-string v3, "_id= ?"

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/android/incallui/callerinfocard/item/EmailItem;->mId:Ljava/lang/String;

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.email"

    const-string v2, "com.android.email.activity.Welcome"

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "vnd.android.cursor.item/email"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.android.email.MessageView_message_id"

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/item/EmailItem;->mId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v7, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "com.android.email.LogProvider"

    const-string v2, "com.android.email.LogProvider"

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x10008000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v7}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->startActivity(Landroid/content/Intent;)V

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected setItem(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 3

    const v1, 0x7f02009b

    invoke-virtual {p0, v1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setAppIcon(I)V

    const-string v1, "change_message_icon_for_att"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f02009c

    invoke-virtual {p0, v1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setAppIcon(I)V

    :cond_0
    const v1, 0x7f090333

    invoke-virtual {p0, p1, v1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setTitle(Landroid/content/Context;I)V

    const-string v1, "subject"

    invoke-direct {p0, p3, v1}, Lcom/android/incallui/callerinfocard/item/EmailItem;->setSubjectText(Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v1, "snippet"

    invoke-virtual {p0, p3, v1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setMainText(Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v1, "mailboxType"

    invoke-direct {p0, p3, v1}, Lcom/android/incallui/callerinfocard/item/EmailItem;->setLogType(Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v1, "timeStamp"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mUpdateTime:J

    iget-wide v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mUpdateTime:J

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getUpdateTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mUpdateTimeString:Ljava/lang/String;

    :cond_1
    const-string v1, "_id"

    invoke-direct {p0, p3, v1}, Lcom/android/incallui/callerinfocard/item/EmailItem;->setId(Landroid/database/Cursor;Ljava/lang/String;)V

    return-void
.end method
