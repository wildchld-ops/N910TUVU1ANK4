.class Lcom/android/mms/data/Contact$ContactsCache$ContactQuery;
.super Ljava/lang/Object;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/data/Contact$ContactsCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactQuery"
.end annotation


# static fields
.field private static final LABEL:I = 0x3

.field private static final LOOKUP_KEY:I = 0x7

.field private static final MATCHED_NUMBER:I = 0x4

.field private static final NAME:I = 0x1

.field private static final NORMALIZED_NUMBER:I = 0x5

.field private static final PERSON_ID:I = 0x0

.field private static final PHONE_TYPE:I = 0x2

.field private static final PHOTE_LOOKUP_WITH_PROFILE:Landroid/net/Uri;

.field private static final PHOTO_ID:I = 0x6

.field private static final PHOTO_URI:I = 0x8

.field private static final RINGTONE:I = 0x9

.field private static final _PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "phone_lookup_with_profile"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache$ContactQuery;->PHOTE_LOOKUP_WITH_PROFILE:Landroid/net/Uri;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "label"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "normalized_number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "custom_ringtone"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache$ContactQuery;->_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$2500()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/mms/data/Contact$ContactsCache$ContactQuery;->PHOTE_LOOKUP_WITH_PROFILE:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2600()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/data/Contact$ContactsCache$ContactQuery;->_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method
