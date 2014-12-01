.class Landroid/webkitsec/WebHistoryItemClassic;
.super Landroid/webkitsec/WebHistoryItem;
.source "WebHistoryItemClassic.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static sNextId:I


# instance fields
.field private mCustomData:Ljava/lang/Object;

.field private mFavicon:Landroid/graphics/Bitmap;

.field private mFlattenedData:[B

.field private final mId:I

.field private mNativeBridge:I

.field private mTouchIconUrlFromLink:Ljava/lang/String;

.field private mTouchIconUrlServerDefault:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Landroid/webkitsec/WebHistoryItemClassic;->sNextId:I

    return-void
.end method

.method private constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Landroid/webkitsec/WebHistoryItem;-><init>()V

    const-class v1, Landroid/webkitsec/WebHistoryItemClassic;

    monitor-enter v1

    :try_start_0
    sget v0, Landroid/webkitsec/WebHistoryItemClassic;->sNextId:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Landroid/webkitsec/WebHistoryItemClassic;->sNextId:I

    iput v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mId:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput p1, p0, Landroid/webkitsec/WebHistoryItemClassic;->mNativeBridge:I

    iget v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mNativeBridge:I

    invoke-direct {p0, v0}, Landroid/webkitsec/WebHistoryItemClassic;->nativeRef(I)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private constructor <init>(Landroid/webkitsec/WebHistoryItemClassic;)V
    .locals 1

    invoke-direct {p0}, Landroid/webkitsec/WebHistoryItem;-><init>()V

    iget-object v0, p1, Landroid/webkitsec/WebHistoryItemClassic;->mFlattenedData:[B

    iput-object v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mFlattenedData:[B

    iget v0, p1, Landroid/webkitsec/WebHistoryItemClassic;->mId:I

    iput v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mId:I

    iget-object v0, p1, Landroid/webkitsec/WebHistoryItemClassic;->mFavicon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mFavicon:Landroid/graphics/Bitmap;

    iget v0, p1, Landroid/webkitsec/WebHistoryItemClassic;->mNativeBridge:I

    iput v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mNativeBridge:I

    iget v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mNativeBridge:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mNativeBridge:I

    invoke-direct {p0, v0}, Landroid/webkitsec/WebHistoryItemClassic;->nativeRef(I)V

    :cond_0
    return-void
.end method

.method constructor <init>([B)V
    .locals 3

    invoke-direct {p0}, Landroid/webkitsec/WebHistoryItem;-><init>()V

    iput-object p1, p0, Landroid/webkitsec/WebHistoryItemClassic;->mFlattenedData:[B

    const-class v1, Landroid/webkitsec/WebHistoryItemClassic;

    monitor-enter v1

    :try_start_0
    sget v0, Landroid/webkitsec/WebHistoryItemClassic;->sNextId:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Landroid/webkitsec/WebHistoryItemClassic;->sNextId:I

    iput v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mId:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private native inflate(I[B)I
.end method

.method private native nativeGetFavicon(I)Landroid/graphics/Bitmap;
.end method

.method private native nativeGetFlattenedData(I)[B
.end method

.method private native nativeGetOriginalUrl(I)Ljava/lang/String;
.end method

.method private native nativeGetTitle(I)Ljava/lang/String;
.end method

.method private native nativeGetUrl(I)Ljava/lang/String;
.end method

.method private native nativeRef(I)V
.end method

.method private native nativeUnref(I)V
.end method


# virtual methods
.method public bridge synthetic clone()Landroid/webkitsec/WebHistoryItem;
    .locals 1

    invoke-virtual {p0}, Landroid/webkitsec/WebHistoryItemClassic;->clone()Landroid/webkitsec/WebHistoryItemClassic;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized clone()Landroid/webkitsec/WebHistoryItemClassic;
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkitsec/WebHistoryItemClassic;

    invoke-direct {v0, p0}, Landroid/webkitsec/WebHistoryItemClassic;-><init>(Landroid/webkitsec/WebHistoryItemClassic;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/webkitsec/WebHistoryItemClassic;->clone()Landroid/webkitsec/WebHistoryItemClassic;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mNativeBridge:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mNativeBridge:I

    invoke-direct {p0, v0}, Landroid/webkitsec/WebHistoryItemClassic;->nativeUnref(I)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mNativeBridge:I

    :cond_0
    return-void
.end method

.method public getCustomData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mCustomData:Ljava/lang/Object;

    return-object v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mFavicon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mNativeBridge:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mNativeBridge:I

    invoke-direct {p0, v0}, Landroid/webkitsec/WebHistoryItemClassic;->nativeGetFavicon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mFavicon:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mFavicon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getFlattenedData()[B
    .locals 1

    iget v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mNativeBridge:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mNativeBridge:I

    invoke-direct {p0, v0}, Landroid/webkitsec/WebHistoryItemClassic;->nativeGetFlattenedData(I)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mFlattenedData:[B

    goto :goto_0
.end method

.method public getId()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mId:I

    return v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mNativeBridge:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mNativeBridge:I

    invoke-direct {p0, v0}, Landroid/webkitsec/WebHistoryItemClassic;->nativeGetOriginalUrl(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mNativeBridge:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mNativeBridge:I

    invoke-direct {p0, v0}, Landroid/webkitsec/WebHistoryItemClassic;->nativeGetTitle(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTouchIconUrl()Ljava/lang/String;
    .locals 7

    iget-object v2, p0, Landroid/webkitsec/WebHistoryItemClassic;->mTouchIconUrlFromLink:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkitsec/WebHistoryItemClassic;->mTouchIconUrlFromLink:Ljava/lang/String;

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Landroid/webkitsec/WebHistoryItemClassic;->mTouchIconUrlServerDefault:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/webkitsec/WebHistoryItemClassic;->mTouchIconUrlServerDefault:Ljava/lang/String;

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p0}, Landroid/webkitsec/WebHistoryItemClassic;->getOriginalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v5

    const-string v6, "/apple-touch-icon.png"

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkitsec/WebHistoryItemClassic;->mTouchIconUrlServerDefault:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Landroid/webkitsec/WebHistoryItemClassic;->mTouchIconUrlServerDefault:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mNativeBridge:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mNativeBridge:I

    invoke-direct {p0, v0}, Landroid/webkitsec/WebHistoryItemClassic;->nativeGetUrl(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method inflate(I)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mFlattenedData:[B

    invoke-direct {p0, p1, v0}, Landroid/webkitsec/WebHistoryItemClassic;->inflate(I[B)I

    move-result v0

    iput v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mNativeBridge:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mFlattenedData:[B

    return-void
.end method

.method public setCustomData(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/WebHistoryItemClassic;->mCustomData:Ljava/lang/Object;

    return-void
.end method

.method setFavicon(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/WebHistoryItemClassic;->mFavicon:Landroid/graphics/Bitmap;

    return-void
.end method

.method setTouchIconUrl(Ljava/lang/String;Z)V
    .locals 1

    if-nez p2, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mTouchIconUrlFromLink:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    iput-object p1, p0, Landroid/webkitsec/WebHistoryItemClassic;->mTouchIconUrlFromLink:Ljava/lang/String;

    :cond_1
    return-void
.end method
