.class Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;
.super Landroid/os/HandlerThread;
.source "PhotoManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderThread"
.end annotation


# instance fields
.field private mBuffer:[B

.field private mLoaderThreadHandler:Landroid/os/Handler;

.field private final mPhotoUrls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$Request;",
            ">;"
        }
    .end annotation
.end field

.field private mPreloadStatus:I

.field final synthetic this$0:Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;Landroid/content/ContentResolver;)V
    .locals 1

    iput-object p1, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->this$0:Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;

    const-string v0, "ContactPhotoLoader"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->mPhotoUrls:Ljava/util/Set;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    return-void
.end method

.method private loadPhotosInBackground()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->this$0:Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->mPhotoUrls:Ljava/util/Set;

    # invokes: Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;->obtainPhotoUrlsToLoad(Ljava/util/Set;)V
    invoke-static {v0, v1}, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;->access$200(Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;Ljava/util/Set;)V

    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->loadUrlBasedPhotos()V

    invoke-virtual {p0}, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->requestPreloading()V

    return-void
.end method

.method private loadUrlBasedPhotos()V
    .locals 15

    const/4 v14, 0x0

    const/4 v13, 0x2

    const/4 v12, 0x0

    iget-object v9, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->mPhotoUrls:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$Request;

    iget-object v9, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->this$0:Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;

    # invokes: Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;->checkAllocatedHeapMemory()V
    invoke-static {v9}, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;->access$300(Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;)V

    invoke-virtual {v5}, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$Request;->getUrl()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->mBuffer:[B

    if-nez v9, :cond_0

    const/16 v9, 0x4000

    new-array v9, v9, [B

    iput-object v9, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->mBuffer:[B

    :cond_0
    :try_start_0
    const-string v9, "PhotoManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Loading "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    const-string v9, "GET"

    invoke-virtual {v7, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_3

    invoke-virtual {v7}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    iget-object v9, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->mBuffer:[B

    invoke-virtual {v3, v9}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v9, -0x1

    if-eq v4, v9, :cond_1

    iget-object v9, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->mBuffer:[B

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v9

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    const-string v9, "PhotoManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot load photo "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v9, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->this$0:Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;

    # invokes: Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;->cacheBitmap(Ljava/lang/Object;[BZ)V
    invoke-static {v9, v8, v14, v12}, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;->access$400(Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;Ljava/lang/Object;[BZ)V

    iget-object v9, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->this$0:Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;

    # getter for: Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;->access$500(Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    iget-object v9, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->this$0:Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    const/4 v11, 0x0

    # invokes: Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;->cacheBitmap(Ljava/lang/Object;[BZ)V
    invoke-static {v9, v8, v10, v11}, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;->access$400(Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;Ljava/lang/Object;[BZ)V

    iget-object v9, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->this$0:Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;

    # getter for: Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;->access$500(Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_2
    const-string v9, "PhotoManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot load photo "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->this$0:Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;

    const/4 v10, 0x0

    const/4 v11, 0x0

    # invokes: Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;->cacheBitmap(Ljava/lang/Object;[BZ)V
    invoke-static {v9, v8, v10, v11}, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;->access$400(Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;Ljava/lang/Object;[BZ)V

    iget-object v9, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->this$0:Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;

    # getter for: Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;->access$500(Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_3
    const-string v9, "PhotoManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot open url "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->this$0:Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;

    const/4 v10, 0x0

    const/4 v11, 0x0

    # invokes: Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;->cacheBitmap(Ljava/lang/Object;[BZ)V
    invoke-static {v9, v8, v10, v11}, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;->access$400(Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;Ljava/lang/Object;[BZ)V

    iget-object v9, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->this$0:Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;

    # getter for: Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;->access$500(Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private preloadPhotosInBackground()V
    .locals 4

    const/4 v3, 0x2

    iget v2, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    if-ne v2, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v2, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->this$0:Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;

    # getter for: Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;->mPendingPreloadRequests:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;->access$100(Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iput v3, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->requestPreloading()V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->this$0:Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;

    # getter for: Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;->mPendingPreloadRequests:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;->access$100(Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    iput v3, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->mPhotoUrls:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->this$0:Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;

    # getter for: Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;->mPendingPreloadRequests:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;->access$100(Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$Request;

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->mPhotoUrls:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->loadUrlBasedPhotos()V

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->mPhotoUrls:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    iput v3, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->requestPreloading()V

    goto :goto_0
.end method


# virtual methods
.method public ensureHandler()V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->preloadPhotosInBackground()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->loadPhotosInBackground()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestLoading()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->ensureHandler()V

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public requestPreloading()V
    .locals 4

    iget v0, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->ensureHandler()V

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
