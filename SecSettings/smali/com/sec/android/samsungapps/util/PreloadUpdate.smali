.class public Lcom/sec/android/samsungapps/util/PreloadUpdate;
.super Ljava/lang/Object;
.source "PreloadUpdate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/samsungapps/util/PreloadUpdate$IPreloadUpdateResultListener;
    }
.end annotation


# instance fields
.field private _Context:Landroid/content/Context;

.field private _Handler:Landroid/os/Handler;

.field private _IPreloadUpdate:Lcom/sec/android/app/samsungapps/preloadUpdate/aidl/IPreloadUpdate;

.field private _Listener:Lcom/sec/android/samsungapps/util/PreloadUpdate$IPreloadUpdateResultListener;

.field serviceBinder:Lcom/sec/android/samsungapps/util/ServiceBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/samsungapps/util/PreloadUpdate;->_Handler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/samsungapps/util/PreloadUpdate;->serviceBinder:Lcom/sec/android/samsungapps/util/ServiceBinder;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/samsungapps/util/PreloadUpdate;->_Context:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/samsungapps/util/PreloadUpdate$1;

    iget-object v1, p0, Lcom/sec/android/samsungapps/util/PreloadUpdate;->_Context:Landroid/content/Context;

    const-string v2, "com.sec.android.app.samsungapps.PreloadUpdateService"

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/samsungapps/util/PreloadUpdate$1;-><init>(Lcom/sec/android/samsungapps/util/PreloadUpdate;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/samsungapps/util/PreloadUpdate;->serviceBinder:Lcom/sec/android/samsungapps/util/ServiceBinder;

    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/samsungapps/util/PreloadUpdate;Lcom/sec/android/app/samsungapps/preloadUpdate/aidl/IPreloadUpdate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/samsungapps/util/PreloadUpdate;->_IPreloadUpdate:Lcom/sec/android/app/samsungapps/preloadUpdate/aidl/IPreloadUpdate;

    return-void
.end method

.method static synthetic access$1(Lcom/sec/android/samsungapps/util/PreloadUpdate;)Lcom/sec/android/app/samsungapps/preloadUpdate/aidl/IPreloadUpdate;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/samsungapps/util/PreloadUpdate;->_IPreloadUpdate:Lcom/sec/android/app/samsungapps/preloadUpdate/aidl/IPreloadUpdate;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sec/android/samsungapps/util/PreloadUpdate;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/samsungapps/util/PreloadUpdate;->onNotifyResult(I)V

    return-void
.end method

.method static synthetic access$3(Lcom/sec/android/samsungapps/util/PreloadUpdate;)Lcom/sec/android/samsungapps/util/PreloadUpdate$IPreloadUpdateResultListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/samsungapps/util/PreloadUpdate;->_Listener:Lcom/sec/android/samsungapps/util/PreloadUpdate$IPreloadUpdateResultListener;

    return-object v0
.end method

.method private onNotifyResult(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/samsungapps/util/PreloadUpdate;->_Handler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/samsungapps/util/PreloadUpdate$3;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/samsungapps/util/PreloadUpdate$3;-><init>(Lcom/sec/android/samsungapps/util/PreloadUpdate;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/samsungapps/util/PreloadUpdate;->serviceBinder:Lcom/sec/android/samsungapps/util/ServiceBinder;

    new-instance v1, Lcom/sec/android/samsungapps/util/PreloadUpdate$2;

    invoke-direct {v1, p0}, Lcom/sec/android/samsungapps/util/PreloadUpdate$2;-><init>(Lcom/sec/android/samsungapps/util/PreloadUpdate;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/samsungapps/util/ServiceBinder;->checkService(Lcom/sec/android/samsungapps/util/ServiceBinder$IServiceBinderResult;)V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/samsungapps/util/PreloadUpdate;->serviceBinder:Lcom/sec/android/samsungapps/util/ServiceBinder;

    invoke-virtual {v0}, Lcom/sec/android/samsungapps/util/ServiceBinder;->release()V

    return-void
.end method

.method public setListener(Lcom/sec/android/samsungapps/util/PreloadUpdate$IPreloadUpdateResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/samsungapps/util/PreloadUpdate;->_Listener:Lcom/sec/android/samsungapps/util/PreloadUpdate$IPreloadUpdateResultListener;

    return-void
.end method
