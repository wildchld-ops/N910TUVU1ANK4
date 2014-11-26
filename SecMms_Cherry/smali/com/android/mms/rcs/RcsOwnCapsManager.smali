.class public Lcom/android/mms/rcs/RcsOwnCapsManager;
.super Ljava/lang/Object;
.source "RcsOwnCapsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/rcs/RcsOwnCapsManager$CapStatusManager;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Mms/RcsOwnCapsManager"

.field private static sCapStatusManager:Lcom/android/mms/rcs/RcsOwnCapsManager$CapStatusManager;

.field private static sRcsOwnCapsManager:Lcom/android/mms/rcs/RcsOwnCapsManager;


# instance fields
.field private final mConfigurationChangeObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mFtObserver:Landroid/database/ContentObserver;

.field private mIsEnableRcs:Z

.field private mIsLocalOffline:Z

.field private mOwnFtCapable:Z

.field private mOwnGcftCapable:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/mms/rcs/RcsOwnCapsManager;->mIsEnableRcs:Z

    iput-boolean v0, p0, Lcom/android/mms/rcs/RcsOwnCapsManager;->mOwnFtCapable:Z

    iput-boolean v0, p0, Lcom/android/mms/rcs/RcsOwnCapsManager;->mIsLocalOffline:Z

    iput v0, p0, Lcom/android/mms/rcs/RcsOwnCapsManager;->mOwnGcftCapable:I

    new-instance v0, Lcom/android/mms/rcs/RcsOwnCapsManager$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/rcs/RcsOwnCapsManager$1;-><init>(Lcom/android/mms/rcs/RcsOwnCapsManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/rcs/RcsOwnCapsManager;->mConfigurationChangeObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/mms/rcs/RcsOwnCapsManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/rcs/RcsOwnCapsManager;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/rcs/RcsOwnCapsManager;

    iget-object v0, p0, Lcom/android/mms/rcs/RcsOwnCapsManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/rcs/RcsOwnCapsManager;)Landroid/database/ContentObserver;
    .locals 1
    .param p0    # Lcom/android/mms/rcs/RcsOwnCapsManager;

    iget-object v0, p0, Lcom/android/mms/rcs/RcsOwnCapsManager;->mFtObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/rcs/RcsOwnCapsManager;)Z
    .locals 1
    .param p0    # Lcom/android/mms/rcs/RcsOwnCapsManager;

    iget-boolean v0, p0, Lcom/android/mms/rcs/RcsOwnCapsManager;->mIsEnableRcs:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/mms/rcs/RcsOwnCapsManager;Z)Z
    .locals 0
    .param p0    # Lcom/android/mms/rcs/RcsOwnCapsManager;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/rcs/RcsOwnCapsManager;->mIsEnableRcs:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/mms/rcs/RcsOwnCapsManager;)Z
    .locals 1
    .param p0    # Lcom/android/mms/rcs/RcsOwnCapsManager;

    iget-boolean v0, p0, Lcom/android/mms/rcs/RcsOwnCapsManager;->mIsLocalOffline:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/mms/rcs/RcsOwnCapsManager;)Landroid/database/ContentObserver;
    .locals 1
    .param p0    # Lcom/android/mms/rcs/RcsOwnCapsManager;

    iget-object v0, p0, Lcom/android/mms/rcs/RcsOwnCapsManager;->mConfigurationChangeObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method public static getInstance()Lcom/android/mms/rcs/RcsOwnCapsManager;
    .locals 2

    sget-object v0, Lcom/android/mms/rcs/RcsOwnCapsManager;->sRcsOwnCapsManager:Lcom/android/mms/rcs/RcsOwnCapsManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/rcs/RcsOwnCapsManager;

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mms/rcs/RcsOwnCapsManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/rcs/RcsOwnCapsManager;->sRcsOwnCapsManager:Lcom/android/mms/rcs/RcsOwnCapsManager;

    :cond_0
    sget-object v0, Lcom/android/mms/rcs/RcsOwnCapsManager;->sCapStatusManager:Lcom/android/mms/rcs/RcsOwnCapsManager$CapStatusManager;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/mms/rcs/RcsOwnCapsManager$CapStatusManager;

    sget-object v1, Lcom/android/mms/rcs/RcsOwnCapsManager;->sRcsOwnCapsManager:Lcom/android/mms/rcs/RcsOwnCapsManager;

    invoke-direct {v0, v1}, Lcom/android/mms/rcs/RcsOwnCapsManager$CapStatusManager;-><init>(Lcom/android/mms/rcs/RcsOwnCapsManager;)V

    sput-object v0, Lcom/android/mms/rcs/RcsOwnCapsManager;->sCapStatusManager:Lcom/android/mms/rcs/RcsOwnCapsManager$CapStatusManager;

    :cond_1
    sget-object v0, Lcom/android/mms/rcs/RcsOwnCapsManager;->sRcsOwnCapsManager:Lcom/android/mms/rcs/RcsOwnCapsManager;

    return-object v0
.end method


# virtual methods
.method public canStartRcsUI()Z
    .locals 11

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "content://com.sec.ims.android.rcs/preferences/1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/rcs/RcsOwnCapsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v10, 0x1

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    const-string v0, "Mms/RcsOwnCapsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canStartRcsUI result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v10

    :goto_1
    return v0

    :catch_0
    move-exception v7

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    new-instance v8, Lcom/sec/ims/ImsManager;

    iget-object v0, p0, Lcom/android/mms/rcs/RcsOwnCapsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0, v2}, Lcom/sec/ims/ImsManager;-><init>(Landroid/content/Context;Lcom/sec/ims/ImsManager$ConnectionListener;)V

    const-string v0, "Mms/RcsOwnCapsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ims.isRcsEnabled, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/sec/ims/ImsManager;->isRcsEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/sec/ims/ImsManager;->isRcsEnabled()Z

    move-result v0

    goto :goto_1
.end method

.method protected closeOnUnavailable()V
    .locals 2

    const-string v0, "Mms/RcsOwnCapsManager"

    const-string v1, "closeOnUnavailable: Called"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getCapStatusManager()Lcom/android/mms/rcs/RcsOwnCapsManager$CapStatusManager;
    .locals 1

    sget-object v0, Lcom/android/mms/rcs/RcsOwnCapsManager;->sCapStatusManager:Lcom/android/mms/rcs/RcsOwnCapsManager$CapStatusManager;

    return-object v0
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/rcs/RcsOwnCapsManager;->mIsEnableRcs:Z

    iput-boolean v0, p0, Lcom/android/mms/rcs/RcsOwnCapsManager;->mOwnFtCapable:Z

    iput-boolean v0, p0, Lcom/android/mms/rcs/RcsOwnCapsManager;->mIsLocalOffline:Z

    iput v0, p0, Lcom/android/mms/rcs/RcsOwnCapsManager;->mOwnGcftCapable:I

    return-void
.end method

.method public isEnableRcsService()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/rcs/RcsOwnCapsManager;->mIsEnableRcs:Z

    return v0
.end method

.method public isLocalOffline()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/rcs/RcsOwnCapsManager;->mIsLocalOffline:Z

    return v0
.end method

.method public isOwnFtCapable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/rcs/RcsOwnCapsManager;->mOwnFtCapable:Z

    return v0
.end method

.method public isOwnGcftCapable()I
    .locals 1

    iget v0, p0, Lcom/android/mms/rcs/RcsOwnCapsManager;->mOwnGcftCapable:I

    return v0
.end method

.method public queryOwnCaps()Z
    .locals 14

    const/4 v11, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/rcs/RcsOwnCapsManager;->mOwnFtCapable:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/rcs/RcsOwnCapsManager;->mOwnGcftCapable:I

    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/rcs/RcsOwnCapsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/rcs/transaction/ServiceProvider;->OWN_CAPS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    :try_start_1
    const-string v0, "feature_tag"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "is_enabled"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    :cond_3
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-lez v9, :cond_c

    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.im\""

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v11, 0x0

    :cond_5
    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/rcs/RcsOwnCapsManager;->mOwnFtCapable:Z

    :cond_6
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_7
    if-eqz v11, :cond_8

    const-string v0, "Mms/RcsOwnCapsManager"

    const-string v1, "queryOwnCaps, IM Service is impossible because own caps is null or unavailable."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/rcs/RcsOwnCapsManager;->closeOnUnavailable()V

    :cond_8
    const-string v0, "Mms/RcsOwnCapsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryOwnCaps, FT capability is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/mms/rcs/RcsOwnCapsManager;->mOwnFtCapable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Mms/RcsOwnCapsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryOwnCaps, GC capability is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/rcs/RcsOwnCapsManager;->mOwnGcftCapable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Mms/RcsOwnCapsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryOwnCaps, localOffline is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/mms/rcs/RcsOwnCapsManager;->mIsLocalOffline:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v11, :cond_d

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_9
    :try_start_2
    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.im\""

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "additional_info"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const/4 v0, -0x1

    if-eq v6, v0, :cond_6

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    sget-object v0, Lcom/android/mms/rcs/transaction/ServiceProvider;->ADDINFO_LOCAL_OFFLINE:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/rcs/RcsOwnCapsManager;->mIsLocalOffline:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_a

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_a
    throw v0

    :cond_b
    :try_start_3
    const-string v0, "ft-in-group-chat"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput v9, p0, Lcom/android/mms/rcs/RcsOwnCapsManager;->mOwnGcftCapable:I

    goto/16 :goto_1

    :cond_c
    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.im\""

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/rcs/RcsOwnCapsManager;->mIsLocalOffline:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public registerFtDisabler()V
    .locals 5

    iget-object v1, p0, Lcom/android/mms/rcs/RcsOwnCapsManager;->mFtObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/mms/rcs/RcsOwnCapsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/mms/rcs/RcsOwnCapsManager$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/android/mms/rcs/RcsOwnCapsManager$2;-><init>(Lcom/android/mms/rcs/RcsOwnCapsManager;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/rcs/RcsOwnCapsManager;->mFtObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/rcs/transaction/ServiceProvider;->OWN_CAPS_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/rcs/RcsOwnCapsManager;->mFtObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/mms/rcs/RcsOwnCapsManager;->mFtObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/database/ContentObserver;->onChange(Z)V

    goto :goto_0
.end method

.method public setRcsConfiguration()V
    .locals 5

    const-wide/16 v3, 0x400

    new-instance v0, Lcom/sec/ims/settings/RcsConfigurationReader;

    iget-object v1, p0, Lcom/android/mms/rcs/RcsOwnCapsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/ims/settings/RcsConfigurationReader;-><init>(Landroid/content/Context;)V

    const-string v1, "root/application/1/im/maxsize1to1"

    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/RcsConfigurationReader;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/mms/rcs/Configuration$Im;->setImMaxSize1To1(J)V

    const-string v1, "root/application/1/im/maxsize1tom"

    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/RcsConfigurationReader;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/mms/rcs/Configuration$Im;->setImMaxSize1ToM(J)V

    const-string v1, "root/application/1/im/MaxSizeFileTr"

    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/RcsConfigurationReader;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    mul-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/android/mms/rcs/Configuration$Ft;->setImFtMaxSize(J)V

    const-string v1, "root/application/1/im/ftWarnSize"

    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/RcsConfigurationReader;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    mul-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/android/mms/rcs/Configuration$Ft;->setImFtWarnSize(J)V

    return-void
.end method
