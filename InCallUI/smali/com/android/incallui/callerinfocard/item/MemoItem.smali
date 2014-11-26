.class public Lcom/android/incallui/callerinfocard/item/MemoItem;
.super Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;
.source "MemoItem.java"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static mContactCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;


# instance fields
.field private mId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.memo/memo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/callerinfocard/item/MemoItem;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;ZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .param p4    # Z
    .param p5    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    const/16 v4, 0x12f

    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;-><init>()V

    const-string v1, "MemoItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new MemoItem... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x12e

    if-eq p2, v1, :cond_1

    if-eq p2, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_0

    sput-object p5, Lcom/android/incallui/callerinfocard/item/MemoItem;->mContactCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iput-object p1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    const/16 v1, 0x12d

    iput v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mAppType:I

    iput-boolean p4, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mUpdated:Z

    iput-object p3, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mFilePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setActionMemoThumbnail(Ljava/lang/String;)V

    const v1, 0x7f020099

    invoke-virtual {p0, v1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setAppIcon(I)V

    const v1, 0x7f090330

    invoke-virtual {p0, p1, v1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setTitle(Landroid/content/Context;I)V

    if-ne p2, v4, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setDeleted(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getDeleted()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/incallui/InCallUtils;->setActionMemoFilePathForLog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mFilePath:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/incallui/InCallUtils;->setActionMemoFilePathForLog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/net/Uri;
    .param p3    # Landroid/database/Cursor;
    .param p4    # Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V

    return-void
.end method

.method private getCallerName()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/android/incallui/callerinfocard/item/MemoItem;->mContactCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/incallui/callerinfocard/item/MemoItem;->mContactCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method private getPhoneNumber()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/android/incallui/callerinfocard/item/MemoItem;->mContactCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/incallui/callerinfocard/item/MemoItem;->mContactCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originNumber:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/incallui/callerinfocard/item/MemoItem;->mContactCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originNumber:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcom/android/incallui/callerinfocard/item/MemoItem;->mContactCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_0
.end method

.method private setActionMemoPath(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/database/Cursor;
    .param p2    # Ljava/lang/String;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mFilePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setActionMemoThumbnail(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setId(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/database/Cursor;
    .param p2    # Ljava/lang/String;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/item/MemoItem;->mId:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public launch()V
    .locals 7

    const/4 v6, 0x1

    const-string v3, "use_action_memo_duringcall"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "com.samsung.android.snote"

    invoke-static {v3}, Lcom/android/incallui/InCallUtils;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mActionMemoThumbnail:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mFilePath:Ljava/lang/String;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/item/MemoItem;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/item/MemoItem;->getCallerName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, v2

    :cond_3
    const-string v3, "MemoItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "launch ActionMemo : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.QUICKMEMO_LAUNCH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "isFromQuickMemo"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "pathFromQuickMemo"

    iget-object v4, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "phonenumbers"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.TITLE"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/incallui/callerinfocard/item/MemoItem;->mId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/incallui/callerinfocard/item/MemoItem;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/callerinfocard/item/MemoItem;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v3, "isCallMode"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v3, 0x10008000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method protected setItem(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/net/Uri;
    .param p3    # Landroid/database/Cursor;
    .param p4    # Ljava/lang/Object;

    const v4, 0x7f090330

    const/4 v3, 0x1

    const-string v1, "use_action_memo_duringcall"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "com.samsung.android.snote"

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "sec_custom1"

    invoke-direct {p0, p3, v1}, Lcom/android/incallui/callerinfocard/item/MemoItem;->setActionMemoPath(Landroid/database/Cursor;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mFilePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mFilePath:Ljava/lang/String;

    const-string v2, "0"

    if-ne v1, v2, :cond_1

    :cond_0
    const-string v1, "MemoItem"

    const-string v2, "setItem : NO FILEPATH..."

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {p0, v3}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setDeleted(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mActionMemoThumbnail:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    const-string v1, "MemoItem"

    const-string v2, "setItem : NO THUMBNAIL..."

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {p0, v3}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setDeleted(Z)V

    goto :goto_0

    :cond_2
    const v1, 0x7f020099

    invoke-virtual {p0, v1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setAppIcon(I)V

    invoke-virtual {p0, p1, v4}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setTitle(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    const v1, 0x7f0200a1

    invoke-virtual {p0, v1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setAppIcon(I)V

    invoke-virtual {p0, p1, v4}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setTitle(Landroid/content/Context;I)V

    const-string v1, "strippedContent"

    invoke-virtual {p0, p3, v1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setMainText(Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v1, "lastModifiedAt"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mUpdateTime:J

    iget-wide v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mUpdateTime:J

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getUpdateTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mUpdateTimeString:Ljava/lang/String;

    :cond_4
    const-string v1, "_id"

    invoke-direct {p0, p3, v1}, Lcom/android/incallui/callerinfocard/item/MemoItem;->setId(Landroid/database/Cursor;Ljava/lang/String;)V

    goto :goto_0
.end method
