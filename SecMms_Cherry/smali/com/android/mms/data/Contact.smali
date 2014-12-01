.class public Lcom/android/mms/data/Contact;
.super Ljava/lang/Object;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/data/Contact$ContentObserverHandler;,
        Lcom/android/mms/data/Contact$ContactContentObserver;,
        Lcom/android/mms/data/Contact$ContactsCache;,
        Lcom/android/mms/data/Contact$UpdateListener;
    }
.end annotation


# static fields
.field private static final AVATA_PROJECTION:[Ljava/lang/String;

.field private static final AVATA_SELECTION:Ljava/lang/String; = "mimetype = \'vnd.android.cursor.item/photo\'"

.field private static final AVATA_URI:Landroid/net/Uri;

.field private static final CONTACT_DATA_DELIMETER:C = ';'

.field private static final FACEBOOK_CONTACT_ID:I = 0x15cf

.field private static final INVALID_CONTACT_ID:J = -0x1L

.field public static final INVALID_PREFIX:Ljava/lang/String; = "+00"

.field public static final PROJECTION_CONTACT:[Ljava/lang/String;

.field private static final PROJECTION_PROFILE:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "Mms/Contact"

.field public static isInvalid:Z

.field private static loadFromYellowPage:Z

.field private static final mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/mms/data/Contact$UpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private static sCachedAvatarDataMe:[B

.field public static sCachedAvatarDataMeImage:Landroid/graphics/drawable/Drawable;

.field private static sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

.field private static sContactsObserver:Landroid/database/ContentObserver;

.field private static sContactsObserverHandler:Lcom/android/mms/data/Contact$ContentObserverHandler;

.field private static sDefaultContactImage:Landroid/graphics/drawable/Drawable;

.field private static sIsRegistered:Z

.field private static salesCode:Ljava/lang/String;


# instance fields
.field private mAvatarData:[B

.field private mChatUser:Z

.field private mIsStale:Z

.field private mLabel:Ljava/lang/String;

.field private mLookupKey:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNameAndNumber:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mNumberInContactDB:Ljava/lang/String;

.field private mNumberIsModified:Z

.field private mPersonId:J

.field private mPresenceMode:I

.field private mPresenceResId:I

.field private mPresenceText:Ljava/lang/String;

.field private mQueryPending:Z

.field private mRecipientId:J

.field private mRingtonePath:Ljava/lang/String;

.field private mSendToVoicemail:Z

.field private mThumbnailUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/mms/data/Contact;->isInvalid:Z

    sput-boolean v2, Lcom/android/mms/data/Contact;->sIsRegistered:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/Contact;->AVATA_URI:Landroid/net/Uri;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "data15"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/mms/data/Contact;->AVATA_PROJECTION:[Ljava/lang/String;

    sput-object v4, Lcom/android/mms/data/Contact;->sCachedAvatarDataMe:[B

    sput-object v4, Lcom/android/mms/data/Contact;->sCachedAvatarDataMeImage:Landroid/graphics/drawable/Drawable;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "photo_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/mms/data/Contact;->PROJECTION_PROFILE:[Ljava/lang/String;

    sput-object v4, Lcom/android/mms/data/Contact;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/mms/data/Contact;->PROJECTION_CONTACT:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Long;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mNumberInContactDB:Ljava/lang/String;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneNumberFormattingImprove()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iput-boolean v2, p0, Lcom/android/mms/data/Contact;->mNumberIsModified:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    iput v2, p0, Lcom/android/mms/data/Contact;->mPresenceResId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/data/Contact;->mIsStale:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mLookupKey:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mThumbnailUri:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/mms/data/Contact;->mChatUser:Z

    return-void

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mNameAndNumber:Ljava/lang/String;

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/lang/Long;Lcom/android/mms/data/Contact$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/Long;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/Long;)V

    iput-object p2, p0, Lcom/android/mms/data/Contact;->mLookupKey:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/Long;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/mms/data/Contact;->setNumber(Ljava/lang/String;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mNumberInContactDB:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/mms/data/Contact;->mNumberIsModified:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    iput v2, p0, Lcom/android/mms/data/Contact;->mPresenceResId:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mPresenceText:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/data/Contact;->mIsStale:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mLookupKey:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mThumbnailUri:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/mms/data/Contact;->mChatUser:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mNumberInContactDB:Ljava/lang/String;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneNumberFormattingImprove()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iput-boolean v2, p0, Lcom/android/mms/data/Contact;->mNumberIsModified:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    iput v2, p0, Lcom/android/mms/data/Contact;->mPresenceResId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/data/Contact;->mIsStale:Z

    iput-boolean v2, p0, Lcom/android/mms/data/Contact;->mSendToVoicemail:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mLookupKey:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mThumbnailUri:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/mms/data/Contact;->mChatUser:Z

    return-void

    :cond_0
    iput-object p2, p0, Lcom/android/mms/data/Contact;->mNameAndNumber:Ljava/lang/String;

    goto :goto_0
.end method

.method public static IsPresentInContact(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x1

    sget-object v2, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v1

    return v1
.end method

.method static synthetic access$1000(Lcom/android/mms/data/Contact;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/data/Contact;->mPresenceResId:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/mms/data/Contact;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/data/Contact;->mPresenceResId:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/mms/data/Contact;)[B
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mAvatarData:[B

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/mms/data/Contact;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/Contact;->mAvatarData:[B

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/mms/data/Contact;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/data/Contact;->mSendToVoicemail:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/mms/data/Contact;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/data/Contact;->mSendToVoicemail:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/mms/data/Contact;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/mms/data/Contact;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mThumbnailUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/Contact;->mThumbnailUri:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/mms/data/Contact;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumberInContactDB:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/Contact;->mNumberInContactDB:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/mms/data/Contact;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mPresenceText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/Contact;->mPresenceText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/mms/data/Contact;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/data/Contact;->mChatUser:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/mms/data/Contact;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/data/Contact;->mChatUser:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/mms/data/Contact;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/data/Contact;->notSynchronizedUpdateNameAndNumber()V

    return-void
.end method

.method static synthetic access$1900()Ljava/util/HashSet;
    .locals 1

    sget-object v0, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$2300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/data/Contact;->salesCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/mms/data/Contact;->compareWithE164(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2702(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/Contact;->mNameAndNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/mms/data/Contact;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/data/Contact;->mQueryPending:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/mms/data/Contact;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/data/Contact;->mQueryPending:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/mms/data/Contact;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/data/Contact;->mIsStale:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/mms/data/Contact;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/data/Contact;->mIsStale:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/mms/data/Contact;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/mms/data/Contact;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/mms/data/Contact;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/mms/data/Contact;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/android/mms/data/Contact;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/android/mms/data/Contact;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/data/Contact;->mPresenceMode:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/mms/data/Contact;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/data/Contact;->mPresenceMode:I

    return p1
.end method

.method public static addListener(Lcom/android/mms/data/Contact$UpdateListener;)V
    .locals 2

    sget-object v1, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static compareWithE164(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    invoke-static {p0, p2}, Lcom/android/mms/data/Contact;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/MmsApp;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p2, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public static dump()V
    .locals 1

    sget-object v0, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact$ContactsCache;->dump()V

    return-void
.end method

.method public static declared-synchronized dumpListeners()V
    .locals 8

    const-class v5, Lcom/android/mms/data/Contact;

    monitor-enter v5

    const/4 v0, 0x0

    :try_start_0
    const-string v4, "Mms/Contact"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Contact] dumpListeners; size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact$UpdateListener;

    const-string v4, "Mms/Contact"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v0

    goto :goto_0

    :cond_0
    monitor-exit v5

    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static extractAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x3b

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static extractId(Ljava/lang/String;)J
    .locals 3

    const/16 v1, 0x3b

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gtz v0, :cond_0

    const-wide/16 v1, -0x1

    :goto_0
    return-wide v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0
.end method

.method public static formatNameAndNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    move-object v0, p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneNumberFormattingInMsg()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;
    .locals 6

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    const-string v4, "_@"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "^@"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/android/mms/data/Contact;

    invoke-direct {v0, p0, v3}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/mms/data/RecipientIdCache;->updateNumber(Lcom/android/mms/data/Contact;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {v1, p0}, Lcom/android/mms/util/TelephonyUtils;->isVirginNetworkSpecialAddress(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c040b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/android/mms/data/Contact;

    invoke-direct {v0, p0, v2}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-virtual {v4, p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    goto :goto_0
.end method

.method public static get(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/android/mms/data/ContactList;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/mms/data/Contact;->get(Ljava/util/ArrayList;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/util/ArrayList;ZZ)Lcom/android/mms/data/ContactList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Lcom/android/mms/data/ContactList;"
        }
    .end annotation

    new-instance v2, Lcom/android/mms/data/ContactList;

    invoke-direct {v2}, Lcom/android/mms/data/ContactList;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    const-string v6, "Mms/Contact"

    const-string v7, "ContactList get : invalid contactList"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/mms/data/Contact;->isValidContactData(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "Mms/Contact"

    const-string v7, "ContactList get : invalid contactData"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lcom/android/mms/data/Contact;->extractId(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v6, v6, v4

    if-eqz v6, :cond_4

    const-wide/16 v6, 0x15cf

    cmp-long v6, v6, v4

    if-nez v6, :cond_5

    :cond_4
    sget-object v6, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-static {v1}, Lcom/android/mms/data/Contact;->extractAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, p1}, Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    const-string v6, "Mms/Contact"

    const-string v7, "ContactList get : 1 :got contact"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    sget-object v6, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-virtual {v6, v4, v5}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfo(J)Lcom/android/mms/data/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    sget-object v6, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-static {v1}, Lcom/android/mms/data/Contact;->extractAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, p1}, Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    const-string v6, "Mms/Contact"

    const-string v7, "ContactList get : 2 :got contact"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string v6, "Mms/Contact"

    const-string v7, "ContactList get : 3 :got contact"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    if-eqz p2, :cond_1

    new-instance v6, Lcom/android/mms/data/Contact$1;

    invoke-direct {v6}, Lcom/android/mms/data/Contact$1;-><init>()V

    invoke-static {v2, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public static declared-synchronized getAvataMe(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 15

    const-class v14, Lcom/android/mms/data/Contact;

    monitor-enter v14

    const-wide/16 v12, -0x1

    :try_start_0
    const-string v11, "mimetype = \'vnd.android.cursor.item/photo\'"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Contact;->PROJECTION_PROFILE:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    if-eqz v9, :cond_0

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "photo_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v12

    :cond_0
    if-eqz v9, :cond_1

    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    cmp-long v0, v12, v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND _id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/Contact;->AVATA_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Contact;->AVATA_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    if-eqz v8, :cond_2

    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v6

    :cond_2
    if-eqz v8, :cond_3

    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    if-nez v6, :cond_6

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/data/Contact;->sCachedAvatarDataMe:[B

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/data/Contact;->sCachedAvatarDataMeImage:Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    monitor-exit v14

    return-object p1

    :catch_0
    move-exception v10

    :try_start_5
    const-string v0, "Mms/Contact"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalStateException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const-wide/16 v12, -0x1

    if-eqz v9, :cond_1

    :try_start_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v14

    throw v0

    :catchall_1
    move-exception v0

    if-eqz v9, :cond_4

    :try_start_7
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :catchall_2
    move-exception v0

    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :cond_6
    sget-object v0, Lcom/android/mms/data/Contact;->sCachedAvatarDataMe:[B

    invoke-static {v0, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object p1, Lcom/android/mms/data/Contact;->sCachedAvatarDataMeImage:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_7
    sput-object v6, Lcom/android/mms/data/Contact;->sCachedAvatarDataMe:[B

    sget-object v0, Lcom/android/mms/data/Contact;->sCachedAvatarDataMe:[B

    const/4 v1, 0x0

    sget-object v2, Lcom/android/mms/data/Contact;->sCachedAvatarDataMe:[B

    array-length v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v7

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    sput-object v0, Lcom/android/mms/data/Contact;->sCachedAvatarDataMeImage:Landroid/graphics/drawable/Drawable;

    sget-object p1, Lcom/android/mms/data/Contact;->sCachedAvatarDataMeImage:Landroid/graphics/drawable/Drawable;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :cond_8
    move-object v3, v11

    goto/16 :goto_1
.end method

.method public static getAvatarMeForFindo(Landroid/content/Context;)Landroid/net/Uri;
    .locals 12

    const/4 v11, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Contact;->PROJECTION_CONTACT:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    const-wide/16 v9, -0x1

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-object v11

    :catch_0
    move-exception v8

    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getByIds(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/android/mms/data/ContactList;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v10, 0x3b

    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_0
    return-object v1

    :cond_1
    new-instance v1, Lcom/android/mms/data/ContactList;

    invoke-direct {v1}, Lcom/android/mms/data/ContactList;-><init>()V

    const/4 v3, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    # invokes: Lcom/android/mms/data/Contact$ContactsCache;->checkContactProviderAvailible()Z
    invoke-static {v7}, Lcom/android/mms/data/Contact$ContactsCache;->access$000(Lcom/android/mms/data/Contact$ContactsCache;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_3

    const/4 v7, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "5583"

    invoke-static {v3, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    sget-object v7, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/android/mms/data/Contact$ContactsCache;->queryContactInfoById(J)Lcom/android/mms/data/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "Mms/Contact"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " GetByIds number "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-virtual {v7, v6}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfo(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    sget-object v7, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfo(J)Lcom/android/mms/data/Contact;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    if-eqz v6, :cond_2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    sget-object v7, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-virtual {v7, v6, p1}, Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public static getContactName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p0

    :cond_0
    return-object v0
.end method

.method public static getContactNameForToButton(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p0

    :cond_0
    return-object v0
.end method

.method public static declared-synchronized getDefaultContactImage()Landroid/graphics/drawable/Drawable;
    .locals 3

    const-class v1, Lcom/android/mms/data/Contact;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mms/data/Contact;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020282

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/Contact;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    :cond_0
    sget-object v0, Lcom/android/mms/data/Contact;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static getLocalProfileUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 12

    const/4 v11, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Contact;->PROJECTION_CONTACT:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    const-wide/16 v9, -0x1

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v0, "profile"

    invoke-virtual {v6, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-object v11

    :catch_0
    move-exception v8

    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getTemp()Lcom/android/mms/data/Contact;
    .locals 2

    new-instance v0, Lcom/android/mms/data/Contact;

    invoke-static {}, Lcom/android/mms/data/Conversation;->getTempThreadIdStr()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getUseYellowPage()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/data/Contact;->loadFromYellowPage:Z

    return v0
.end method

.method private getYellowPageInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    const-string v6, ""

    invoke-static {v0, v6, p1}, Lcom/android/mms/data/YellowPageCallerid;->getShopNameFromNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v6, "Mms/Contact"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "YellowPageTime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v1, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Mms/Contact"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "YellowPageCallerid.getShopNameFromNumber="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_0

    const-string v6, "Mms/Contact"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "shopName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v3
.end method

.method public static declared-synchronized hasAvatarMeForFindo(Landroid/content/Context;)Z
    .locals 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-class v10, Lcom/android/mms/data/Contact;

    monitor-enter v10

    :try_start_0
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v5, "data"

    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "data15"

    aput-object v5, v2, v0

    const-string v3, "mimetype = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "vnd.android.cursor.item/photo"

    aput-object v5, v4, v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v7

    if-eqz v7, :cond_2

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    if-nez v6, :cond_1

    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v0, v8

    :goto_0
    monitor-exit v10

    return v0

    :cond_0
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v8

    goto :goto_0

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v9

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v10

    throw v0
.end method

.method public static init(Landroid/content/Context;Z)V
    .locals 5

    const/4 v4, 0x1

    const-string v1, "Mms/Contact"

    const-string v2, "init()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/mms/data/Contact$ContactsCache;->getInstance(Landroid/content/Context;)Lcom/android/mms/data/Contact$ContactsCache;

    move-result-object v1

    sput-object v1, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    if-eqz p1, :cond_3

    invoke-static {p0}, Lcom/android/mms/data/RecipientIdCache;->init(Landroid/content/Context;)V

    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableEcid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/mms/util/EcidLookup;->init(Landroid/content/Context;)V

    :cond_0
    sget-boolean v1, Lcom/android/mms/data/Contact;->sIsRegistered:Z

    if-nez v1, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/data/Contact$ContactContentObserver;

    invoke-direct {v1, v0}, Lcom/android/mms/data/Contact$ContactContentObserver;-><init>(Landroid/os/Handler;)V

    sput-object v1, Lcom/android/mms/data/Contact;->sContactsObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/mms/data/Contact$ContentObserverHandler;

    invoke-direct {v1, v0}, Lcom/android/mms/data/Contact$ContentObserverHandler;-><init>(Landroid/os/Handler;)V

    sput-object v1, Lcom/android/mms/data/Contact;->sContactsObserverHandler:Lcom/android/mms/data/Contact$ContentObserverHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/data/Contact;->sContactsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {p0}, Lcom/android/mms/widget/MmsWidgetProvider;->refreshWidgetCount(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/data/Contact;->sContactsObserverHandler:Lcom/android/mms/data/Contact$ContentObserverHandler;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sput-boolean v4, Lcom/android/mms/data/Contact;->sIsRegistered:Z

    :cond_1
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/mms/data/Contact;->salesCode:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->initContactImage(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableYellowPage()Z

    move-result v1

    if-eqz v1, :cond_2

    sput-boolean v4, Lcom/android/mms/data/Contact;->loadFromYellowPage:Z

    :cond_2
    const-string v1, "Mms/Contact"

    const-string v2, "init"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v1, "Mms/Contact"

    const-string v2, "skip RecipientIdCache.init() on app creating"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static invalidateCache()V
    .locals 2

    sget-boolean v0, Lcom/android/mms/data/Contact;->isInvalid:Z

    if-nez v0, :cond_0

    const-string v0, "Mms/Contact"

    const-string v1, "invalidateCache(),isInvalid=false"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact$ContactsCache;->invalidate()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/data/Contact;->isInvalid:Z

    goto :goto_0
.end method

.method public static isChatUser(JLjava/lang/String;)Z
    .locals 11

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v7

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "contact_id"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND data1"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' AND mimetype"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " = \'vnd.sec.cursor.item/samsung_easysignup\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND data2"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " & 2 == 2"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    :try_start_0
    const-string v0, "Mms/Contact"

    const-string v1, "isChatUser() : ContactQuery START"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "contact_id"

    aput-object v4, v2, v3

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const-string v0, "Mms/Contact"

    const-string v1, "isChatUser() : ContactQuery END"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v9, 0x1

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return v9

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static isNumberInContacts(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->reload()V

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v1

    return v1
.end method

.method private static isValidContactData(Ljava/lang/String;)Z
    .locals 4

    const/16 v3, 0x3b

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v3, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v3, v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static normalizeDualNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_6

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-nez v1, :cond_0

    const/16 v4, 0x2b

    if-eq v0, v4, :cond_1

    :cond_0
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v4, v2, -0x1

    if-ne v1, v4, :cond_3

    const/16 v4, 0x23

    if-ne v0, v4, :cond_3

    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/16 v4, 0x61

    if-lt v0, v4, :cond_4

    const/16 v4, 0x7a

    if-le v0, v4, :cond_5

    :cond_4
    const/16 v4, 0x41

    if-lt v0, v4, :cond_2

    const/16 v4, 0x5a

    if-gt v0, v4, :cond_2

    :cond_5
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    return-object v4

    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public static normalizeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_5

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0xa

    invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const/16 v5, 0x2b

    if-ne v0, v5, :cond_2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/16 v5, 0x61

    if-lt v0, v5, :cond_3

    const/16 v5, 0x7a

    if-le v0, v5, :cond_4

    :cond_3
    const/16 v5, 0x41

    if-lt v0, v5, :cond_0

    const/16 v5, 0x5a

    if-gt v0, v5, :cond_0

    :cond_4
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    return-object v5

    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method

.method public static normalizeNumberForKOR(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_6

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-nez v1, :cond_0

    const/16 v4, 0x2b

    if-eq v0, v4, :cond_1

    :cond_0
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/16 v4, 0x61

    if-lt v0, v4, :cond_4

    const/16 v4, 0x7a

    if-le v0, v4, :cond_5

    :cond_4
    const/16 v4, 0x41

    if-lt v0, v4, :cond_2

    const/16 v4, 0x5a

    if-gt v0, v4, :cond_2

    :cond_5
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    return-object v4

    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private notSynchronizedUpdateNameAndNumber()V
    .locals 2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneNumberFormattingImprove()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mNameAndNumber:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/mms/data/Contact;->formatNameAndNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mNameAndNumber:Ljava/lang/String;

    goto :goto_0
.end method

.method protected static performUpdate()V
    .locals 3

    const-string v0, "Mms/Contact"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performUpdate:widgetCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/widget/MmsWidgetProvider;->sWidgetCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/android/mms/widget/MmsWidgetProvider;->sWidgetCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/data/Contact;->isInvalid:Z

    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V
    .locals 2

    sget-object v1, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static replaceInvalidCharsOnRecipient([Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    if-eqz v4, :cond_0

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_1

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinRecipientLength()I

    move-result v6

    if-lt v5, v6, :cond_0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5
.end method

.method public static replaceInvalidPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    move-object v0, p0

    const-string v1, "+00"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_3

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_3

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_3

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_3

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_3

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_3

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static setAlbums(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public static setUseYellowPage(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/mms/data/Contact;->loadFromYellowPage:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized existsInDatabase()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/Contact;->mPersonId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/mms/data/Contact;->mAvatarData:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    :try_start_1
    iget-object v3, p0, Lcom/android/mms/data/Contact;->mAvatarData:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/data/Contact;->mAvatarData:[B

    array-length v5, v5

    invoke-static {v3, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    if-eqz v0, :cond_1

    move-object p2, v0

    :cond_1
    :goto_0
    monitor-exit p0

    return-object p2

    :catch_0
    move-exception v2

    :try_start_3
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->writeHprofDataToFile()V

    const-string v3, "Mms/Contact"

    const-string v4, "OutOfMemoryError caught @ BitmapFactory.decodeByteArray and return default drawable"

    invoke-static {v3, v4, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getAvatarBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/mms/data/Contact;->mAvatarData:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/android/mms/data/Contact;->mAvatarData:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/data/Contact;->mAvatarData:[B

    array-length v4, v4

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->writeHprofDataToFile()V

    const-string v2, "Mms/Contact"

    const-string v3, "OutOfMemoryError caught @ BitmapFactory.decodeByteArray and return default drawable"

    invoke-static {v2, v3, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getHigherResolutionAvatarBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    const-string v3, "Mms/Contact"

    const-string v4, "getHigherResolutionAvatarBitmap"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_1
    const-string v3, "Mms/Contact"

    const-string v4, "getHigherResolutionAvatarBitmap start decoding"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->writeHprofDataToFile()V

    const-string v3, "Mms/Contact"

    const-string v4, "getHigherResolutionAvatarBitmap OutOfMemoryError caught @ BitmapFactory.decodeByteArray and throw"

    invoke-static {v3, v4, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getLabel()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLookupKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mLookupKey:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getLookupUri()Landroid/net/Uri;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mLookupKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/mms/data/Contact;->mLookupKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getName()Ljava/lang/String;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isLocalNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    const v3, 0x7f0c00fc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneNumberFormattingInMsg()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableYellowPage()Z

    move-result v2

    if-eqz v2, :cond_7

    sget-boolean v2, Lcom/android/mms/data/Contact;->loadFromYellowPage:Z

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/android/mms/data/YellowPageCallerid;->isServiceReady(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x32

    if-lt v2, v3, :cond_3

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/mms/data/YellowPageDataCache;->getInstance()Lcom/android/mms/data/YellowPageDataCache;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/mms/data/YellowPageDataCache;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v2, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/mms/data/Contact;->getYellowPageInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iput-object v1, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    invoke-static {}, Lcom/android/mms/data/YellowPageDataCache;->getInstance()Lcom/android/mms/data/YellowPageDataCache;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/data/YellowPageDataCache;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/mms/data/YellowPageDataCache;->getInstance()Lcom/android/mms/data/YellowPageDataCache;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/data/YellowPageDataCache;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    goto :goto_0

    :cond_6
    iput-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_7
    :try_start_2
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableYellowPage()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {}, Lcom/android/mms/data/YellowPageDataCache;->getInstance()Lcom/android/mms/data/YellowPageDataCache;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/android/mms/data/YellowPageDataCache;->getInstance()Lcom/android/mms/data/YellowPageDataCache;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/mms/data/YellowPageDataCache;->isYPNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized getNameAndNumber()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneNumberFormattingImprove()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNameAndNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/mms/data/Contact;->formatNameAndNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mNameAndNumber:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNameAndNumber:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNameAndNumber:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumber()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumberInContactDB()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumberInContactDB:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPersonId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    return-wide v0
.end method

.method public declared-synchronized getPhotoUri()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mThumbnailUri:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPresenceResId()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/mms/data/Contact;->mPresenceResId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPresenceText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mPresenceText:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getRecentNumber()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRecipientId()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/Contact;->mRecipientId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRingtone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSendToVoicemail()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/data/Contact;->mSendToVoicemail:Z

    return v0
.end method

.method public getThumnailUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mThumbnailUri:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getUri()Landroid/net/Uri;
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasAvatarData()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mAvatarData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mAvatarData:[B

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized hasName()Z
    .locals 2

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isLocalNumber(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isAlias()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isChatUser()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/data/Contact;->mChatUser:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEmail()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isNumberModified()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/data/Contact;->mNumberIsModified:Z

    return v0
.end method

.method public declared-synchronized isPhoneNumber()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isTemp()Z
    .locals 2

    invoke-static {}, Lcom/android/mms/data/Conversation;->getTempThreadIdStr()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public reload()V
    .locals 3

    const-string v0, "Mms/Contact"

    const-string v1, "reload()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/data/Contact;->mIsStale:Z

    sget-object v0, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    iget-object v1, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    return-void
.end method

.method public reload(Z)V
    .locals 2

    const-string v0, "Mms/Contact"

    const-string v1, "reload(boolean)"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/data/Contact;->mIsStale:Z

    sget-object v0, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    iget-object v1, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    return-void
.end method

.method public declared-synchronized setChatUser(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/mms/data/Contact;->mChatUser:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setIsNumberModified(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/data/Contact;->mNumberIsModified:Z

    return-void
.end method

.method public declared-synchronized setNumber(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/mms/data/Contact;->notSynchronizedUpdateNameAndNumber()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/data/Contact;->mNumberIsModified:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRecipientId(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/android/mms/data/Contact;->mRecipientId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneNumberFormattingImprove()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getNameAndNumber()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNameAndNumber:Ljava/lang/String;

    goto :goto_0
.end method
