.class public Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;
.super Ljava/lang/Object;
.source "CocktailBarDecorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;
    }
.end annotation


# static fields
.field public static final COCKTAILBAR_DECOR_TYPE_BITMAP:I = 0x1

.field public static final COCKTAILBAR_DECOR_TYPE_GIF:I = 0x2

.field public static final COCKTAILBAR_DECOR_TYPE_UNKNOWN:I

.field private static TAG:Ljava/lang/String;

.field private static sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

.field static sManagerCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sSync:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CocktailBarDecorManager"

    sput-object v0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sManagerCache:Ljava/util/WeakHashMap;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sSync:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->initGlobals(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;
    .locals 5

    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sManagerCache:Ljava/util/WeakHashMap;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sManagerCache:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;

    :cond_0
    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sManagerCache:Ljava/util/WeakHashMap;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p0, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v3

    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static initGlobals(Landroid/os/Looper;)V
    .locals 2

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    invoke-direct {v0, p0}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setCocktailBarDecor(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v2, 0x8000

    new-array v1, v2, [B

    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getDecorType()I
    .locals 2

    sget-object v0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;
    invoke-static {v0}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->access$300(Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->TAG:Ljava/lang/String;

    const-string v1, "CocktailBarManagerService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->getCocktailBarDecorType()I

    move-result v0

    goto :goto_0
.end method

.method public getDesiredHeight()I
    .locals 4

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;
    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->access$300(Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->TAG:Ljava/lang/String;

    const-string v3, "CocktailBarManagerService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;
    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->access$300(Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getHeightHint()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getDesiredWidth()I
    .locals 4

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;
    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->access$300(Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->TAG:Ljava/lang/String;

    const-string v3, "CocktailBarManagerService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;
    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->access$300(Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getWidthHint()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;
    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->access$300(Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->TAG:Ljava/lang/String;

    const-string v3, "CocktailBarManagerService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    sget-object v2, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->getCocktailBarDecorBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    goto :goto_0
.end method

.method public getMovie()Landroid/graphics/Movie;
    .locals 2

    sget-object v0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;
    invoke-static {v0}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->access$300(Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->TAG:Ljava/lang/String;

    const-string v1, "CocktailBarManagerService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->getCocktailBarDecorMovie(Landroid/content/Context;)Landroid/graphics/Movie;

    move-result-object v0

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;
    invoke-static {v3}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->access$300(Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->TAG:Ljava/lang/String;

    const-string v4, "CocktailBarManagerService not running"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;
    invoke-static {v3}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->access$300(Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->setCocktailBarDecor(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5a

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    :cond_2
    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;
    invoke-static {v3}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->access$300(Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->notifyCocktailBarDecorChanged(I)V

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    :catchall_0
    move-exception v3

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    :cond_3
    sget-object v4, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;
    invoke-static {v4}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->access$300(Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->notifyCocktailBarDecorChanged(I)V

    throw v3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :catchall_1
    move-exception v3

    move-object v1, v2

    goto :goto_1
.end method

.method public setResource(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v4, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;
    invoke-static {v4}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->access$300(Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->TAG:Ljava/lang/String;

    const-string v5, "CocktailBarManagerService not running"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;
    invoke-static {v4}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->access$300(Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "res:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->setCocktailBarDecor(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->setCocktailBarDecor(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    :cond_2
    sget-object v4, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    invoke-virtual {v4}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->notifyCocktailBarDecorChanged()V

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0

    :catchall_0
    move-exception v4

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    :cond_3
    sget-object v5, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    invoke-virtual {v5}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->notifyCocktailBarDecorChanged()V

    throw v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :catchall_1
    move-exception v4

    move-object v1, v2

    goto :goto_1
.end method

.method public setStream(Ljava/io/InputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;
    invoke-static {v3}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->access$300(Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->TAG:Ljava/lang/String;

    const-string v4, "CocktailBarManagerService not running"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;
    invoke-static {v3}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->access$300(Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->setCocktailBarDecor(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->setCocktailBarDecor(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    :cond_2
    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->notifyCocktailBarDecorChanged()V

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    :catchall_0
    move-exception v3

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    :cond_3
    sget-object v4, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    invoke-virtual {v4}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->notifyCocktailBarDecorChanged()V

    throw v3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :catchall_1
    move-exception v3

    move-object v1, v2

    goto :goto_1
.end method
