.class public Lcom/android/mms/ui/SecretCacheManager;
.super Ljava/lang/Object;
.source "SecretCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;,
        Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;
    }
.end annotation


# static fields
.field static CONTACT_COLUMNS:[Ljava/lang/String; = null

.field public static CONTACT_PRIVATE_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final SECRET_MODE_NONE:I = 0x0

.field public static final SECRET_MODE_PRIVATE_CONTACT:I = 0x2

.field public static final SECRET_MODE_THREAD:I = 0x1

.field public static final SECRET_MODE_THREAD_AND_CONTACT:I = 0x3

.field public static final SECRET_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "Mms/SecretCacheManager"

.field public static final THREAD_SECRET_MODE:Ljava/lang/String; = "secret_mode"

.field public static selection:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/android/mms/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    sput-object v0, Lcom/android/mms/ui/SecretCacheManager;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.android.contacts/private"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/SecretCacheManager;->CONTACT_PRIVATE_URI:Landroid/net/Uri;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "secret_mode"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/ui/SecretCacheManager;->SECRET_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/SecretCacheManager;->selection:Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "data1"

    aput-object v1, v0, v3

    const-string v1, "data3"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

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

    const-string v2, "is_private"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/SecretCacheManager;->CONTACT_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
