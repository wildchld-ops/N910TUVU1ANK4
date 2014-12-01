.class public final Lcom/diotek/ime/framework/repository/RepositoryImpl;
.super Ljava/lang/Object;
.source "RepositoryImpl.java"

# interfaces
.implements Lcom/diotek/ime/framework/repository/Repository;


# static fields
.field private static sInstance:Lcom/diotek/ime/framework/repository/Repository;


# instance fields
.field protected mBooleanStateSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mByteStateSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field protected mDoubleStateSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field protected mFloatStateSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field protected mIntegerStateSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mLongStateSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mObjectStateSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefContext:Landroid/content/Context;

.field private mPreference:Landroid/content/SharedPreferences;

.field protected mShortStateSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field protected mStringStateSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->sInstance:Lcom/diotek/ime/framework/repository/Repository;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/16 v1, 0xa

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mPreference:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mPrefContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mBooleanStateSet:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mByteStateSet:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mShortStateSet:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mIntegerStateSet:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mLongStateSet:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mFloatStateSet:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mDoubleStateSet:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mStringStateSet:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mObjectStateSet:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mBooleanStateSet:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mByteStateSet:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mShortStateSet:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mIntegerStateSet:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mLongStateSet:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mFloatStateSet:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mDoubleStateSet:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mStringStateSet:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mObjectStateSet:Ljava/util/HashMap;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/diotek/ime/framework/repository/Repository;
    .locals 4

    const-class v2, Lcom/diotek/ime/framework/repository/RepositoryImpl;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/diotek/ime/framework/repository/RepositoryImpl;->sInstance:Lcom/diotek/ime/framework/repository/Repository;

    if-nez v1, :cond_0

    new-instance v1, Lcom/diotek/ime/framework/repository/RepositoryImpl;

    invoke-direct {v1}, Lcom/diotek/ime/framework/repository/RepositoryImpl;-><init>()V

    sput-object v1, Lcom/diotek/ime/framework/repository/RepositoryImpl;->sInstance:Lcom/diotek/ime/framework/repository/Repository;

    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyLoader;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyLoader;-><init>()V

    sget-object v1, Lcom/diotek/ime/framework/repository/RepositoryImpl;->sInstance:Lcom/diotek/ime/framework/repository/Repository;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/diotek/ime/framework/repository/PropertyLoader;->load(Lcom/diotek/ime/framework/repository/Repository;Landroid/content/res/Resources;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SamsungIME"

    const-string v3, "Repository initialization was failed!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lcom/diotek/ime/framework/repository/RepositoryImpl;->sInstance:Lcom/diotek/ime/framework/repository/Repository;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public getData(Ljava/lang/String;B)B
    .locals 4

    iget-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mByteStateSet:Ljava/util/HashMap;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mByteStateSet:Ljava/util/HashMap;

    :cond_0
    :goto_0
    return p2

    :cond_1
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mByteStateSet:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    move v1, p2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    :cond_2
    move p2, v1

    goto :goto_0
.end method

.method public getData(Ljava/lang/String;C)C
    .locals 4

    iget-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mIntegerStateSet:Ljava/util/HashMap;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mIntegerStateSet:Ljava/util/HashMap;

    :cond_0
    :goto_0
    return p2

    :cond_1
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mIntegerStateSet:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move v1, p2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-char v1, v2

    :cond_2
    move p2, v1

    goto :goto_0
.end method

.method public getData(Ljava/lang/String;D)D
    .locals 5

    iget-object v3, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mDoubleStateSet:Ljava/util/HashMap;

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/HashMap;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mDoubleStateSet:Ljava/util/HashMap;

    :cond_0
    :goto_0
    return-wide p2

    :cond_1
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mDoubleStateSet:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    move-wide v1, p2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    :cond_2
    move-wide p2, v1

    goto :goto_0
.end method

.method public getData(Ljava/lang/String;F)F
    .locals 4

    iget-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mFloatStateSet:Ljava/util/HashMap;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mFloatStateSet:Ljava/util/HashMap;

    :cond_0
    :goto_0
    return p2

    :cond_1
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mFloatStateSet:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    move v1, p2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :cond_2
    move p2, v1

    goto :goto_0
.end method

.method public getData(Ljava/lang/String;I)I
    .locals 4

    iget-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mIntegerStateSet:Ljava/util/HashMap;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mIntegerStateSet:Ljava/util/HashMap;

    :cond_0
    :goto_0
    return p2

    :cond_1
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mIntegerStateSet:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move v1, p2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_2
    move p2, v1

    goto :goto_0
.end method

.method public getData(Ljava/lang/String;J)J
    .locals 5

    iget-object v3, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mLongStateSet:Ljava/util/HashMap;

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/HashMap;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mLongStateSet:Ljava/util/HashMap;

    :cond_0
    :goto_0
    return-wide p2

    :cond_1
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mLongStateSet:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    move-wide v1, p2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :cond_2
    move-wide p2, v1

    goto :goto_0
.end method

.method public getData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mObjectStateSet:Ljava/util/HashMap;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mObjectStateSet:Ljava/util/HashMap;

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mObjectStateSet:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, p2

    if-eqz v0, :cond_2

    move-object v1, v0

    :cond_2
    move-object p2, v1

    goto :goto_0
.end method

.method public getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mStringStateSet:Ljava/util/HashMap;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mStringStateSet:Ljava/util/HashMap;

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mStringStateSet:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, p2

    if-eqz v1, :cond_2

    move-object v0, v1

    :cond_2
    move-object p2, v0

    goto :goto_0
.end method

.method public getData(Ljava/lang/String;S)S
    .locals 4

    iget-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mShortStateSet:Ljava/util/HashMap;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mShortStateSet:Ljava/util/HashMap;

    :cond_0
    :goto_0
    return p2

    :cond_1
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mShortStateSet:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    move v0, p2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v0

    :cond_2
    move p2, v0

    goto :goto_0
.end method

.method public getData(Ljava/lang/String;Z)Z
    .locals 4

    iget-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mBooleanStateSet:Ljava/util/HashMap;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mBooleanStateSet:Ljava/util/HashMap;

    :cond_0
    :goto_0
    return p2

    :cond_1
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mBooleanStateSet:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    move v1, p2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_2
    move p2, v1

    goto :goto_0
.end method

.method public getPreferences()Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mPreference:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public setData(Ljava/lang/String;B)V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mByteStateSet:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mByteStateSet:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setData(Ljava/lang/String;C)V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mIntegerStateSet:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mIntegerStateSet:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setData(Ljava/lang/String;D)V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mDoubleStateSet:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mDoubleStateSet:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setData(Ljava/lang/String;F)V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mFloatStateSet:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mFloatStateSet:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setData(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mIntegerStateSet:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mIntegerStateSet:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setData(Ljava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mLongStateSet:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mLongStateSet:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mObjectStateSet:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mObjectStateSet:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mStringStateSet:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mStringStateSet:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setData(Ljava/lang/String;S)V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mShortStateSet:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mShortStateSet:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setData(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mBooleanStateSet:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mBooleanStateSet:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setdefaultPreferenceContext(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mPrefContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mPrefContext:Landroid/content/Context;

    const-string v1, "com.sec.android.inputmethod_preferences"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mPreference:Landroid/content/SharedPreferences;

    return-void
.end method
