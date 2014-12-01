.class public Lcom/android/mms/ui/RecipientsAdapter;
.super Landroid/widget/CursorAdapter;
.source "RecipientsAdapter.java"


# static fields
.field public static final CONTACT_ID_INDEX:I = 0x1

.field private static final CONTACT_LIST_FILTER_URI:Landroid/net/Uri;

.field private static final EMAIL_FILTER_URI:Landroid/net/Uri;

.field public static final LABEL_INDEX:I = 0x4

.field public static final MIME_TYPE_INDEX:I = 0x6

.field public static final NAME_INDEX:I = 0x5

.field public static final NUMBER_INDEX:I = 0x3

.field private static final PHONE_FILTER_URI:Landroid/net/Uri;

.field private static final PHOTO_CACHE_SIZE:I = 0x1e

.field public static final PHOTO_THUMBNAIL_URI:I = 0x7

.field public static final PROJECTION_PHONE:[Ljava/lang/String;

.field private static final SORT_ORDER:Ljava/lang/String; = "times_contacted DESC,mimetype DESC,sort_key,data2"

.field private static final TAG:Ljava/lang/String; = "Mms/RecipientsAdapter"

.field public static final TYPE_INDEX:I = 0x2


# instance fields
.field private final MIN_INTERVAL_QUERY:D

.field private final Workarround_for_performance:Z

.field private mChineseHighlightHelper:Lcom/android/mms/encoding/ChineseHighlightHelper;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mHighlightedPrefix:[C

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mPatternString:Ljava/lang/String;

.field private mPatternStringKor:Ljava/lang/String;

.field private mPatternStringRaw:Ljava/lang/String;

.field private mPhotoCacheMap:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Landroid/net/Uri;",
            "[B>;"
        }
    .end annotation
.end field

.field public mRecipientsAdapterCount:I

.field private mRecipientsListishowing:Z

.field private timeStamp:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/RecipientsAdapter;->PROJECTION_PHONE:[Ljava/lang/String;

    const-string v0, "content://com.android.contacts/data/phone_emails/filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/RecipientsAdapter;->EMAIL_FILTER_URI:Landroid/net/Uri;

    const-string v0, "content://com.android.contacts/data/callables/filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/RecipientsAdapter;->PHONE_FILTER_URI:Landroid/net/Uri;

    const-string v0, "content://com.android.contacts/contacts_list/filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/RecipientsAdapter;->CONTACT_LIST_FILTER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/mms/ui/RecipientsAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    iput-object v1, p0, Lcom/android/mms/ui/RecipientsAdapter;->mPhotoCacheMap:Landroid/util/LruCache;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mRecipientsAdapterCount:I

    iput-object v1, p0, Lcom/android/mms/ui/RecipientsAdapter;->mChineseHighlightHelper:Lcom/android/mms/encoding/ChineseHighlightHelper;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->Workarround_for_performance:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->timeStamp:D

    const-wide v0, 0x407f400000000000L

    iput-wide v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->MIN_INTERVAL_QUERY:D

    iput-object p1, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Lcom/android/mms/encoding/ChineseHighlightHelper;

    invoke-direct {v0, p1}, Lcom/android/mms/encoding/ChineseHighlightHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mChineseHighlightHelper:Lcom/android/mms/encoding/ChineseHighlightHelper;

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mPhotoCacheMap:Landroid/util/LruCache;

    return-void
.end method

.method private controlBackgroundThread()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v0, v4

    const-string v4, "Mms/RecipientsAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "runQuery:currentTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", timeStamp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/mms/ui/RecipientsAdapter;->timeStamp:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/android/mms/ui/RecipientsAdapter;->timeStamp:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    iget-wide v4, p0, Lcom/android/mms/ui/RecipientsAdapter;->timeStamp:D

    sub-double v2, v0, v4

    iput-wide v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->timeStamp:D

    const-wide v4, 0x407f400000000000L

    cmpg-double v4, v2, v4

    if-gez v4, :cond_0

    const-string v4, "Mms/RecipientsAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "runQuery:delta="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", skip query. wait."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x1f4

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-wide v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->timeStamp:D

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private getChosungID(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v4, 0x0

    const/4 v7, 0x0

    sget-object v0, Lcom/android/mms/ui/RecipientsAdapter;->CONTACT_LIST_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v4

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "sort_key"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    :cond_0
    :goto_0
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v9, v9, 0x1

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ", "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_1
    const-string v0, "MMS/RecipientsAdapter"

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :goto_1
    const/4 v7, 0x0

    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_2
    throw v0

    :cond_3
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private getCursorForCallLogContacts(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_2

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v0, 0x30

    if-lt v6, v0, :cond_1

    const/16 v0, 0x39

    if-gt v6, v0, :cond_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x2b

    if-eq v6, v0, :cond_0

    const/16 v0, 0x23

    if-eq v6, v0, :cond_0

    const/16 v0, 0x2a

    if-eq v6, v0, :cond_0

    :goto_1
    return-object v4

    :cond_2
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id AS _id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "_id AS contact_id"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "numbertype AS data2"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "number AS data1"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "numbertype AS data3"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    const-string v3, "number AS display_name"

    aput-object v3, v2, v0

    const/4 v0, 0x6

    const-string v3, "type AS mimetype"

    aput-object v3, v2, v0

    const/4 v0, 0x7

    const-string v3, "null AS photo_thumb_uri"

    aput-object v3, v2, v0

    const/4 v7, 0x0

    const-string v11, "content://logs/call/search_log"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "name IS Null AND "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "number <> \'-1\' AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "number LIKE \'%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    move-object v4, v7

    goto :goto_1
.end method

.method private isDependentSigns(C)Z
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x4

    new-array v0, v8, [Ljava/lang/String;

    const-string v8, "900"

    aput-object v8, v0, v7

    const-string v8, "901"

    aput-object v8, v0, v6

    const/4 v8, 0x2

    const-string v9, "902"

    aput-object v9, v0, v8

    const/4 v8, 0x3

    const-string v9, "903"

    aput-object v9, v0, v8

    move-object v1, v0

    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v1, v3

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    :goto_1
    return v6

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v6, v7

    goto :goto_1
.end method

.method private queryContactsData(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    const/4 v9, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "contact_id"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " IN "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "mimetype"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "mimetype"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\')"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "display_name ASC"

    const-string v0, "Mms/RecipientsAdapter"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mms/ui/RecipientsAdapter;->PROJECTION_PHONE:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v6, v9

    :cond_0
    return-object v6

    :catch_0
    move-exception v7

    const-string v0, "Mms/RecipientsAdapter"

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private usefulAsDigits(Ljava/lang/CharSequence;)Z
    .locals 4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_4

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v3, 0x30

    if-lt v0, v3, :cond_1

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v3, 0x20

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_0

    const/16 v3, 0x28

    if-eq v0, v3, :cond_0

    const/16 v3, 0x29

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2e

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2b

    if-eq v0, v3, :cond_0

    const/16 v3, 0x23

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2a

    if-eq v0, v3, :cond_0

    const/16 v3, 0x41

    if-lt v0, v3, :cond_2

    const/16 v3, 0x5a

    if-le v0, v3, :cond_0

    :cond_2
    const/16 v3, 0x61

    if-lt v0, v3, :cond_3

    const/16 v3, 0x7a

    if-le v0, v3, :cond_0

    :cond_3
    const/4 v3, 0x0

    :goto_1
    return v3

    :cond_4
    const/4 v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/android/mms/ui/RecipientFilterItem;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/mms/ui/RecipientFilterItem;

    invoke-virtual {v0, p0}, Lcom/android/mms/ui/RecipientFilterItem;->setAdapter(Lcom/android/mms/ui/RecipientsAdapter;)V

    invoke-virtual {v0, p2, p3}, Lcom/android/mms/ui/RecipientFilterItem;->bind(Landroid/content/Context;Landroid/database/Cursor;)V

    const-string v1, "Mms/RecipientsAdapter"

    const-string v2, "bind complete()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method public final convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 14

    const/4 v10, 0x3

    const/16 v13, 0x21

    const/4 v12, 0x0

    const/4 v9, 0x5

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x2

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x4

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x6

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_0

    const-string v5, ""

    :goto_0
    const-string v9, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v8, v1}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_3

    :goto_2
    return-object v5

    :cond_0
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    const-string v9, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v8, v1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_1

    :cond_3
    if-nez v4, :cond_4

    const-string v4, ""

    :goto_3
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    new-instance v9, Landroid/text/Annotation;

    const-string v10, "name"

    invoke-direct {v9, v10, v4}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9, v12, v2, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :goto_4
    const/4 v9, 0x1

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Landroid/text/Annotation;

    const-string v10, "person_id"

    invoke-direct {v9, v10, v7}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9, v12, v2, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v9, Landroid/text/Annotation;

    const-string v10, "label"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9, v12, v2, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v9, Landroid/text/Annotation;

    const-string v10, "number"

    invoke-direct {v9, v10, v5}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9, v12, v2, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object v5, v6

    goto :goto_2

    :cond_4
    const-string v9, ", "

    const-string v10, " "

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ","

    const-string v11, " "

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_5
    new-instance v9, Landroid/text/Annotation;

    const-string v10, "name"

    invoke-direct {v9, v10, v5}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9, v12, v2, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4
.end method

.method public getCache()Landroid/util/LruCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LruCache",
            "<",
            "Landroid/net/Uri;",
            "[B>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mPhotoCacheMap:Landroid/util/LruCache;

    return-object v0
.end method

.method public getChineseHighlightHelper()Lcom/android/mms/encoding/ChineseHighlightHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mChineseHighlightHelper:Lcom/android/mms/encoding/ChineseHighlightHelper;

    return-object v0
.end method

.method public getHighlightedPrefix()[C
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mHighlightedPrefix:[C

    return-object v0
.end method

.method public getPatternString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mPatternString:Ljava/lang/String;

    return-object v0
.end method

.method public getPatternStringKor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mPatternStringKor:Ljava/lang/String;

    return-object v0
.end method

.method public getPatternStringRaw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mPatternStringRaw:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientsListishowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mRecipientsListishowing:Z

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040088

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePinyinSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/RecipientsAdapter;->controlBackgroundThread()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/ui/RecipientsAdapter;->runQueryOnBackgroundThread(Ljava/lang/CharSequence;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;I)Landroid/database/Cursor;
    .locals 19

    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "Mms/RecipientsAdapter"

    const-string v3, "runQuery:exit by no constraints"

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/mms/ui/RecipientsAdapter;->mRecipientsListishowing:Z

    const/4 v13, 0x0

    :goto_0
    return-object v13

    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/mms/ui/RecipientsAdapter;->mPatternString:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/ui/RecipientsAdapter;->mPatternStringKor:Ljava/lang/String;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePinyinSearch()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/ui/RecipientsAdapter;->mPatternStringRaw:Ljava/lang/String;

    :cond_2
    const-string v9, ""

    const/4 v8, 0x0

    const/4 v7, 0x0

    const-string v11, ""

    const-string v15, ""

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v1, 0x1f4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_6

    const/4 v1, 0x0

    const/16 v3, 0x1f4

    invoke-virtual {v7, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableRecipientSearchByCharMatchingDigit()Z

    move-result v1

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/mms/ui/RecipientsAdapter;->usefulAsDigits(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v9, ""

    :cond_3
    :goto_2
    const/4 v13, 0x0

    const/4 v10, 0x0

    const/16 v18, 0x0

    const/16 v16, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/android/mms/ui/RecipientsAdapter;->EMAIL_FILTER_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/RecipientsAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/mms/ui/RecipientsAdapter;->PROJECTION_PHONE:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "times_contacted DESC,mimetype DESC,sort_key,data2"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_9

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/mms/ui/RecipientsAdapter;->mRecipientsAdapterCount:I

    const-string v1, "Mms/RecipientsAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runQuery,results="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",const len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAddLogsToRecipientSearchList()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/mms/ui/RecipientsAdapter;->getCursorForCallLogContacts(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableYellowPage()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, v7}, Lcom/android/mms/data/YellowPageCallerid;->queryListByYellowPage(Landroid/content/Context;Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v18

    :cond_5
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_d

    const/16 v1, 0x8

    new-array v14, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v14, v1

    const/4 v1, 0x1

    const-wide/16 v3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v14, v1

    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v14, v1

    const/4 v1, 0x3

    aput-object v9, v14, v1

    const/4 v1, 0x4

    const-string v3, "\u00a0"

    aput-object v3, v14, v1

    const/4 v1, 0x5

    aput-object v8, v14, v1

    const/4 v1, 0x6

    aput-object v11, v14, v1

    const/4 v1, 0x7

    aput-object v15, v14, v1

    new-instance v17, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/android/mms/ui/RecipientsAdapter;->PROJECTION_PHONE:[Ljava/lang/String;

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-direct {v0, v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/mms/ui/RecipientsAdapter;->mRecipientsListishowing:Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getAddLogsToRecipientSearchList()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableYellowPage()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_a

    new-instance v1, Landroid/database/MergeCursor;

    const/4 v3, 0x4

    new-array v3, v3, [Landroid/database/Cursor;

    const/4 v4, 0x0

    aput-object v17, v3, v4

    const/4 v4, 0x1

    aput-object v13, v3, v4

    const/4 v4, 0x2

    aput-object v10, v3, v4

    const/4 v4, 0x3

    aput-object v18, v3, v4

    invoke-direct {v1, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object v13, v1

    goto/16 :goto_0

    :cond_6
    move-object v8, v7

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    :cond_8
    sget-object v1, Lcom/android/mms/ui/RecipientsAdapter;->PHONE_FILTER_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto/16 :goto_3

    :cond_9
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/mms/ui/RecipientsAdapter;->mRecipientsAdapterCount:I

    goto/16 :goto_4

    :cond_a
    new-instance v1, Landroid/database/MergeCursor;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/database/Cursor;

    const/4 v4, 0x0

    aput-object v17, v3, v4

    const/4 v4, 0x1

    aput-object v13, v3, v4

    const/4 v4, 0x2

    aput-object v10, v3, v4

    invoke-direct {v1, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object v13, v1

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableYellowPage()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_c

    new-instance v1, Landroid/database/MergeCursor;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/database/Cursor;

    const/4 v4, 0x0

    aput-object v17, v3, v4

    const/4 v4, 0x1

    aput-object v13, v3, v4

    const/4 v4, 0x2

    aput-object v18, v3, v4

    invoke-direct {v1, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object v13, v1

    goto/16 :goto_0

    :cond_c
    new-instance v1, Landroid/database/MergeCursor;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/database/Cursor;

    const/4 v4, 0x0

    aput-object v17, v3, v4

    const/4 v4, 0x1

    aput-object v13, v3, v4

    invoke-direct {v1, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object v13, v1

    goto/16 :goto_0

    :cond_d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAddLogsToRecipientSearchList()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_11

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableYellowPage()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    if-eqz v13, :cond_e

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_e

    if-eqz v10, :cond_e

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_e

    if-eqz v18, :cond_e

    invoke-virtual/range {v18 .. v18}, Landroid/database/MatrixCursor;->getCount()I

    move-result v1

    if-nez v1, :cond_e

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/mms/ui/RecipientsAdapter;->mRecipientsAdapterCount:I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/mms/ui/RecipientsAdapter;->mRecipientsListishowing:Z

    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_e
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/mms/ui/RecipientsAdapter;->mRecipientsListishowing:Z

    new-instance v1, Landroid/database/MergeCursor;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/database/Cursor;

    const/4 v4, 0x0

    aput-object v13, v3, v4

    const/4 v4, 0x1

    aput-object v10, v3, v4

    const/4 v4, 0x2

    aput-object v18, v3, v4

    invoke-direct {v1, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object v13, v1

    goto/16 :goto_0

    :cond_f
    if-eqz v13, :cond_10

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_10

    if-eqz v10, :cond_10

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_10

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/mms/ui/RecipientsAdapter;->mRecipientsAdapterCount:I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/mms/ui/RecipientsAdapter;->mRecipientsListishowing:Z

    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_10
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/mms/ui/RecipientsAdapter;->mRecipientsListishowing:Z

    new-instance v1, Landroid/database/MergeCursor;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/database/Cursor;

    const/4 v4, 0x0

    aput-object v13, v3, v4

    const/4 v4, 0x1

    aput-object v10, v3, v4

    invoke-direct {v1, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object v13, v1

    goto/16 :goto_0

    :cond_11
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableYellowPage()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_13

    if-eqz v13, :cond_12

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_12

    if-eqz v18, :cond_12

    invoke-virtual/range {v18 .. v18}, Landroid/database/MatrixCursor;->getCount()I

    move-result v1

    if-nez v1, :cond_12

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/mms/ui/RecipientsAdapter;->mRecipientsAdapterCount:I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/mms/ui/RecipientsAdapter;->mRecipientsListishowing:Z

    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_12
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/mms/ui/RecipientsAdapter;->mRecipientsListishowing:Z

    new-instance v1, Landroid/database/MergeCursor;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/database/Cursor;

    const/4 v4, 0x0

    aput-object v13, v3, v4

    const/4 v4, 0x1

    aput-object v18, v3, v4

    invoke-direct {v1, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object v13, v1

    goto/16 :goto_0

    :cond_13
    if-eqz v13, :cond_15

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_15

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/mms/ui/RecipientsAdapter;->mRecipientsAdapterCount:I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/mms/ui/RecipientsAdapter;->mRecipientsListishowing:Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePinyinSearch()Z

    move-result v1

    if-eqz v1, :cond_14

    const-wide/16 v3, 0x1e

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_14
    :goto_5
    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_15
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/mms/ui/RecipientsAdapter;->mRecipientsListishowing:Z

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_5
.end method

.method public setHighlightedPrefix([C)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/RecipientsAdapter;->mHighlightedPrefix:[C

    return-void
.end method

.method public setPatternString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/RecipientsAdapter;->mPatternString:Ljava/lang/String;

    return-void
.end method

.method public setPatternStringKor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/RecipientsAdapter;->mPatternStringKor:Ljava/lang/String;

    return-void
.end method

.method public setRecipientsListishowing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/RecipientsAdapter;->mRecipientsListishowing:Z

    return-void
.end method

.method public suggestionlistshowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mRecipientsListishowing:Z

    return v0
.end method
