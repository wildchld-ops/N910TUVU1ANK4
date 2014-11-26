.class public Lcom/android/mms/rcs/transaction/ServiceProvider;
.super Ljava/lang/Object;
.source "ServiceProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/rcs/transaction/ServiceProvider$Columns;,
        Lcom/android/mms/rcs/transaction/ServiceProvider$FeatureTags;
    }
.end annotation


# static fields
.field public static final ADDINFO_FRESH:Ljava/lang/String;

.field public static final ADDINFO_LOCAL_OFFLINE:Ljava/lang/String;

.field private static final ADDINFO_NONE:Ljava/lang/String; = ""

.field public static final ADDINFO_REMOTE_OFFLINE:Ljava/lang/String;

.field private static final ADDINFO_SEPARATOR:Ljava/lang/String; = ";"

.field public static final AUTHORITY:Ljava/lang/String; = "com.samsung.rcs.serviceprovider"

.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final INCALL_URI:Landroid/net/Uri;

.field public static final LOOKUP_URI:Landroid/net/Uri;

.field private static final N_INCALL_SERVICE:I = 0x4

.field private static final N_LOOKUP_URI:I = 0x1

.field private static final N_LOOKUP_URI_ID:I = 0x2

.field private static final N_OWN_CAPS:I = 0x5

.field private static final N_SIP_URI:I = 0x3

.field static final OPTIONS_PATTERN:Ljava/util/regex/Pattern;

.field public static final OWN_CAPS_URI:Landroid/net/Uri;

.field private static final OWN_PROJECTION:[Ljava/lang/String;

.field public static final SERVICE_PROJECTION:[Ljava/lang/String;

.field public static final SIP_URI:Landroid/net/Uri;

.field protected static final TAG:Ljava/lang/String; = "Mms/ServiceProvider"

.field private static sActualCapsFlags:[Z

.field private static final sCapsLock:Ljava/util/concurrent/locks/Lock;

.field private static sMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "remote_offline"

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/rcs/transaction/ServiceProvider;->ADDINFO_REMOTE_OFFLINE:Ljava/lang/String;

    const-string v0, "local_offline"

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/rcs/transaction/ServiceProvider;->ADDINFO_LOCAL_OFFLINE:Ljava/lang/String;

    const-string v0, "fresh"

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/rcs/transaction/ServiceProvider;->ADDINFO_FRESH:Ljava/lang/String;

    const-string v0, "\\?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/mms/rcs/transaction/ServiceProvider;->OPTIONS_PATTERN:Ljava/util/regex/Pattern;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "feature_tag"

    aput-object v1, v0, v4

    const-string v1, "is_enabled"

    aput-object v1, v0, v5

    const-string v1, "icon_id"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "package_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "int_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "int_category"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "sip_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "displayname"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "additional_info"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "service_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/rcs/transaction/ServiceProvider;->SERVICE_PROJECTION:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "feature_tag"

    aput-object v1, v0, v4

    const-string v1, "is_enabled"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/mms/rcs/transaction/ServiceProvider;->OWN_PROJECTION:[Ljava/lang/String;

    const-string v0, "content://"

    const-string v1, "com.samsung.rcs.serviceprovider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/rcs/transaction/ServiceProvider;->AUTHORITY_URI:Landroid/net/Uri;

    sget-object v0, Lcom/android/mms/rcs/transaction/ServiceProvider;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "lookup"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/rcs/transaction/ServiceProvider;->LOOKUP_URI:Landroid/net/Uri;

    sget-object v0, Lcom/android/mms/rcs/transaction/ServiceProvider;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "sip"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/rcs/transaction/ServiceProvider;->SIP_URI:Landroid/net/Uri;

    sget-object v0, Lcom/android/mms/rcs/transaction/ServiceProvider;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "incall"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/rcs/transaction/ServiceProvider;->INCALL_URI:Landroid/net/Uri;

    sget-object v0, Lcom/android/mms/rcs/transaction/ServiceProvider;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "own"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/rcs/transaction/ServiceProvider;->OWN_CAPS_URI:Landroid/net/Uri;

    new-instance v0, Landroid/content/UriMatcher;

    invoke-direct {v0, v3}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/mms/rcs/transaction/ServiceProvider;->sMatcher:Landroid/content/UriMatcher;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/android/mms/rcs/transaction/ServiceProvider;->sCapsLock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
