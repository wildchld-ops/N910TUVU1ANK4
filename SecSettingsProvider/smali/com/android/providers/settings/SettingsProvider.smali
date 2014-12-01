.class public Lcom/android/providers/settings/SettingsProvider;
.super Landroid/content/ContentProvider;
.source "SettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/settings/SettingsProvider$SettingsCache;,
        Lcom/android/providers/settings/SettingsProvider$CachePrefetchThread;,
        Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;,
        Lcom/android/providers/settings/SettingsProvider$SqlArguments;
    }
.end annotation


# static fields
.field private static final COLUMN_VALUE:[Ljava/lang/String;

.field private static final MULTISIM_DB:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NULL_SETTING:Landroid/os/Bundle;

.field private static final TOO_LARGE_TO_CACHE_MARKER:Landroid/os/Bundle;

.field private static final sGlobalCache:Lcom/android/providers/settings/SettingsProvider$SettingsCache;

.field private static final sKnownMutationsInFlight:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field private static sObserverInstances:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSecureCaches:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/providers/settings/SettingsProvider$SettingsCache;",
            ">;"
        }
    .end annotation
.end field

.field static final sSecureGlobalKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSystemCaches:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/providers/settings/SettingsProvider$SettingsCache;",
            ">;"
        }
    .end annotation
.end field

.field static final sSystemGlobalKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private SHARE_KNOX:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBackupManager:Landroid/app/backup/BackupManager;

.field protected final mOpenHelpers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/providers/settings/DatabaseHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mPersonaManager:Landroid/os/PersonaManager;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->COLUMN_VALUE:[Ljava/lang/String;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemCaches:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSecureCaches:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    const-string v1, "global"

    invoke-direct {v0, v1}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sGlobalCache:Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Landroid/util/SparseArray;

    const-string v0, "value"

    invoke-static {v0, v3}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->NULL_SETTING:Landroid/os/Bundle;

    const-string v0, "_dummy"

    invoke-static {v0, v3}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->TOO_LARGE_TO_CACHE_MARKER:Landroid/os/Bundle;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSecureGlobalKeys:Ljava/util/HashSet;

    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSecureGlobalKeys:Ljava/util/HashSet;

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getMovedKeys(Ljava/util/HashSet;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemGlobalKeys:Ljava/util/HashSet;

    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemGlobalKeys:Ljava/util/HashSet;

    invoke-static {v0}, Landroid/provider/Settings$System;->getNonLegacyMovedKeys(Ljava/util/HashSet;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sObserverInstances:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v1, "select_icon_1"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v1, "select_icon_2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v1, "current_network"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v1, "select_name_1"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v1, "select_name_2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v1, "prefered_voice_call"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v1, "prefered_video_call"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v1, "is_sim_1"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v1, "paging_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v1, "phone1_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v1, "phone2_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v1, "dsa_init_dialog_is_checked"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v1, "dsa_reset"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v1, "dsa_inter_change"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v1, "dsa_sim1_value"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v1, "dsa_sim2_value"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v1, "dsa_init_process"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v1, "dsa_is_first"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v1, "dsa_check_started_networkmanagement"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v1, "paging_mode_dialog_is_checked"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v1, "sim1_value"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v1, "sim2_value"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mOpenHelpers:Landroid/util/SparseArray;

    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mPersonaManager:Landroid/os/PersonaManager;

    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->SHARE_KNOX:Ljava/util/HashSet;

    return-void
.end method

.method static synthetic access$000()Landroid/util/SparseArray;
    .locals 1

    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/providers/settings/SettingsProvider;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->fullyPopulateCaches(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/providers/settings/SettingsProvider;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0

    iput-object p1, p0, Lcom/android/providers/settings/SettingsProvider;->SHARE_KNOX:Ljava/util/HashSet;

    return-object p1
.end method

.method static synthetic access$400()Landroid/os/Bundle;
    .locals 1

    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->NULL_SETTING:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$500()Landroid/os/Bundle;
    .locals 1

    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->TOO_LARGE_TO_CACHE_MARKER:Landroid/os/Bundle;

    return-object v0
.end method

.method private checkWritePermissions(Lcom/android/providers/settings/SettingsProvider$SqlArguments;)V
    .locals 5

    const-string v0, "secure"

    iget-object v1, p1, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "global"

    iget-object v1, p1, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Permission denial: writing to secure settings requires %1$s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "android.permission.WRITE_SECURE_SETTINGS"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private ensureAndroidIdIsSet(I)Z
    .locals 18

    sget-object v4, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "value"

    aput-object v6, v5, v3

    const-string v6, "name=?"

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v8, "android_id"

    aput-object v8, v7, v3

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v9, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/providers/settings/SettingsProvider;->queryForUser(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v10

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    :goto_0
    if-nez v16, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v15

    if-nez v15, :cond_1

    const/4 v3, 0x0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :goto_1
    return v3

    :cond_0
    const/16 v16, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v13, Ljava/security/SecureRandom;

    invoke-direct {v13}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v13}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v12

    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "name"

    const-string v4, "android_id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "value"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p1

    invoke-direct {v0, v3, v1, v2}, Lcom/android/providers/settings/SettingsProvider;->insertForUser(Landroid/net/Uri;Landroid/content/ContentValues;I)Landroid/net/Uri;

    move-result-object v14

    if-nez v14, :cond_2

    const-string v3, "SettingsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to generate new ANDROID_ID for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_2
    :try_start_2
    const-string v3, "SettingsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Generated and saved new ANDROID_ID ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "dropbox"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/DropBoxManager;

    if-eqz v11, :cond_3

    const-string v3, "restricted_profile_ssaid"

    invoke-virtual {v11, v3}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "restricted_profile_ssaid"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",restricted_profile_ssaid,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    const/4 v3, 0x1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_0
    move-exception v3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method private establishDbTracking(I)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/providers/settings/SettingsProvider;->mOpenHelpers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/settings/DatabaseHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/providers/settings/DatabaseHelper;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, p1}, Lcom/android/providers/settings/DatabaseHelper;-><init>(Landroid/content/Context;I)V

    iget-object v3, p0, Lcom/android/providers/settings/SettingsProvider;->mOpenHelpers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->sSystemCaches:Landroid/util/SparseArray;

    new-instance v4, Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    const-string v5, "system"

    invoke-direct {v4, v5}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->sSecureCaches:Landroid/util/SparseArray;

    new-instance v4, Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    const-string v5, "secure"

    invoke-direct {v4, v5}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Landroid/util/SparseArray;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v4, Lcom/android/providers/settings/SettingsProvider;->sObserverInstances:Landroid/util/SparseArray;

    monitor-enter v4

    :try_start_1
    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->sObserverInstances:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v2, Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, p1, v3}, Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;-><init>(Lcom/android/providers/settings/SettingsProvider;ILjava/lang/String;)V

    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->sObserverInstances:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->ensureAndroidIdIsSet(I)Z

    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->startAsyncCachePopulation(I)V

    return-void

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method private fullyPopulateCache(Lcom/android/providers/settings/DatabaseHelper;Ljava/lang/String;Lcom/android/providers/settings/SettingsProvider$SettingsCache;)V
    .locals 14

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "name"

    aput-object v4, v3, v2

    const/4 v2, 0x1

    const-string v4, "value"

    aput-object v4, v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "201"

    move-object/from16 v2, p2

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    :try_start_0
    monitor-enter p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual/range {p3 .. p3}, Landroid/util/LruCache;->evictAll()V

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->setFullyMatchesDisk(Z)V

    const/4 v12, 0x0

    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v13}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->populate(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_0
    const/16 v2, 0xc8

    if-le v12, v2, :cond_1

    const/4 v2, 0x0

    :try_start_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->setFullyMatchesDisk(Z)V

    :cond_1
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method private fullyPopulateCaches(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mOpenHelpers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/settings/DatabaseHelper;

    if-nez p1, :cond_0

    const-string v1, "global"

    sget-object v2, Lcom/android/providers/settings/SettingsProvider;->sGlobalCache:Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/SettingsProvider;->fullyPopulateCache(Lcom/android/providers/settings/DatabaseHelper;Ljava/lang/String;Lcom/android/providers/settings/SettingsProvider$SettingsCache;)V

    :cond_0
    const-string v2, "secure"

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sSecureCaches:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/providers/settings/SettingsProvider;->fullyPopulateCache(Lcom/android/providers/settings/DatabaseHelper;Ljava/lang/String;Lcom/android/providers/settings/SettingsProvider$SettingsCache;)V

    const-string v2, "system"

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sSystemCaches:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/providers/settings/SettingsProvider;->fullyPopulateCache(Lcom/android/providers/settings/DatabaseHelper;Ljava/lang/String;Lcom/android/providers/settings/SettingsProvider$SettingsCache;)V

    return-void
.end method

.method private getOrConstructCache(ILandroid/util/SparseArray;)Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/providers/settings/SettingsProvider$SettingsCache;",
            ">;)",
            "Lcom/android/providers/settings/SettingsProvider$SettingsCache;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->getOrEstablishDatabase(I)Lcom/android/providers/settings/DatabaseHelper;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    return-object v0
.end method

.method private getOrEstablishDatabase(I)Lcom/android/providers/settings/DatabaseHelper;
    .locals 6

    const/16 v3, 0x3e8

    if-lt p1, v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Uid rather than user handle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/providers/settings/SettingsProvider;->mOpenHelpers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/settings/DatabaseHelper;

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->establishDbTracking(I)V

    iget-object v3, p0, Lcom/android/providers/settings/SettingsProvider;->mOpenHelpers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/settings/DatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private getUriFor(Landroid/net/Uri;Landroid/content/ContentValues;J)Landroid/net/Uri;
    .locals 5

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "system"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "secure"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "global"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string v2, "name"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_2
    invoke-static {p1, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method private insertForPersona(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/SettingsProvider;->mPersonaManager:Landroid/os/PersonaManager;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/SettingsProvider;->mPersonaManager:Landroid/os/PersonaManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/PersonaManager;->getPersonaIds()[I

    move-result-object v13

    if-eqz v13, :cond_2

    array-length v0, v13

    move/from16 v18, v0

    if-lez v18, :cond_2

    move-object v3, v13

    array-length v8, v3

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_2

    aget v12, v3, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/SettingsProvider;->mPersonaManager:Landroid/os/PersonaManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/os/PersonaManager;->settingSyncAllowed(I)Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v12, v1}, Lcom/android/providers/settings/SettingsProvider;->cacheForTable(ILjava/lang/String;)Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    move-result-object v4

    const-string v18, "value"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-static {v4, v0, v1}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->isRedundantSetValue(Lcom/android/providers/settings/SettingsProvider$SettingsCache;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    sget-object v18, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Landroid/util/SparseArray;

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/providers/settings/SettingsProvider;->getOrEstablishDatabase(I)Lcom/android/providers/settings/DatabaseHelper;

    move-result-object v6

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, p3

    invoke-virtual {v5, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v14

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    const-wide/16 v18, 0x0

    cmp-long v18, v14, v18

    if-lez v18, :cond_0

    move-object/from16 v0, p3

    invoke-static {v4, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->populate(Lcom/android/providers/settings/SettingsProvider$SettingsCache;Landroid/content/ContentValues;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v14, v15}, Lcom/android/providers/settings/SettingsProvider;->getUriFor(Landroid/net/Uri;Landroid/content/ContentValues;J)Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v12}, Lcom/android/providers/settings/SettingsProvider;->sendNotify(Landroid/net/Uri;I)V

    goto :goto_1

    :cond_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_3
    return-void
.end method

.method private insertForUser(Landroid/net/Uri;Landroid/content/ContentValues;I)Landroid/net/Uri;
    .locals 15

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    move/from16 v0, p3

    if-eq v4, v0, :cond_0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v14, "Not permitted to access settings for other users"

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v2, Lcom/android/providers/settings/SettingsProvider$SqlArguments;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/android/providers/settings/SettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    const-string v12, "favorites"

    iget-object v13, v2, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x0

    :goto_0
    return-object v12

    :cond_1
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {p0, v0, v1}, Lcom/android/providers/settings/SettingsProvider;->isChangeAllowed(Landroid/content/ContentValues;I)Z

    move-result v12

    if-nez v12, :cond_2

    const/4 v12, 0x0

    goto :goto_0

    :cond_2
    const-string v12, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v12, "location_providers_allowed"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-direct/range {p0 .. p3}, Lcom/android/providers/settings/SettingsProvider;->parseProviderList(Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v12

    if-nez v12, :cond_3

    const/4 v12, 0x0

    goto :goto_0

    :cond_3
    if-eqz v8, :cond_6

    sget-object v12, Lcom/android/providers/settings/SettingsProvider;->sSecureGlobalKeys:Ljava/util/HashSet;

    invoke-virtual {v12, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    sget-object v12, Lcom/android/providers/settings/SettingsProvider;->sSystemGlobalKeys:Ljava/util/HashSet;

    invoke-virtual {v12, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    :cond_4
    const-string v12, "global"

    iget-object v13, v2, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    :cond_5
    const-string v12, "global"

    iput-object v12, v2, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    :cond_6
    invoke-direct {p0, v2}, Lcom/android/providers/settings/SettingsProvider;->checkWritePermissions(Lcom/android/providers/settings/SettingsProvider$SqlArguments;)V

    const-string v12, "global"

    iget-object v13, v2, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 p3, 0x0

    :cond_7
    :goto_1
    iget-object v12, v2, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    move/from16 v0, p3

    invoke-virtual {p0, v0, v12}, Lcom/android/providers/settings/SettingsProvider;->cacheForTable(ILjava/lang/String;)Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    move-result-object v3

    const-string v12, "value"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v8, v11}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->isRedundantSetValue(Lcom/android/providers/settings/SettingsProvider$SettingsCache;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto :goto_0

    :cond_8
    iget-object v12, p0, Lcom/android/providers/settings/SettingsProvider;->SHARE_KNOX:Ljava/util/HashSet;

    if-eqz v12, :cond_9

    const/16 v12, 0x64

    move/from16 v0, p3

    if-lt v0, v12, :cond_9

    iget-object v12, p0, Lcom/android/providers/settings/SettingsProvider;->SHARE_KNOX:Ljava/util/HashSet;

    invoke-virtual {v12, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    const/16 p3, 0x0

    iget-object v12, v2, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {p0, v12, v0, v1, v8}, Lcom/android/providers/settings/SettingsProvider;->insertForPersona(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    iget-object v12, p0, Lcom/android/providers/settings/SettingsProvider;->SHARE_KNOX:Ljava/util/HashSet;

    if-eqz v12, :cond_7

    if-nez p3, :cond_7

    iget-object v12, p0, Lcom/android/providers/settings/SettingsProvider;->SHARE_KNOX:Ljava/util/HashSet;

    invoke-virtual {v12, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    iget-object v12, v2, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {p0, v12, v0, v1, v8}, Lcom/android/providers/settings/SettingsProvider;->insertForPersona(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    sget-object v12, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Landroid/util/SparseArray;

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider;->getOrEstablishDatabase(I)Lcom/android/providers/settings/DatabaseHelper;

    move-result-object v6

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    iget-object v12, v2, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v5, v12, v13, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v9

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    const-wide/16 v12, 0x0

    cmp-long v12, v9, v12

    if-gtz v12, :cond_b

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->populate(Lcom/android/providers/settings/SettingsProvider$SettingsCache;Landroid/content/ContentValues;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {p0, v0, v1, v9, v10}, Lcom/android/providers/settings/SettingsProvider;->getUriFor(Landroid/net/Uri;Landroid/content/ContentValues;J)Landroid/net/Uri;

    move-result-object p1

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-direct {p0, v0, v1}, Lcom/android/providers/settings/SettingsProvider;->sendNotify(Landroid/net/Uri;I)V

    move-object/from16 v12, p1

    goto/16 :goto_0
.end method

.method private isAirViewRelated(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    const-string v1, "air_view_master_onoff"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "finger_air_view"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "finger_air_view_information_preview"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "finger_air_view_highlight"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "pen_hovering"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isChangeAllowed(Landroid/content/ContentValues;I)Z
    .locals 12

    const/16 v11, 0x3e8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "restriction_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v2

    const-string v3, "location_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/ILocationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/ILocationPolicy;

    move-result-object v3

    const-string v4, "password_policy"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/enterprise/IPasswordPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IPasswordPolicy;

    move-result-object v4

    const-string v5, "kioskmode"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/kioskmode/IKioskMode;

    move-result-object v5

    const-string v6, "firewall_policy"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/enterprise/IFirewallPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IFirewallPolicy;

    move-result-object v6

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-eqz v6, :cond_0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const-string v8, "name"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eq v7, v11, :cond_2

    new-instance v9, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v9, v7}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    invoke-interface {v2, v9, v10}, Landroid/app/enterprise/IRestrictionPolicy;->isSettingsChangesAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v9

    if-nez v9, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    if-eqz v8, :cond_3

    const-string v9, "install_non_market_apps"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    new-instance v9, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v9, v7}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-interface {v2, v9}, Landroid/app/enterprise/IRestrictionPolicy;->isNonMarketAppAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v9

    if-nez v9, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    if-eqz v8, :cond_5

    const-string v9, "location_providers_allowed"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v2, "value"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v0, :cond_4

    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_4
    if-eqz v2, :cond_0

    invoke-interface {v3, v2, p2}, Landroid/app/enterprise/ILocationPolicy;->isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :cond_5
    if-eqz v8, :cond_6

    const-string v3, "always_finish_activities"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v3, v7}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-interface {v2, v3}, Landroid/app/enterprise/IRestrictionPolicy;->isKillingActivitiesOnLeaveAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v3

    if-nez v3, :cond_6

    move v0, v1

    goto/16 :goto_0

    :cond_6
    if-eqz v8, :cond_9

    const-string v3, "voice_input_control"

    invoke-virtual {v8, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "wake_up_lock_screen"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_7
    invoke-interface {v2, p2}, Landroid/app/enterprise/IRestrictionPolicy;->isSVoiceAllowedAsUser(I)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2, p2}, Landroid/app/enterprise/IRestrictionPolicy;->isMicrophoneEnabledAsUser(I)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    move v0, v1

    goto/16 :goto_0

    :cond_9
    if-eqz v8, :cond_a

    const-string v3, "kg_multiple_lockscreen"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v3, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v3, v7}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v9, 0x1

    invoke-interface {v2, v3, v9}, Landroid/app/enterprise/IRestrictionPolicy;->isLockScreenViewAllowed(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v3

    if-nez v3, :cond_a

    move v0, v1

    goto/16 :goto_0

    :cond_a
    if-eqz v8, :cond_b

    const-string v3, "lock_screen_shortcut"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v3, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v3, v7}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v9, 0x2

    invoke-interface {v2, v3, v9}, Landroid/app/enterprise/IRestrictionPolicy;->isLockScreenViewAllowed(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v3

    if-nez v3, :cond_b

    move v0, v1

    goto/16 :goto_0

    :cond_b
    if-eqz v8, :cond_c

    const-string v3, "airplane_mode_on"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/app/enterprise/IRestrictionPolicy;->isAirplaneModeAllowed(Z)Z

    move-result v2

    if-nez v2, :cond_c

    move v0, v1

    goto/16 :goto_0

    :cond_c
    if-eqz v8, :cond_e

    const-string v2, "global_http_proxy_host"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "global_http_proxy_port"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "global_http_proxy_exclusion_list"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "global_proxy_pac_url"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    invoke-interface {v6}, Landroid/app/enterprise/IFirewallPolicy;->isGlobalProxyAllowed()Z

    move-result v2

    if-nez v2, :cond_e

    move v0, v1

    goto/16 :goto_0

    :cond_e
    if-eqz v8, :cond_f

    const-string v2, "show_password"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v4, p2}, Landroid/app/enterprise/IPasswordPolicy;->isPasswordVisibilityEnabledAsUser(I)Z

    move-result v2

    if-nez v2, :cond_f

    move v0, v1

    goto/16 :goto_0

    :cond_f
    if-eqz v8, :cond_10

    const-string v2, "multi_window_enabled"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v5, p2}, Landroid/app/enterprise/kioskmode/IKioskMode;->isMultiWindowModeAllowedAsUser(I)Z

    move-result v2

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_0

    :cond_10
    if-eqz v8, :cond_11

    const-string v2, "toolbox_onoff"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, v7}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-interface {v5, v2}, Landroid/app/enterprise/kioskmode/IKioskMode;->isKioskModeEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v0, v1

    goto/16 :goto_0

    :cond_11
    if-eqz v8, :cond_12

    const-string v2, "air_button_onoff"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    if-eq v7, v11, :cond_12

    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, v7}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-interface {v5, v2}, Landroid/app/enterprise/kioskmode/IKioskMode;->isAirCommandModeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-nez v2, :cond_12

    move v0, v1

    goto/16 :goto_0

    :cond_12
    if-eqz v8, :cond_0

    invoke-direct {p0, v8}, Lcom/android/providers/settings/SettingsProvider;->isAirViewRelated(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eq v7, v11, :cond_0

    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, v7}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-interface {v5, v2}, Landroid/app/enterprise/kioskmode/IKioskMode;->isAirViewModeAllowed(Landroid/app/enterprise/ContextInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method private lookupValue(Lcom/android/providers/settings/DatabaseHelper;Ljava/lang/String;Lcom/android/providers/settings/SettingsProvider$SettingsCache;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 14

    if-nez p3, :cond_1

    const-string v3, "SettingsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cache is null for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    :cond_0
    :goto_0
    return-object v13

    :cond_1
    monitor-enter p3

    :try_start_0
    invoke-virtual/range {p3 .. p4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Bundle;

    if-eqz v13, :cond_2

    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->TOO_LARGE_TO_CACHE_MARKER:Landroid/os/Bundle;

    if-eq v13, v3, :cond_3

    monitor-exit p3

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->fullyMatchesDisk()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v13, Lcom/android/providers/settings/SettingsProvider;->NULL_SETTING:Landroid/os/Bundle;

    monitor-exit p3

    goto :goto_0

    :cond_3
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v11, 0x0

    :try_start_2
    sget-object v4, Lcom/android/providers/settings/SettingsProvider;->COLUMN_VALUE:[Ljava/lang/String;

    const-string v5, "name=?"

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p4, v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v3}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->putIfAbsent(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v13

    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_4
    if-eqz v11, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v3}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->putIfAbsent(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    sget-object v13, Lcom/android/providers/settings/SettingsProvider;->NULL_SETTING:Landroid/os/Bundle;

    goto :goto_0

    :catch_0
    move-exception v12

    :try_start_3
    const-string v3, "SettingsProvider"

    const-string v4, "settings lookup error"

    invoke-static {v3, v4, v12}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v13, 0x0

    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_1
    move-exception v3

    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v3
.end method

.method private parseProviderList(Landroid/net/Uri;Landroid/content/ContentValues;I)Z
    .locals 15

    const-string v1, "value"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v11, 0x0

    if-eqz v14, :cond_5

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_5

    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v1, 0x2b

    if-eq v12, v1, :cond_0

    const/16 v1, 0x2d

    if-ne v12, v1, :cond_5

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    const-string v13, ""

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "value"

    aput-object v2, v3, v1

    const-string v4, "name=\'location_providers_allowed\'"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/providers/settings/SettingsProvider;->queryForUser(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v13

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    add-int v9, v10, v1

    if-lez v10, :cond_2

    add-int/lit8 v1, v10, -0x1

    invoke-virtual {v13, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_2

    const/4 v10, -0x1

    :cond_2
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v9, v1, :cond_3

    invoke-virtual {v13, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_3

    const/4 v10, -0x1

    :cond_3
    const/16 v1, 0x2b

    if-ne v12, v1, :cond_8

    if-gez v10, :cond_8

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7

    move-object v11, v14

    :cond_4
    :goto_1
    if-eqz v11, :cond_5

    const-string v1, "value"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/4 v1, 0x1

    :goto_2
    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_6
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :cond_8
    const/16 v1, 0x2d

    if-ne v12, v1, :cond_b

    if-ltz v10, :cond_b

    if-lez v10, :cond_a

    add-int/lit8 v10, v10, -0x1

    :cond_9
    :goto_3
    const/4 v1, 0x0

    invoke-virtual {v13, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v9, v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :cond_a
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v9, v1, :cond_9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_b
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private queryForUser(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 18

    new-instance v11, Lcom/android/providers/settings/SettingsProvider$SqlArguments;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v11, v0, v1, v2}, Lcom/android/providers/settings/SettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v5, "global"

    iget-object v6, v11, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/providers/settings/SettingsProvider;->getOrEstablishDatabase(I)Lcom/android/providers/settings/DatabaseHelper;

    move-result-object v14

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "favorites"

    iget-object v6, v11, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v17, 0x0

    :goto_1
    return-object v17

    :cond_0
    move/from16 v5, p6

    goto :goto_0

    :cond_1
    const-string v5, "old_favorites"

    iget-object v6, v11, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "favorites"

    iput-object v5, v11, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    const-string v5, "PRAGMA table_info(favorites);"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_3

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_2

    const/16 v16, 0x1

    :goto_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    if-nez v16, :cond_4

    const/16 v17, 0x0

    goto :goto_1

    :cond_2
    const/16 v16, 0x0

    goto :goto_2

    :cond_3
    const/16 v17, 0x0

    goto :goto_1

    :cond_4
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    iget-object v5, v11, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    iget-object v6, v11, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v7, v11, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->args:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    :try_start_0
    move-object/from16 v0, v17

    check-cast v0, Landroid/database/AbstractCursor;

    move-object v12, v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p1

    move/from16 v1, p6

    invoke-virtual {v12, v5, v0, v1}, Landroid/database/AbstractCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v15

    const-string v5, "SettingsProvider"

    const-string v6, "Incompatible cursor derivation!"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    throw v15
.end method

.method private sendNotify(Landroid/net/Uri;I)V
    .locals 14

    const/4 v0, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v10, "global"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v10, "system"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v6, "sys.settings_system_version"

    const/4 v0, 0x1

    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    const-wide/16 v10, 0x0

    invoke-static {v6, v10, v11}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    const-wide/16 v12, 0x1

    add-long v8, v10, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_2

    iget-object v10, p0, Lcom/android/providers/settings/SettingsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v10}, Landroid/app/backup/BackupManager;->dataChanged()V

    :cond_2
    const-string v10, "notify"

    invoke-virtual {p1, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v10, "true"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_3
    if-eqz v1, :cond_7

    const/4 v3, -0x1

    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v10, p1, v11, v12, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_4
    return-void

    :cond_5
    const-string v10, "secure"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const-string v6, "sys.settings_secure_version"

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_0

    const-string v6, "sys.settings_global_version"

    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    move/from16 v3, p2

    goto :goto_1

    :catchall_0
    move-exception v10

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10
.end method

.method private startAsyncCachePopulation(I)V
    .locals 1

    new-instance v0, Lcom/android/providers/settings/SettingsProvider$CachePrefetchThread;

    invoke-direct {v0, p0, p1}, Lcom/android/providers/settings/SettingsProvider$CachePrefetchThread;-><init>(Lcom/android/providers/settings/SettingsProvider;I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 12

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    new-instance v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/android/providers/settings/SettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    const-string v8, "favorites"

    iget-object v9, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    :goto_0
    return v8

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider;->checkWritePermissions(Lcom/android/providers/settings/SettingsProvider$SqlArguments;)V

    iget-object v8, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {p0, v2, v8}, Lcom/android/providers/settings/SettingsProvider;->cacheForTable(ILjava/lang/String;)Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    move-result-object v1

    sget-object v8, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const-string v8, "global"

    iget-object v9, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x0

    :goto_1
    invoke-direct {p0, v8}, Lcom/android/providers/settings/SettingsProvider;->getOrEstablishDatabase(I)Lcom/android/providers/settings/DatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    array-length v7, p2

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v7, :cond_3

    iget-object v8, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v10, p2, v5

    invoke-virtual {v3, v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_2

    const/4 v8, 0x0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    :cond_1
    move v8, v2

    goto :goto_1

    :cond_2
    :try_start_1
    aget-object v8, p2, v5

    invoke-static {v1, v8}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->populate(Lcom/android/providers/settings/SettingsProvider$SettingsCache;Landroid/content/ContentValues;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-direct {p0, p1, v2}, Lcom/android/providers/settings/SettingsProvider;->sendNotify(Landroid/net/Uri;I)V

    array-length v8, p2

    goto :goto_0

    :catchall_0
    move-exception v8

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v8
.end method

.method public cacheForTable(ILjava/lang/String;)Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    .locals 1

    const-string v0, "system"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemCaches:Landroid/util/SparseArray;

    invoke-direct {p0, p1, v0}, Lcom/android/providers/settings/SettingsProvider;->getOrConstructCache(ILandroid/util/SparseArray;)Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "secure"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSecureCaches:Landroid/util/SparseArray;

    invoke-direct {p0, p1, v0}, Lcom/android/providers/settings/SettingsProvider;->getOrConstructCache(ILandroid/util/SparseArray;)Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "global"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sGlobalCache:Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 12

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    if-eqz p3, :cond_0

    const-string v0, "_user"

    invoke-virtual {p3, v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v8, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v5, "get/set setting for user"

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v8

    :cond_0
    const-string v0, "GET_system"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v8}, Lcom/android/providers/settings/SettingsProvider;->getOrEstablishDatabase(I)Lcom/android/providers/settings/DatabaseHelper;

    move-result-object v9

    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemCaches:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    const-string v0, "system"

    invoke-direct {p0, v9, v0, v7, p2}, Lcom/android/providers/settings/SettingsProvider;->lookupValue(Lcom/android/providers/settings/DatabaseHelper;Ljava/lang/String;Lcom/android/providers/settings/SettingsProvider$SettingsCache;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    :cond_1
    :goto_0
    return-object v6

    :cond_2
    const-string v0, "GET_secure"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v8}, Lcom/android/providers/settings/SettingsProvider;->getOrEstablishDatabase(I)Lcom/android/providers/settings/DatabaseHelper;

    move-result-object v9

    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSecureCaches:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    const-string v0, "secure"

    invoke-direct {p0, v9, v0, v7, p2}, Lcom/android/providers/settings/SettingsProvider;->lookupValue(Lcom/android/providers/settings/DatabaseHelper;Ljava/lang/String;Lcom/android/providers/settings/SettingsProvider$SettingsCache;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    goto :goto_0

    :cond_3
    const-string v0, "GET_global"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v3}, Lcom/android/providers/settings/SettingsProvider;->getOrEstablishDatabase(I)Lcom/android/providers/settings/DatabaseHelper;

    move-result-object v0

    const-string v1, "global"

    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->sGlobalCache:Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    invoke-direct {p0, v0, v1, v3, p2}, Lcom/android/providers/settings/SettingsProvider;->lookupValue(Lcom/android/providers/settings/DatabaseHelper;Ljava/lang/String;Lcom/android/providers/settings/SettingsProvider$SettingsCache;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    goto :goto_0

    :cond_4
    if-nez p3, :cond_5

    move-object v10, v6

    :goto_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Permission denial: writing to settings requires %1$s"

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "android.permission.WRITE_SETTINGS"

    aput-object v5, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const-string v0, "value"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v1, 0x17

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "name"

    invoke-virtual {v11, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-virtual {v11, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PUT_system"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, v11, v8}, Lcom/android/providers/settings/SettingsProvider;->insertForUser(Landroid/net/Uri;Landroid/content/ContentValues;I)Landroid/net/Uri;

    goto/16 :goto_0

    :cond_7
    const-string v0, "PUT_secure"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, v11, v8}, Lcom/android/providers/settings/SettingsProvider;->insertForUser(Landroid/net/Uri;Landroid/content/ContentValues;I)Landroid/net/Uri;

    goto/16 :goto_0

    :cond_8
    const-string v0, "PUT_global"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, v11, v8}, Lcom/android/providers/settings/SettingsProvider;->insertForUser(Landroid/net/Uri;Landroid/content/ContentValues;I)Landroid/net/Uri;

    goto/16 :goto_0

    :cond_9
    const-string v0, "SettingsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call() with invalid method: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    new-instance v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/providers/settings/SettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v6, "favorites"

    iget-object v7, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const-string v6, "old_favorites"

    iget-object v7, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "favorites"

    iput-object v6, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider;->checkWritePermissions(Lcom/android/providers/settings/SettingsProvider$SqlArguments;)V

    sget-object v6, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-direct {p0, v1}, Lcom/android/providers/settings/SettingsProvider;->getOrEstablishDatabase(I)Lcom/android/providers/settings/DatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iget-object v6, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v3, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    if-lez v2, :cond_2

    iget-object v6, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {p0, v1, v6}, Lcom/android/providers/settings/SettingsProvider;->invalidateCache(ILjava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/android/providers/settings/SettingsProvider;->sendNotify(Landroid/net/Uri;I)V

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/providers/settings/SettingsProvider;->startAsyncCachePopulation(I)V

    goto :goto_0

    :cond_3
    const-string v6, "global"

    iget-object v7, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    new-instance v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;

    invoke-direct {v0, p1, v1, v1}, Lcom/android/providers/settings/SettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->where:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.dir/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.item/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/settings/SettingsProvider;->insertForUser(Landroid/net/Uri;Landroid/content/ContentValues;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public invalidateCache(ILjava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->cacheForTable(ILjava/lang/String;)Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    const/4 v1, 0x0

    # setter for: Lcom/android/providers/settings/SettingsProvider$SettingsCache;->mCacheFullyMatchesDisk:Z
    invoke-static {v0, v1}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->access$302(Lcom/android/providers/settings/SettingsProvider$SettingsCache;Z)Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCreate()Z
    .locals 4

    new-instance v2, Landroid/app/backup/BackupManager;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "2.0"

    const-string v3, "version"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->mPersonaManager:Landroid/os/PersonaManager;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersonaManager;

    iput-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->mPersonaManager:Landroid/os/PersonaManager;

    :cond_0
    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->SHARE_KNOX:Ljava/util/HashSet;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->SHARE_KNOX:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->SHARE_KNOX:Ljava/util/HashSet;

    invoke-static {v2}, Landroid/os/PersonaPolicyManager;->getKnoxKeys(Ljava/util/HashSet;)V

    :cond_1
    const/4 v2, -0x1

    const/16 v3, 0x17

    invoke-virtual {p0, v2, v3}, Landroid/content/ContentProvider;->setAppOps(II)V

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/providers/settings/SettingsProvider;->establishDbTracking(I)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/providers/settings/SettingsProvider$1;

    invoke-direct {v3, p0}, Lcom/android/providers/settings/SettingsProvider$1;-><init>(Lcom/android/providers/settings/SettingsProvider;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v2, 0x1

    return v2
.end method

.method onUserRemoved(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sObserverInstances:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/FileObserver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sObserverInstances:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mOpenHelpers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sSystemCaches:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sSecureCaches:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v6

    const/4 v0, -0x1

    if-eq v6, v0, :cond_3

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v8, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    :try_start_1
    invoke-super {p0, v8, p2}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v0, 0x2

    if-ne v6, v0, :cond_1

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1100064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1100001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    goto :goto_0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v4, "media"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/settings/SettingsProvider;->queryForUser(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    new-instance v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/android/providers/settings/SettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v6, "favorites"

    iget-object v7, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v6, "global"

    iget-object v7, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider;->checkWritePermissions(Lcom/android/providers/settings/SettingsProvider$SqlArguments;)V

    invoke-direct {p0, p2, v1}, Lcom/android/providers/settings/SettingsProvider;->isChangeAllowed(Landroid/content/ContentValues;I)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-direct {p0, v1}, Lcom/android/providers/settings/SettingsProvider;->getOrEstablishDatabase(I)Lcom/android/providers/settings/DatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iget-object v6, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v3, v6, p2, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    if-lez v2, :cond_3

    iget-object v6, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {p0, v1, v6}, Lcom/android/providers/settings/SettingsProvider;->invalidateCache(ILjava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/android/providers/settings/SettingsProvider;->sendNotify(Landroid/net/Uri;I)V

    :cond_3
    invoke-direct {p0, v1}, Lcom/android/providers/settings/SettingsProvider;->startAsyncCachePopulation(I)V

    goto :goto_0
.end method
