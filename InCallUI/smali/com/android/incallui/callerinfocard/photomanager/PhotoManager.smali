.class public abstract Lcom/android/incallui/callerinfocard/photomanager/PhotoManager;
.super Ljava/lang/Object;
.source "PhotoManager.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized createPhotoManager(Landroid/content/Context;)Lcom/android/incallui/callerinfocard/photomanager/PhotoManager;
    .locals 2
    .param p0    # Landroid/content/Context;

    const-class v1, Lcom/android/incallui/callerinfocard/photomanager/PhotoManager;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;

    invoke-direct {v0, p0}, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/incallui/callerinfocard/photomanager/PhotoManager;
    .locals 5
    .param p0    # Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "snsPhotos"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/callerinfocard/photomanager/PhotoManager;

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/incallui/callerinfocard/photomanager/PhotoManager;->createPhotoManager(Landroid/content/Context;)Lcom/android/incallui/callerinfocard/photomanager/PhotoManager;

    move-result-object v1

    const-string v2, "PhotoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No photo service in context: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1
.end method


# virtual methods
.method public abstract loadPhoto(Landroid/widget/ImageView;Ljava/lang/String;)V
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1    # Landroid/content/res/Configuration;

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0
    .param p1    # I

    return-void
.end method
