.class public Lcom/android/mms/data/Contact$ContactsCache;
.super Ljava/lang/Object;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/data/Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactsCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/data/Contact$ContactsCache$ContactQuery;,
        Lcom/android/mms/data/Contact$ContactsCache$TaskStack;,
        Lcom/android/mms/data/Contact$ContactsCache$RunnableUpdateContact;
    }
.end annotation


# static fields
.field private static final CALLER_ID_PROJECTION:[Ljava/lang/String;

.field private static final CALLER_ID_PROJECTION_WITH_RINGTONE:[Ljava/lang/String;

.field private static final CALLER_ID_SELECTION_BY_CLIDIGIT:Ljava/lang/String; = " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM  (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE min_match = ?) AS lookup  WHERE lookup.normalized_number = ? OR substr(lookup.normalized_number, lookup.len - ?  + 1) = ? OR ( lookup.len > ? AND substr(lookup.normalized_number, lookup.len+1 - ?)= ?))"

.field private static final CALLER_ID_SELECTION_WITHOUT_E164_BY_CLIDIGIT:Ljava/lang/String; = " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM  (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE min_match = ?) AS lookup  WHERE  substr(lookup.normalized_number, lookup.len - ?  + 1) = ?)"

.field private static final CALLER_ID_SELECTION_WITHOUT_E164_PHONEEQUALS:Ljava/lang/String; = " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM      (SELECT data_id, normalized_number, length(normalized_number) as len      FROM phone_lookup      WHERE min_match = ?) AS lookup  WHERE  (lookup.len <= ? AND substr(?, ? - lookup.len + 1) = lookup.normalized_number) OR (PHONE_NUMBERS_EQUAL(lookup.normalized_number, ?) ) )"

.field private static final CALLER_ID_SELECTION_WITHOUT_E164_PHONEEQUALS_STRICT:Ljava/lang/String; = " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM  (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE min_match = ?) AS lookup  WHERE  (lookup.len <= ? AND substr(?, ? - lookup.len + 1) = lookup.normalized_number) OR (PHONE_NUMBERS_EQUAL(lookup.normalized_number, ?, 1) ) )"

.field private static final CONTACT_ID_COLUMN:I = 0x4

.field private static final CONTACT_LOOKUP_KEY:I = 0x9

.field private static final CONTACT_NAME_COLUMN:I = 0x3

.field private static final CONTACT_PRESENCE_COLUMN:I = 0x5

.field private static final CONTACT_RINGTONE_COLUMN:I = 0xb

.field private static final CONTACT_SORT_ORDER:Ljava/lang/String; = "is_sim"

.field private static final CONTACT_STATUS_COLUMN:I = 0x6

.field private static final EMAIL_CONTACT_NAME_COLUMN:I = 0x3

.field private static final EMAIL_ID_COLUMN:I = 0x2

.field private static final EMAIL_NAME_COLUMN:I = 0x0

.field private static final EMAIL_PROJECTION:[Ljava/lang/String;

.field private static final EMAIL_SELECTION:Ljava/lang/String; = "UPPER(data1)=UPPER(?) AND mimetype=\'vnd.android.cursor.item/email_v2\'"

.field private static final EMAIL_SEND_TO_VOICEMAIL_COLUMN:I = 0x4

.field private static final EMAIL_STATUS_COLUMN:I = 0x1

.field private static final EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

.field private static final PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

.field private static final PHONE_ID_COLUMN:I = 0x0

.field private static final PHONE_LABEL_COLUMN:I = 0x2

.field private static final PHONE_NORMALIZED_NUMBER:I = 0x7

.field private static final PHONE_NUMBER_COLUMN:I = 0x1

.field private static final PHOTO_THUMBNAIL_URI:I = 0xa

.field private static final SEND_TO_VOICEMAIL:I = 0x8

.field static final STATIC_KEY_BUFFER_MAXIMUM_LENGTH:I = 0x5

.field private static final TAG:Ljava/lang/String; = "Mms/ContactsCache"

.field private static mContactMatchCliDigit:I

.field private static sInstance:Lcom/android/mms/data/Contact$ContactsCache;

.field static sStaticKeyBuffer:Ljava/nio/CharBuffer;


# instance fields
.field private final mContactsHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/data/Contact;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mTaskQueue:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

.field private final mUseContactMatchCliDigit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x5

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "data1"

    aput-object v1, v0, v5

    const-string v1, "data3"

    aput-object v1, v0, v6

    const-string v1, "display_name"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const-string v1, "contact_presence"

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "data1"

    aput-object v1, v0, v5

    const-string v1, "data3"

    aput-object v1, v0, v6

    const-string v1, "display_name"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const-string v1, "contact_presence"

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "sec_custom_alert"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->CALLER_ID_PROJECTION_WITH_RINGTONE:[Ljava/lang/String;

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "data4"

    aput-object v1, v0, v4

    const-string v1, "contact_presence"

    aput-object v1, v0, v5

    const-string v1, "contact_id"

    aput-object v1, v0, v6

    const-string v1, "display_name"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->EMAIL_PROJECTION:[Ljava/lang/String;

    invoke-static {v3}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->sStaticKeyBuffer:Ljava/nio/CharBuffer;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    invoke-direct {v0}, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mTaskQueue:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getContactMatchCliDigit()I

    move-result v0

    sput v0, Lcom/android/mms/data/Contact$ContactsCache;->mContactMatchCliDigit:I

    sget v0, Lcom/android/mms/data/Contact$ContactsCache;->mContactMatchCliDigit:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mUseContactMatchCliDigit:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/mms/data/Contact$ContactsCache;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/data/Contact$ContactsCache;->checkContactProviderAvailible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/mms/data/Contact$ContactsCache;Lcom/android/mms/data/Contact;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/Contact$ContactsCache;->updateContact(Lcom/android/mms/data/Contact;Z)V

    return-void
.end method

.method private checkContactProviderAvailible()Z
    .locals 10

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "status"

    aput-object v4, v2, v8

    const-string v4, "data1"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_0

    const-string v0, "Mms/ContactsCache"

    const-string v1, "checkContactProviderAvailible getContentResolver is NULL cursor!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    packed-switch v7, :pswitch_data_0

    const-string v0, "Mms/ContactsCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Contact DB busy!!!. checkContactQueryAvailible : status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :pswitch_0
    move v0, v9

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private contactChanged(Lcom/android/mms/data/Contact;Lcom/android/mms/data/Contact;)Z
    .locals 12

    const/4 v7, 0x0

    const/4 v6, 0x1

    # getter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$600(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/mms/data/Contact;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    # getter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$600(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/mms/data/Contact;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->isNumberModified()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v7, "Mms/ContactsCache"

    const-string v8, "org number modified"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v7, "Mms/ContactsCache"

    const-string v8, "name changed"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    # getter for: Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$700(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/mms/data/Contact;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$700(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/mms/data/Contact;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v7, "Mms/ContactsCache"

    const-string v8, "label changed"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    # getter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$800(Lcom/android/mms/data/Contact;)J

    move-result-wide v8

    # getter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$800(Lcom/android/mms/data/Contact;)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_4

    const-string v7, "Mms/ContactsCache"

    const-string v8, "person id changed"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    # getter for: Lcom/android/mms/data/Contact;->mPresenceMode:I
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)I

    move-result v8

    # getter for: Lcom/android/mms/data/Contact;->mPresenceMode:I
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)I

    move-result v9

    if-eq v8, v9, :cond_5

    const-string v7, "Mms/ContactsCache"

    const-string v8, "presence changed"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    # getter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1000(Lcom/android/mms/data/Contact;)I

    move-result v8

    # getter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1000(Lcom/android/mms/data/Contact;)I

    move-result v9

    if-eq v8, v9, :cond_6

    const-string v7, "Mms/ContactsCache"

    const-string v8, "presence changed"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    # getter for: Lcom/android/mms/data/Contact;->mAvatarData:[B
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1100(Lcom/android/mms/data/Contact;)[B

    move-result-object v8

    # getter for: Lcom/android/mms/data/Contact;->mAvatarData:[B
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1100(Lcom/android/mms/data/Contact;)[B

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v7, "Mms/ContactsCache"

    const-string v8, "avatar changed"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    # getter for: Lcom/android/mms/data/Contact;->mSendToVoicemail:Z
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1200(Lcom/android/mms/data/Contact;)Z

    move-result v8

    # getter for: Lcom/android/mms/data/Contact;->mSendToVoicemail:Z
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1200(Lcom/android/mms/data/Contact;)Z

    move-result v9

    if-ne v8, v9, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isEnabledIndividualRingtone()Z

    move-result v8

    if-eqz v8, :cond_b

    # getter for: Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1300(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_8

    # getter for: Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1300(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8

    const-string v7, "Mms/ContactsCache"

    const-string v8, "RingtonePath changed"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    # getter for: Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1300(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_9

    # getter for: Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1300(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_9

    move v6, v7

    goto/16 :goto_0

    :cond_9
    # getter for: Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1300(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a

    # getter for: Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1300(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a

    # getter for: Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1300(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    # getter for: Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1300(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    const-string v7, "Mms/ContactsCache"

    const-string v8, "RingtonePath changed"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    # getter for: Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1300(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    # getter for: Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1300(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    :cond_b
    # getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$500(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/mms/data/Contact;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    # getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$500(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/mms/data/Contact;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    const-string v7, "Mms/ContactsCache"

    const-string v8, "name changed"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    # getter for: Lcom/android/mms/data/Contact;->mThumbnailUri:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1400(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_e

    # getter for: Lcom/android/mms/data/Contact;->mThumbnailUri:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1400(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_d

    const-string v7, "Mms/ContactsCache"

    const-string v8, "ThumbnailUri changed"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    move v6, v7

    goto/16 :goto_0

    :cond_e
    # getter for: Lcom/android/mms/data/Contact;->mThumbnailUri:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1400(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    # getter for: Lcom/android/mms/data/Contact;->mThumbnailUri:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1400(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    const-string v7, "Mms/ContactsCache"

    const-string v8, "ThumbnailUri changed"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    move v6, v7

    goto/16 :goto_0
.end method

.method private static containsAlpha(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x41

    if-lt v0, v3, :cond_0

    const/16 v3, 0x5a

    if-le v0, v3, :cond_1

    :cond_0
    const/16 v3, 0x61

    if-lt v0, v3, :cond_2

    const/16 v3, 0x7a

    if-gt v0, v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private fillPhoneTypeContact(Lcom/android/mms/data/Contact;Landroid/database/Cursor;)V
    .locals 4

    monitor-enter p1

    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/data/Contact;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/mms/data/Contact;->mNumberInContactDB:Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->access$1502(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/data/Contact;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->access$702(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x3

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/data/Contact;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->access$602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x4

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    # setter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p1, v1, v2}, Lcom/android/mms/data/Contact;->access$802(Lcom/android/mms/data/Contact;J)J

    const/4 v1, 0x4

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/data/Contact$ContactsCache;->getPresenceMode(J)I

    move-result v1

    # setter for: Lcom/android/mms/data/Contact;->mPresenceMode:I
    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->access$902(Lcom/android/mms/data/Contact;I)I

    # getter for: Lcom/android/mms/data/Contact;->mPresenceMode:I
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)I

    move-result v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->getPresenceIcon(I)I

    move-result v1

    # setter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->access$1002(Lcom/android/mms/data/Contact;I)I

    const/4 v1, 0x6

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/mms/data/Contact;->mPresenceText:Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->access$1602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    const/16 v1, 0xa

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/mms/data/Contact;->mThumbnailUri:Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->access$1402(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    # getter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$800(Lcom/android/mms/data/Contact;)J

    move-result-wide v1

    # getter for: Lcom/android/mms/data/Contact;->mNumberInContactDB:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1500(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/mms/data/Contact;->isChatUser(JLjava/lang/String;)Z

    move-result v1

    # setter for: Lcom/android/mms/data/Contact;->mChatUser:Z
    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->access$1702(Lcom/android/mms/data/Contact;Z)Z

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEnabledIndividualRingtone()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/Contact$ContactsCache;->getRingtoneFromContactCursor(Lcom/android/mms/data/Contact;Landroid/database/Cursor;)V

    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->loadAvatarData(Lcom/android/mms/data/Contact;)[B

    move-result-object v0

    monitor-enter p1

    :try_start_1
    # setter for: Lcom/android/mms/data/Contact;->mAvatarData:[B
    invoke-static {p1, v0}, Lcom/android/mms/data/Contact;->access$1102(Lcom/android/mms/data/Contact;[B)[B

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private fillPhoneTypeContact2(Lcom/android/mms/data/Contact;Landroid/database/Cursor;)V
    .locals 5

    monitor-enter p1

    const/4 v2, 0x4

    :try_start_0
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/data/Contact;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/mms/data/Contact;->mNumberInContactDB:Ljava/lang/String;
    invoke-static {p1, v2}, Lcom/android/mms/data/Contact;->access$1502(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x3

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/data/Contact;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;
    invoke-static {p1, v2}, Lcom/android/mms/data/Contact;->access$702(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/data/Contact;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p1, v2}, Lcom/android/mms/data/Contact;->access$602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    # setter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p1, v2, v3}, Lcom/android/mms/data/Contact;->access$802(Lcom/android/mms/data/Contact;J)J

    const/16 v2, 0x8

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/mms/data/Contact;->mThumbnailUri:Ljava/lang/String;
    invoke-static {p1, v2}, Lcom/android/mms/data/Contact;->access$1402(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    # getter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$800(Lcom/android/mms/data/Contact;)J

    move-result-wide v2

    # getter for: Lcom/android/mms/data/Contact;->mNumberInContactDB:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1500(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/mms/data/Contact;->isChatUser(JLjava/lang/String;)Z

    move-result v2

    # setter for: Lcom/android/mms/data/Contact;->mChatUser:Z
    invoke-static {p1, v2}, Lcom/android/mms/data/Contact;->access$1702(Lcom/android/mms/data/Contact;Z)Z

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEnabledIndividualRingtone()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x9

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->getGroupAlert(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;
    invoke-static {p1, v2}, Lcom/android/mms/data/Contact;->access$1302(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->loadAvatarData(Lcom/android/mms/data/Contact;)[B

    move-result-object v1

    monitor-enter p1

    :try_start_1
    # setter for: Lcom/android/mms/data/Contact;->mAvatarData:[B
    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->access$1102(Lcom/android/mms/data/Contact;[B)[B

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :cond_3
    :try_start_2
    # setter for: Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/android/mms/data/Contact;->access$1302(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method private findBestMatch(Landroid/database/Cursor;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORRTSRejectEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_3
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/android/mms/data/Contact;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/android/mms/data/Contact$ContactsCache;->needE164Compare()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/mms/data/Contact;->compareWithE164(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v2, v3, p2}, Lcom/android/mms/data/Contact;->access$2400(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_6
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/android/mms/data/Contact;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0
.end method

.method private getContactInfoForEmailAddress(Ljava/lang/String;)Lcom/android/mms/data/Contact;
    .locals 13

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v0, "Mms/ContactsCache"

    const-string v1, "getContactInfoForEmailAddress"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/android/mms/data/Contact;

    invoke-direct {v9, p1, v6}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V

    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/data/Contact$ContactsCache;->EMAIL_PROJECTION:[Ljava/lang/String;

    const-string v4, "UPPER(data1)=UPPER(?) AND mimetype=\'vnd.android.cursor.item/email_v2\'"

    new-array v5, v5, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object p1, v5, v12

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_3

    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v10, 0x0

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/data/Contact$ContactsCache;->getStatusIconResourceId(I)I

    move-result v0

    # setter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {v9, v0}, Lcom/android/mms/data/Contact;->access$1002(Lcom/android/mms/data/Contact;I)I

    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    # setter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {v9, v0, v1}, Lcom/android/mms/data/Contact;->access$802(Lcom/android/mms/data/Contact;J)J

    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    # setter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {v9, v11}, Lcom/android/mms/data/Contact;->access$602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    const/4 v10, 0x1

    :cond_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v10, :cond_0

    :try_start_2
    invoke-direct {p0, v9}, Lcom/android/mms/data/Contact$ContactsCache;->loadAvatarData(Lcom/android/mms/data/Contact;)[B

    move-result-object v8

    monitor-enter v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    # setter for: Lcom/android/mms/data/Contact;->mAvatarData:[B
    invoke-static {v9, v8}, Lcom/android/mms/data/Contact;->access$1102(Lcom/android/mms/data/Contact;[B)[B

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v9

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method private getContactInfoForPhoneNumber(Ljava/lang/String;)Lcom/android/mms/data/Contact;
    .locals 14

    const/16 v1, 0x3b

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0x3b

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance v9, Lcom/android/mms/data/Contact;

    const/4 v1, 0x0

    invoke-direct {v9, p1, v1}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V

    iget-boolean v1, p0, Lcom/android/mms/data/Contact$ContactsCache;->mUseContactMatchCliDigit:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->getContactMatchCliDigitNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualNumber4Korea()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LGU+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p1}, Lcom/android/mms/data/Contact;->normalizeDualNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :goto_0
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/android/mms/data/Conversation;->getTempThreadIdStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    iget-boolean v1, p0, Lcom/android/mms/data/Contact$ContactsCache;->mUseContactMatchCliDigit:Z

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/MmsApp;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v3, " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM  (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE min_match = ?) AS lookup  WHERE  substr(lookup.normalized_number, lookup.len - ?  + 1) = ?)"

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v10, v4, v1

    const/4 v1, 0x1

    aput-object v13, v4, v1

    const/4 v1, 0x2

    aput-object v11, v4, v1

    :goto_1
    const/4 v7, 0x0

    iget-object v1, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEnabledIndividualRingtone()Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->CALLER_ID_PROJECTION_WITH_RINGTONE:[Ljava/lang/String;

    const-string v5, "is_sim"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    :cond_2
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualNumber4Korea()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LGU+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_5

    if-eqz v7, :cond_3

    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_5

    :cond_3
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/mms/data/Contact;->normalizeDualNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    iget-boolean v1, p0, Lcom/android/mms/data/Contact$ContactsCache;->mUseContactMatchCliDigit:Z

    if-eqz v1, :cond_f

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/MmsApp;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v3, " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM  (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE min_match = ?) AS lookup  WHERE  substr(lookup.normalized_number, lookup.len - ?  + 1) = ?)"

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v10, v4, v1

    const/4 v1, 0x1

    aput-object v13, v4, v1

    const/4 v1, 0x2

    aput-object v11, v4, v1

    :goto_3
    :try_start_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEnabledIndividualRingtone()Z

    move-result v1

    if-eqz v1, :cond_11

    if-eqz v0, :cond_5

    sget-object v1, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->CALLER_ID_PROJECTION_WITH_RINGTONE:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v7

    :cond_5
    :goto_4
    if-nez v7, :cond_12

    const-string v1, "Mms/ContactsCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryContactInfoByNumber("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ") returned NULL cursor!"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " contact uri used "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_6
    :goto_5
    return-object v9

    :cond_7
    const-string v1, "PAP"

    # getter for: Lcom/android/mms/data/Contact;->salesCode:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/data/Contact;->access$2300()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v11, p1

    :goto_6
    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    :cond_8
    const-string v1, "CTC"

    # getter for: Lcom/android/mms/data/Contact;->salesCode:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/data/Contact;->access$2300()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {p1}, Lcom/android/mms/data/Contact;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_6

    :cond_9
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_6

    :cond_a
    const-string v3, " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM  (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE min_match = ?) AS lookup  WHERE lookup.normalized_number = ? OR substr(lookup.normalized_number, lookup.len - ?  + 1) = ? OR ( lookup.len > ? AND substr(lookup.normalized_number, lookup.len+1 - ?)= ?))"

    const/4 v1, 0x7

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v10, v4, v1

    const/4 v1, 0x1

    aput-object v12, v4, v1

    const/4 v1, 0x2

    aput-object v13, v4, v1

    const/4 v1, 0x3

    aput-object v11, v4, v1

    const/4 v1, 0x4

    aput-object v13, v4, v1

    const/4 v1, 0x5

    aput-object v13, v4, v1

    const/4 v1, 0x6

    aput-object v11, v4, v1

    goto/16 :goto_1

    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDocomoAccountAsDefault()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v3, " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM  (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE min_match = ?) AS lookup  WHERE  (lookup.len <= ? AND substr(?, ? - lookup.len + 1) = lookup.normalized_number) OR (PHONE_NUMBERS_EQUAL(lookup.normalized_number, ?, 1) ) )"

    :goto_7
    const/4 v1, 0x5

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v10, v4, v1

    const/4 v1, 0x1

    aput-object v13, v4, v1

    const/4 v1, 0x2

    aput-object v11, v4, v1

    const/4 v1, 0x3

    aput-object v13, v4, v1

    const/4 v1, 0x4

    aput-object v11, v4, v1

    goto/16 :goto_1

    :cond_c
    const-string v3, " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM      (SELECT data_id, normalized_number, length(normalized_number) as len      FROM phone_lookup      WHERE min_match = ?) AS lookup  WHERE  (lookup.len <= ? AND substr(?, ? - lookup.len + 1) = lookup.normalized_number) OR (PHONE_NUMBERS_EQUAL(lookup.normalized_number, ?) ) )"

    goto :goto_7

    :cond_d
    :try_start_2
    sget-object v1, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    const-string v5, "is_sim"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v7

    goto/16 :goto_2

    :catch_0
    move-exception v6

    const-string v1, "Mms/ContactsCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Catching CursorWindowAllocationException : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_1
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    :cond_e
    const-string v3, " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM  (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE min_match = ?) AS lookup  WHERE lookup.normalized_number = ? OR substr(lookup.normalized_number, lookup.len - ?  + 1) = ? OR ( lookup.len > ? AND substr(lookup.normalized_number, lookup.len+1 - ?)= ?))"

    const/4 v1, 0x7

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v10, v4, v1

    const/4 v1, 0x1

    aput-object v12, v4, v1

    const/4 v1, 0x2

    aput-object v13, v4, v1

    const/4 v1, 0x3

    aput-object v11, v4, v1

    const/4 v1, 0x4

    aput-object v13, v4, v1

    const/4 v1, 0x5

    aput-object v13, v4, v1

    const/4 v1, 0x6

    aput-object v11, v4, v1

    goto/16 :goto_3

    :cond_f
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableEmoji()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v3, " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM  (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE min_match = ?) AS lookup  WHERE  (lookup.len <= ? AND substr(?, ? - lookup.len + 1) = lookup.normalized_number) OR (PHONE_NUMBERS_EQUAL(lookup.normalized_number, ?, 1) ) )"

    :goto_8
    const/4 v1, 0x5

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v10, v4, v1

    const/4 v1, 0x1

    aput-object v13, v4, v1

    const/4 v1, 0x2

    aput-object v11, v4, v1

    const/4 v1, 0x3

    aput-object v13, v4, v1

    const/4 v1, 0x4

    aput-object v11, v4, v1

    goto/16 :goto_3

    :cond_10
    const-string v3, " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM      (SELECT data_id, normalized_number, length(normalized_number) as len      FROM phone_lookup      WHERE min_match = ?) AS lookup  WHERE  (lookup.len <= ? AND substr(?, ? - lookup.len + 1) = lookup.normalized_number) OR (PHONE_NUMBERS_EQUAL(lookup.normalized_number, ?) ) )"

    goto :goto_8

    :cond_11
    if-eqz v0, :cond_5

    :try_start_3
    sget-object v1, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v7

    goto/16 :goto_4

    :catch_2
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_4

    :cond_12
    :try_start_4
    iget-boolean v1, p0, Lcom/android/mms/data/Contact$ContactsCache;->mUseContactMatchCliDigit:Z

    if-eqz v1, :cond_16

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-direct {p0, v9, v7}, Lcom/android/mms/data/Contact$ContactsCache;->fillPhoneTypeContact(Lcom/android/mms/data/Contact;Landroid/database/Cursor;)V

    :cond_13
    :goto_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableEcid()Z

    move-result v1

    if-eqz v1, :cond_14

    # getter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/mms/data/Contact;->access$600(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v11}, Lcom/android/mms/util/EcidLookup;->getEcidName(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {v9, v1}, Lcom/android/mms/data/Contact;->access$602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_14
    if-eqz v7, :cond_15

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_15
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_5

    :cond_16
    :try_start_5
    invoke-direct {p0, v7, p1}, Lcom/android/mms/data/Contact$ContactsCache;->findBestMatch(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-direct {p0, v9, v7}, Lcom/android/mms/data/Contact$ContactsCache;->fillPhoneTypeContact(Lcom/android/mms/data/Contact;Landroid/database/Cursor;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v1

    if-eqz v7, :cond_17

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_17
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_18
    throw v1
.end method

.method private getContactInfoForPhoneNumber2(Ljava/lang/String;)Lcom/android/mms/data/Contact;
    .locals 11

    const/4 v3, 0x0

    new-instance v6, Lcom/android/mms/data/Contact;

    invoke-direct {v6, p1, v3}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V

    move-object v7, p1

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, v8}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v7, v9

    :cond_0
    # getter for: Lcom/android/mms/data/Contact$ContactsCache$ContactQuery;->PHOTE_LOOKUP_WITH_PROFILE:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/data/Contact$ContactsCache$ContactQuery;->access$2500()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    # getter for: Lcom/android/mms/data/Contact$ContactsCache$ContactQuery;->_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/data/Contact$ContactsCache$ContactQuery;->access$2600()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_2

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v6, v10}, Lcom/android/mms/data/Contact$ContactsCache;->fillPhoneTypeContact2(Lcom/android/mms/data/Contact;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v6

    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getContactMatchCliDigitNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getContactMatchCliDigit()I

    move-result v0

    sput v0, Lcom/android/mms/data/Contact$ContactsCache;->mContactMatchCliDigit:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/android/mms/data/Contact$ContactsCache;->mContactMatchCliDigit:I

    if-gt v0, v1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/android/mms/data/Contact$ContactsCache;->mContactMatchCliDigit:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getGroupAlert(Lcom/android/mms/data/Contact;)Ljava/lang/String;
    .locals 12

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "group_alert"

    aput-object v1, v2, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contact_id = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$800(Lcom/android/mms/data/Contact;)J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " AND mimetype = \'vnd.android.cursor.item/group_membership\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " AND group_alert IS NOT NULL"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "data1 LIMIT 1 "

    const/4 v0, 0x0

    const/4 v6, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v4, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v1, "Mms/ContactsCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ringtone "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_1
    :goto_0
    return-object v8

    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_4
    :goto_1
    move-object v8, v9

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_7
    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/mms/data/Contact$ContactsCache;
    .locals 2

    const-class v1, Lcom/android/mms/data/Contact$ContactsCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mms/data/Contact$ContactsCache;->sInstance:Lcom/android/mms/data/Contact$ContactsCache;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/data/Contact$ContactsCache;

    invoke-direct {v0, p0}, Lcom/android/mms/data/Contact$ContactsCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->sInstance:Lcom/android/mms/data/Contact$ContactsCache;

    :cond_0
    sget-object v0, Lcom/android/mms/data/Contact$ContactsCache;->sInstance:Lcom/android/mms/data/Contact$ContactsCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getRingtoneFromContactCursor(Lcom/android/mms/data/Contact;Landroid/database/Cursor;)V
    .locals 2

    const/16 v1, 0xb

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->getGroupAlert(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->access$1302(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    # setter for: Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/android/mms/data/Contact;->access$1302(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method private getStatusIconResourceId(I)I
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/provider/ContactsContract$StatusUpdates;->getPresenceIconResourceId(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAlphaNumber(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isWellFormedSmsAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private key(Ljava/lang/String;Ljava/nio/CharBuffer;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p2}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {p2}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p2, v0}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    :cond_1
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->length()I

    move-result v2

    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    const/16 v4, 0x30

    invoke-virtual {p2, v4}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    if-lez v3, :cond_3

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method private loadAvatarData(Lcom/android/mms/data/Contact;)[B
    .locals 9

    const/4 v2, 0x0

    # getter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$800(Lcom/android/mms/data/Contact;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->hasAvatarData()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_1
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    # getter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$800(Lcom/android/mms/data/Contact;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iget-object v5, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v2, v3, [B

    const/4 v5, 0x0

    array-length v6, v2

    invoke-virtual {v0, v2, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-le v3, v4, :cond_2

    const-string v5, "Mms/ContactsCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "avatar stream reading failed,dataLength="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",readLength="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :cond_2
    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_3
    :goto_1
    move-object v5, v2

    goto :goto_0

    :catch_0
    move-exception v5

    if-eqz v0, :cond_3

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    goto :goto_1

    :catchall_0
    move-exception v5

    if-eqz v0, :cond_4

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_4
    :goto_2
    throw v5

    :catch_2
    move-exception v5

    goto :goto_1

    :catch_3
    move-exception v6

    goto :goto_2
.end method

.method private needE164Compare()Z
    .locals 3

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/MmsApp;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RU"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "KZ"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateContact(Lcom/android/mms/data/Contact;Z)V
    .locals 7

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    # getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$500(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->isNumberCanAddToContact(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    # getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$500(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfo(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v0

    monitor-enter p1

    :try_start_0
    # getter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$800(Lcom/android/mms/data/Contact;)J

    move-result-wide v4

    # setter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p1, v4, v5}, Lcom/android/mms/data/Contact;->access$802(Lcom/android/mms/data/Contact;J)J

    const/4 v4, 0x0

    # setter for: Lcom/android/mms/data/Contact;->mQueryPending:Z
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$302(Lcom/android/mms/data/Contact;Z)Z

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_1
    if-eqz p2, :cond_4

    # getter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$800(Lcom/android/mms/data/Contact;)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfo(J)Lcom/android/mms/data/Contact;

    move-result-object v0

    :goto_1
    monitor-enter p1

    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/android/mms/data/Contact$ContactsCache;->contactChanged(Lcom/android/mms/data/Contact;Lcom/android/mms/data/Contact;)Z

    move-result v4

    if-eqz v4, :cond_5

    # getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$500(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$502(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    # getter for: Lcom/android/mms/data/Contact;->mNumberInContactDB:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1500(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/mms/data/Contact;->mNumberInContactDB:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1502(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    # getter for: Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$700(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$702(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    # getter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$800(Lcom/android/mms/data/Contact;)J

    move-result-wide v4

    # setter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p1, v4, v5}, Lcom/android/mms/data/Contact;->access$802(Lcom/android/mms/data/Contact;J)J

    # getter for: Lcom/android/mms/data/Contact;->mPresenceMode:I
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)I

    move-result v4

    # setter for: Lcom/android/mms/data/Contact;->mPresenceMode:I
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$902(Lcom/android/mms/data/Contact;I)I

    # getter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1000(Lcom/android/mms/data/Contact;)I

    move-result v4

    # setter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1002(Lcom/android/mms/data/Contact;I)I

    # getter for: Lcom/android/mms/data/Contact;->mPresenceText:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1600(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/mms/data/Contact;->mPresenceText:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    # getter for: Lcom/android/mms/data/Contact;->mAvatarData:[B
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1100(Lcom/android/mms/data/Contact;)[B

    move-result-object v4

    # setter for: Lcom/android/mms/data/Contact;->mAvatarData:[B
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1102(Lcom/android/mms/data/Contact;[B)[B

    # getter for: Lcom/android/mms/data/Contact;->mThumbnailUri:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1400(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/mms/data/Contact;->mThumbnailUri:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1402(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    # getter for: Lcom/android/mms/data/Contact;->mChatUser:Z
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1700(Lcom/android/mms/data/Contact;)Z

    move-result v4

    # setter for: Lcom/android/mms/data/Contact;->mChatUser:Z
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1702(Lcom/android/mms/data/Contact;Z)Z

    const-string v4, "Mms/ContactsCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateContact : c.mChatUser ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/mms/data/Contact;->mChatUser:Z
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1700(Lcom/android/mms/data/Contact;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " entry.mChatUser = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/mms/data/Contact;->mChatUser:Z
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1700(Lcom/android/mms/data/Contact;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEnabledIndividualRingtone()Z

    move-result v4

    if-eqz v4, :cond_3

    # getter for: Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1300(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1302(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    # getter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$600(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    # getter for: Lcom/android/mms/data/Contact;->mSendToVoicemail:Z
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1200(Lcom/android/mms/data/Contact;)Z

    move-result v4

    # setter for: Lcom/android/mms/data/Contact;->mSendToVoicemail:Z
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1202(Lcom/android/mms/data/Contact;Z)Z

    # invokes: Lcom/android/mms/data/Contact;->notSynchronizedUpdateNameAndNumber()V
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1800(Lcom/android/mms/data/Contact;)V

    # getter for: Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;
    invoke-static {}, Lcom/android/mms/data/Contact;->access$1900()Ljava/util/HashSet;

    move-result-object v5

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    # getter for: Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;
    invoke-static {}, Lcom/android/mms/data/Contact;->access$1900()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact$UpdateListener;

    const-string v4, "Mms/ContactsCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updating "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, p1}, Lcom/android/mms/data/Contact$UpdateListener;->onUpdate(Lcom/android/mms/data/Contact;)V

    goto :goto_2

    :catchall_1
    move-exception v4

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    :cond_4
    # getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$500(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfo(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v0

    goto/16 :goto_1

    :catchall_2
    move-exception v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    throw v4

    :cond_5
    monitor-enter p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v4, 0x0

    :try_start_6
    # setter for: Lcom/android/mms/data/Contact;->mQueryPending:Z
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$302(Lcom/android/mms/data/Contact;Z)Z

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    invoke-static {p1}, Lcom/android/mms/data/RecipientIdCache;->updateNumber(Lcom/android/mms/data/Contact;)V

    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_0

    :catchall_3
    move-exception v4

    :try_start_8
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
.end method


# virtual methods
.method dump()V
    .locals 8

    monitor-enter p0

    :try_start_0
    const-string v5, "Mms/ContactsCache"

    const-string v6, "**** Contact cache dump ****"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    const-string v5, "Mms/ContactsCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ==> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/android/mms/data/Contact;
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p1}, Lcom/android/mms/data/Contact$ContactsCache;->containsAlpha(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_2

    move-object v4, p1

    :goto_1
    iget-object v7, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v5, :cond_8

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    if-eqz v3, :cond_3

    # getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$500(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    monitor-exit p0

    :goto_3
    return-object v0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    sget-object v7, Lcom/android/mms/data/Contact$ContactsCache;->sStaticKeyBuffer:Ljava/nio/CharBuffer;

    invoke-direct {p0, p1, v7}, Lcom/android/mms/data/Contact$ContactsCache;->key(Ljava/lang/String;Ljava/nio/CharBuffer;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    iget-boolean v7, p0, Lcom/android/mms/data/Contact$ContactsCache;->mUseContactMatchCliDigit:Z

    if-eqz v7, :cond_4

    const-string v7, "-"

    const-string v8, ""

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "."

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/mms/data/Contact$ContactsCache;->getContactMatchCliDigitNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    # getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$500(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    monitor-exit p0

    goto :goto_3

    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    :cond_4
    :try_start_1
    # getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$500(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/android/mms/data/Contact;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    monitor-exit p0

    goto :goto_3

    :cond_5
    # getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$500(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    monitor-exit p0

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v7, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    new-instance v0, Lcom/android/mms/data/Contact;

    const/4 v7, 0x0

    invoke-direct {v0, p1, v7}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v0

    const/4 v2, 0x0

    monitor-enter v0

    if-eqz p2, :cond_6

    :try_start_0
    # getter for: Lcom/android/mms/data/Contact;->mQueryPending:Z
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$300(Lcom/android/mms/data/Contact;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0, v0}, Lcom/android/mms/data/Contact$ContactsCache;->popTask(Lcom/android/mms/data/Contact;)Lcom/android/mms/data/Contact$ContactsCache$RunnableUpdateContact;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    move-object v3, v2

    :goto_0
    if-nez v3, :cond_5

    :goto_1
    if-eqz p2, :cond_1

    :try_start_1
    # getter for: Lcom/android/mms/data/Contact;->mQueryPending:Z
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$300(Lcom/android/mms/data/Contact;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    move-object v2, v3

    :goto_2
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    :cond_1
    :try_start_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableEcid()Z

    move-result v4

    if-eqz v4, :cond_2

    # getter for: Lcom/android/mms/data/Contact;->mIsStale:Z
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$400(Lcom/android/mms/data/Contact;)Z

    move-result v4

    if-nez v4, :cond_2

    # getter for: Lcom/android/mms/data/Contact;->mQueryPending:Z
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$300(Lcom/android/mms/data/Contact;)Z

    move-result v4

    if-nez v4, :cond_2

    # getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$500(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    # getter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$600(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/util/EcidLookup;->hasUpdateFor(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    # setter for: Lcom/android/mms/data/Contact;->mIsStale:Z
    invoke-static {v0, v4}, Lcom/android/mms/data/Contact;->access$402(Lcom/android/mms/data/Contact;Z)Z

    :cond_2
    # getter for: Lcom/android/mms/data/Contact;->mIsStale:Z
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$400(Lcom/android/mms/data/Contact;)Z

    move-result v4

    if-eqz v4, :cond_5

    # getter for: Lcom/android/mms/data/Contact;->mQueryPending:Z
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$300(Lcom/android/mms/data/Contact;)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x0

    # setter for: Lcom/android/mms/data/Contact;->mIsStale:Z
    invoke-static {v0, v4}, Lcom/android/mms/data/Contact;->access$402(Lcom/android/mms/data/Contact;Z)Z

    new-instance v2, Lcom/android/mms/data/Contact$ContactsCache$RunnableUpdateContact;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/data/Contact$ContactsCache$RunnableUpdateContact;-><init>(Lcom/android/mms/data/Contact$ContactsCache;Lcom/android/mms/data/Contact;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v4, 0x1

    :try_start_6
    # setter for: Lcom/android/mms/data/Contact;->mQueryPending:Z
    invoke-static {v0, v4}, Lcom/android/mms/data/Contact;->access$302(Lcom/android/mms/data/Contact;Z)Z

    :goto_3
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_3

    if-eqz p2, :cond_4

    invoke-virtual {v2}, Lcom/android/mms/data/Contact$ContactsCache$RunnableUpdateContact;->run()V

    :cond_3
    :goto_4
    return-object v0

    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/mms/data/Contact$ContactsCache;->pushTask(Lcom/android/mms/data/Contact$ContactsCache$RunnableUpdateContact;)V

    goto :goto_4

    :catchall_1
    move-exception v4

    goto :goto_2

    :cond_5
    move-object v2, v3

    goto :goto_3

    :cond_6
    move-object v3, v2

    goto :goto_0
.end method

.method public getContactInfo(J)Lcom/android/mms/data/Contact;
    .locals 3

    new-instance v0, Lcom/android/mms/data/Contact;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/Long;Lcom/android/mms/data/Contact$1;)V

    invoke-direct {p0}, Lcom/android/mms/data/Contact$ContactsCache;->checkContactProviderAvailible()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/data/Contact$ContactsCache;->queryContactInfoById(J)Lcom/android/mms/data/Contact;

    move-result-object v0

    goto :goto_0
.end method

.method public getContactInfo(JLjava/lang/String;)Lcom/android/mms/data/Contact;
    .locals 3

    new-instance v0, Lcom/android/mms/data/Contact;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p3, v2}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/Long;Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V

    invoke-direct {p0}, Lcom/android/mms/data/Contact$ContactsCache;->checkContactProviderAvailible()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/data/Contact$ContactsCache;->queryContactInfoById(J)Lcom/android/mms/data/Contact;

    move-result-object v0

    goto :goto_0
.end method

.method public getContactInfo(Ljava/lang/String;)Lcom/android/mms/data/Contact;
    .locals 4

    new-instance v1, Lcom/android/mms/data/Contact;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v3}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V

    invoke-direct {p0}, Lcom/android/mms/data/Contact$ContactsCache;->checkContactProviderAvailible()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfoForEmailAddress(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->isAlphaNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfoForEmailAddress(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCallLogContactQuery()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfoForPhoneNumber2(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfoForPhoneNumber(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCallLogContactQuery()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0, v2}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfoForPhoneNumber2(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v1

    goto :goto_0

    :cond_5
    invoke-direct {p0, v2}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfoForPhoneNumber(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v1

    goto :goto_0
.end method

.method public getPresenceMode(J)I
    .locals 9

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v7

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v8, -0x1

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "contact_presence"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    const-string v0, "Mms/ContactsCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPresenceMode for contactId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :catch_0
    move-exception v0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method invalidate()V
    .locals 6

    const-string v4, "Mms/ContactsCache"

    const-string v5, "invalidate()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x1

    :try_start_1
    # setter for: Lcom/android/mms/data/Contact;->mIsStale:Z
    invoke-static {v1, v4}, Lcom/android/mms/data/Contact;->access$402(Lcom/android/mms/data/Contact;Z)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4

    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    :cond_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v4, "Mms/ContactsCache"

    const-string v5, "invalidate()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public popTask(Lcom/android/mms/data/Contact;)Lcom/android/mms/data/Contact$ContactsCache$RunnableUpdateContact;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mTaskQueue:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->pop(Lcom/android/mms/data/Contact;)Lcom/android/mms/data/Contact$ContactsCache$RunnableUpdateContact;

    move-result-object v0

    return-object v0
.end method

.method public pushTask(Lcom/android/mms/data/Contact$ContactsCache$RunnableUpdateContact;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mTaskQueue:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->push(Lcom/android/mms/data/Contact$ContactsCache$RunnableUpdateContact;)V

    return-void
.end method

.method public queryContactInfoById(J)Lcom/android/mms/data/Contact;
    .locals 8

    const/4 v3, 0x0

    new-instance v7, Lcom/android/mms/data/Contact;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v7, v0, v3}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/Long;Lcom/android/mms/data/Contact$1;)V

    sget-object v0, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isEnabledIndividualRingtone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->CALLER_ID_PROJECTION_WITH_RINGTONE:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :goto_0
    if-nez v6, :cond_1

    const-string v0, "Mms/ContactsCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryContactInfoById("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") returned NULL cursor!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " contact uri used "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v7

    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/data/Contact;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$702(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/data/Contact;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/data/Contact;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$502(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    # getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/data/Contact;->access$500(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/data/Contact;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/android/mms/data/Contact;->mNumberInContactDB:Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$1502(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneNumberFormattingImprove()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    # setter for: Lcom/android/mms/data/Contact;->mNameAndNumber:Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$2702(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    :goto_2
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    # setter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {v7, v2, v3}, Lcom/android/mms/data/Contact;->access$802(Lcom/android/mms/data/Contact;J)J

    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/data/Contact$ContactsCache;->getPresenceMode(J)I

    move-result v0

    # setter for: Lcom/android/mms/data/Contact;->mPresenceMode:I
    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$902(Lcom/android/mms/data/Contact;I)I

    # getter for: Lcom/android/mms/data/Contact;->mPresenceMode:I
    invoke-static {v7}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)I

    move-result v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getPresenceIcon(I)I

    move-result v0

    # setter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$1002(Lcom/android/mms/data/Contact;I)I

    const/4 v0, 0x6

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/android/mms/data/Contact;->mPresenceText:Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$1602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    const/16 v0, 0xa

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/android/mms/data/Contact;->mThumbnailUri:Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$1402(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    # getter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {v7}, Lcom/android/mms/data/Contact;->access$800(Lcom/android/mms/data/Contact;)J

    move-result-wide v2

    # getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/data/Contact;->access$500(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/android/mms/data/Contact;->isChatUser(JLjava/lang/String;)Z

    move-result v0

    # setter for: Lcom/android/mms/data/Contact;->mChatUser:Z
    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$1702(Lcom/android/mms/data/Contact;Z)Z

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEnabledIndividualRingtone()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v7, v6}, Lcom/android/mms/data/Contact$ContactsCache;->getRingtoneFromContactCursor(Lcom/android/mms/data/Contact;Landroid/database/Cursor;)V

    :cond_3
    invoke-direct {p0, v7}, Lcom/android/mms/data/Contact$ContactsCache;->loadAvatarData(Lcom/android/mms/data/Contact;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :cond_5
    :try_start_1
    # getter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/data/Contact;->access$600(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/data/Contact;->access$500(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/data/Contact;->formatNameAndNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/android/mms/data/Contact;->mNameAndNumber:Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$2702(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public updateContactList(Lcom/android/mms/data/ContactList;)V
    .locals 4

    const-string v2, "Mms/ContactsCache"

    const-string v3, "updateContactList()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/mms/data/Contact$ContactsCache;->updateContact(Lcom/android/mms/data/Contact;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
