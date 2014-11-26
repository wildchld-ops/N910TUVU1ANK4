.class Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;
.super Lcom/samsung/android/cocktailbar/ICocktailBarDecorManagerCallback$Stub;
.source "CocktailBarDecorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Globals"
.end annotation


# static fields
.field private static final MSG_CLEAR_COCKTAILBAR_DECOR:I = 0x1


# instance fields
.field private mCocktailBarDecor:Landroid/graphics/Bitmap;

.field private mDefaultCocktailBarDecor:Landroid/graphics/Bitmap;

.field private final mHandler:Landroid/os/Handler;

.field private mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .param p1    # Landroid/os/Looper;

    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarDecorManagerCallback$Stub;-><init>()V

    const-string v1, "CocktailBarService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    new-instance v1, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals$1;-><init>(Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0    # Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;
    .param p1    # Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mCocktailBarDecor:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$102(Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0    # Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;
    .param p1    # Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mDefaultCocktailBarDecor:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;)Lcom/samsung/android/cocktailbar/ICocktailBarService;
    .locals 1
    .param p0    # Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    return-object v0
.end method

.method static generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 12
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/graphics/Bitmap;
    .param p2    # I
    .param p3    # I

    const/4 v5, 0x0

    if-nez p1, :cond_1

    move-object p1, v5

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const-string/jumbo v10, "window"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v10, v4, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    invoke-virtual {p1, v10}, Landroid/graphics/Bitmap;->setDensity(I)V

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    if-ne v10, p2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    if-eq v10, p3, :cond_0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    if-nez v10, :cond_3

    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->access$200()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Assuming Texture compressed bitmap."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :try_start_0
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget v10, v4, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    invoke-virtual {v5, v10}, Landroid/graphics/Bitmap;->setDensity(I)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    iput v10, v8, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    iput v10, v8, Landroid/graphics/Rect;->bottom:I

    iget v10, v8, Landroid/graphics/Rect;->right:I

    sub-int v2, p2, v10

    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v10

    if-gtz v2, :cond_4

    if-lez v1, :cond_6

    :cond_4
    if-le v2, v1, :cond_5

    int-to-float v10, p2

    iget v11, v8, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    div-float v7, v10, v11

    :goto_1
    iget v10, v8, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    mul-float/2addr v10, v7

    float-to-int v10, v10

    iput v10, v8, Landroid/graphics/Rect;->right:I

    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    mul-float/2addr v10, v7

    float-to-int v10, v10

    iput v10, v8, Landroid/graphics/Rect;->bottom:I

    :goto_2
    iget v10, v8, Landroid/graphics/Rect;->right:I

    sub-int v2, p2, v10

    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v10

    div-int/lit8 v10, v2, 0x2

    div-int/lit8 v11, v1, 0x2

    invoke-virtual {v8, v10, v11}, Landroid/graphics/Rect;->offset(II)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance v10, Landroid/graphics/PorterDuffXfermode;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v11}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v10, 0x0

    invoke-virtual {v0, p1, v10, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object p1, v5

    goto/16 :goto_0

    :cond_5
    int-to-float v10, p3

    iget v11, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    div-float v7, v10, v11

    goto :goto_1

    :cond_6
    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    iget v11, v8, Landroid/graphics/Rect;->right:I

    if-le v10, v11, :cond_7

    iput p2, v8, Landroid/graphics/Rect;->right:I

    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    mul-int/2addr v10, p2

    iget v11, v8, Landroid/graphics/Rect;->right:I

    div-int/2addr v10, v11

    iput v10, v8, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->access$200()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Can\'t generate default bitmap"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    :cond_7
    :try_start_1
    iget v10, v8, Landroid/graphics/Rect;->right:I

    mul-int/2addr v10, p3

    iget v11, v8, Landroid/graphics/Rect;->bottom:I

    div-int/2addr v10, v11

    iput v10, v8, Landroid/graphics/Rect;->right:I

    iput p3, v8, Landroid/graphics/Rect;->bottom:I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private getCocktailBarDecorTypeLocked(Landroid/graphics/BitmapFactory$Options;)I
    .locals 2
    .param p1    # Landroid/graphics/BitmapFactory$Options;

    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getCurrentCocktailBarDecorBitmapLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1    # Landroid/content/Context;

    const/4 v8, 0x0

    :try_start_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v7, p0, v5}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktailBarDecor(Lcom/samsung/android/cocktailbar/ICocktailBarDecorManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v7, "width"

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "height"

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    :try_start_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v9, 0x0

    invoke-static {v7, v9, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1, v0, v6, v3}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    :try_start_2
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    return-object v7

    :catch_0
    move-exception v1

    :try_start_3
    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->access$200()Ljava/lang/String;

    move-result-object v7

    const-string v9, "Can\'t decode file"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_0
    :goto_1
    move-object v7, v8

    goto :goto_0

    :catchall_0
    move-exception v7

    :try_start_5
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_2
    :try_start_6
    throw v7
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v7

    goto :goto_1

    :catch_2
    move-exception v9

    goto :goto_2

    :catch_3
    move-exception v7

    goto :goto_1

    :catch_4
    move-exception v8

    goto :goto_0
.end method

.method private getCurrentCocktailBarDecorMovieLocked(Landroid/content/Context;)Landroid/graphics/Movie;
    .locals 7
    .param p1    # Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v5, p0, v4}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktailBarDecor(Lcom/samsung/android/cocktailbar/ICocktailBarDecorManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v2}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    move-object v1, v2

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_1
    return-object v3

    :catch_0
    move-exception v5

    move-object v1, v2

    goto :goto_0

    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v0, :cond_3

    :try_start_4
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_3
    throw v5

    :catch_1
    move-exception v5

    :goto_4
    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception v5

    goto :goto_1

    :catch_3
    move-exception v6

    goto :goto_3

    :catchall_1
    move-exception v5

    move-object v1, v2

    goto :goto_2

    :catch_4
    move-exception v5

    move-object v1, v2

    goto :goto_4
.end method

.method private getDefaultCocktailBarDecorBitmapLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1    # Landroid/content/Context;

    const/4 v7, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->getDefaultCocktailBarDecorInputSteamLocked()Ljava/io/InputStream;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_1
    iget-object v6, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v6}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getWidthHint()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v6}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getHeightHint()I

    move-result v2

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v6, 0x0

    invoke-static {v3, v6, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1, v0, v5, v2}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    return-object v6

    :catch_0
    move-exception v1

    :try_start_3
    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->access$200()Ljava/lang/String;

    move-result-object v6

    const-string v8, "Can\'t decode stream"

    invoke-static {v6, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_0
    :goto_1
    move-object v6, v7

    goto :goto_0

    :catchall_0
    move-exception v6

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_2
    :try_start_6
    throw v6
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v6

    goto :goto_1

    :catch_2
    move-exception v8

    goto :goto_2

    :catch_3
    move-exception v6

    goto :goto_1

    :catch_4
    move-exception v7

    goto :goto_0
.end method

.method private getDefaultCocktailBarDecorFileLocked()Ljava/io/File;
    .locals 14

    const-string v7, "/system/cocktailbar_decor/default_cocktailbar_decor/"

    const-string v8, "/system/csc_contents/"

    const/4 v3, 0x0

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    if-eqz v2, :cond_1

    const/4 v9, 0x0

    :goto_0
    array-length v11, v2

    if-ge v9, v11, :cond_0

    aget-object v11, v2, v9

    const-string v12, "default_cocktailbar_decor"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v10, 0x1

    :cond_0
    if-eqz v10, :cond_1

    new-instance v4, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v2, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :cond_1
    const/4 v5, 0x0

    if-eqz v10, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_3

    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->access$200()Ljava/lang/String;

    move-result-object v11

    const-string v12, "getDefaultCocktailBarDecorLocked() symbolic link is used."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    if-eqz v10, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_4

    move-object v0, v3

    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->access$200()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getDefaultCocktailBarDecorLocked(). symbolic link path is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v0

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v1, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private getDefaultCocktailBarDecorInputSteamLocked()Ljava/io/InputStream;
    .locals 8

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->getDefaultCocktailBarDecorFileLocked()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CSC CocktailBar Decor FileInputStream error"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getDefaultCocktailBarDecorMovieLocked()Landroid/graphics/Movie;
    .locals 9

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->getDefaultCocktailBarDecorFileLocked()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v3}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v2, v3

    :cond_1
    :goto_1
    return-object v4

    :catch_0
    move-exception v1

    :goto_2
    :try_start_3
    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->access$200()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CSC CocktailBar Decor FileInputStream error"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    goto :goto_1

    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_2
    :goto_4
    throw v5

    :catch_2
    move-exception v6

    goto :goto_4

    :catch_3
    move-exception v5

    goto :goto_0

    :catchall_1
    move-exception v5

    move-object v2, v3

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v2, v3

    goto :goto_2
.end method

.method private getSystemCocktailBarDecorTypeLocked()I
    .locals 8

    const/4 v0, 0x0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v6, p0, v5}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktailBarDecor(Lcom/samsung/android/cocktailbar/ICocktailBarDecorManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v6, 0x1

    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-direct {p0, v4}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->getCocktailBarDecorTypeLocked(Landroid/graphics/BitmapFactory$Options;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :try_start_1
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getCocktailBarDecorBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1    # Landroid/content/Context;

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mCocktailBarDecor:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mCocktailBarDecor:Landroid/graphics/Bitmap;

    monitor-exit p0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mDefaultCocktailBarDecor:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mDefaultCocktailBarDecor:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mCocktailBarDecor:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0, p1}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->getCurrentCocktailBarDecorBitmapLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mCocktailBarDecor:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mCocktailBarDecor:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->getDefaultCocktailBarDecorBitmapLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mDefaultCocktailBarDecor:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mDefaultCocktailBarDecor:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    :catch_0
    move-exception v0

    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No memory load current mDecorailBarDecor"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mDefaultCocktailBarDecor:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mCocktailBarDecor:Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public getCocktailBarDecorMovie(Landroid/content/Context;)Landroid/graphics/Movie;
    .locals 2
    .param p1    # Landroid/content/Context;

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->getCurrentCocktailBarDecorMovieLocked(Landroid/content/Context;)Landroid/graphics/Movie;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->getDefaultCocktailBarDecorMovieLocked()Landroid/graphics/Movie;

    move-result-object v0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCocktailBarDecorType()I
    .locals 5

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v4}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getDecorType()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->getSystemCocktailBarDecorTypeLocked()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->getDefaultCocktailBarDecorFileLocked()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-direct {p0, v3}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->getCocktailBarDecorTypeLocked(Landroid/graphics/BitmapFactory$Options;)I

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v4, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->setDecorType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    :try_start_1
    monitor-exit p0

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public notifyCocktailBarDecorChanged()V
    .locals 3

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->getSystemCocktailBarDecorTypeLocked()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v2, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->notifyCocktailBarDecorChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onCocktailBarDecorChanged()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
