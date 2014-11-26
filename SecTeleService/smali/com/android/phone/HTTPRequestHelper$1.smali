.class Lcom/android/phone/HTTPRequestHelper$1;
.super Ljava/util/TimerTask;
.source "HTTPRequestHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/HTTPRequestHelper;->setUploadTimeout(Lcom/android/phone/network/multipart/MultipartEntity;Lorg/apache/http/client/HttpClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field sendDurationTime:I

.field final synthetic this$0:Lcom/android/phone/HTTPRequestHelper;

.field final synthetic val$client:Lorg/apache/http/client/HttpClient;

.field final synthetic val$entity:Lcom/android/phone/network/multipart/MultipartEntity;

.field waitResponseTime:I


# direct methods
.method constructor <init>(Lcom/android/phone/HTTPRequestHelper;Lcom/android/phone/network/multipart/MultipartEntity;Lorg/apache/http/client/HttpClient;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/phone/HTTPRequestHelper$1;->this$0:Lcom/android/phone/HTTPRequestHelper;

    iput-object p2, p0, Lcom/android/phone/HTTPRequestHelper$1;->val$entity:Lcom/android/phone/network/multipart/MultipartEntity;

    iput-object p3, p0, Lcom/android/phone/HTTPRequestHelper$1;->val$client:Lorg/apache/http/client/HttpClient;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    iput v0, p0, Lcom/android/phone/HTTPRequestHelper$1;->sendDurationTime:I

    iput v0, p0, Lcom/android/phone/HTTPRequestHelper$1;->waitResponseTime:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/HTTPRequestHelper$1;->val$entity:Lcom/android/phone/network/multipart/MultipartEntity;

    invoke-virtual {v0}, Lcom/android/phone/network/multipart/MultipartEntity;->isSendDataComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/phone/HTTPRequestHelper$1;->waitResponseTime:I

    add-int/lit16 v0, v0, 0x1f4

    iput v0, p0, Lcom/android/phone/HTTPRequestHelper$1;->waitResponseTime:I

    iget v0, p0, Lcom/android/phone/HTTPRequestHelper$1;->waitResponseTime:I

    const/16 v1, 0x2ee0

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/HTTPRequestHelper$1;->val$client:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    invoke-static {}, Lcom/android/phone/HTTPClientFactory;->releaseHttpClient()V

    iget-object v0, p0, Lcom/android/phone/HTTPRequestHelper$1;->this$0:Lcom/android/phone/HTTPRequestHelper;

    # getter for: Lcom/android/phone/HTTPRequestHelper;->mUploadTimeoutTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/android/phone/HTTPRequestHelper;->access$000(Lcom/android/phone/HTTPRequestHelper;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/phone/HTTPRequestHelper$1;->sendDurationTime:I

    add-int/lit16 v0, v0, 0x1f4

    iput v0, p0, Lcom/android/phone/HTTPRequestHelper$1;->sendDurationTime:I

    iget v0, p0, Lcom/android/phone/HTTPRequestHelper$1;->sendDurationTime:I

    const v1, 0x13880

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/HTTPRequestHelper$1;->val$client:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    invoke-static {}, Lcom/android/phone/HTTPClientFactory;->releaseHttpClient()V

    iget-object v0, p0, Lcom/android/phone/HTTPRequestHelper$1;->this$0:Lcom/android/phone/HTTPRequestHelper;

    # getter for: Lcom/android/phone/HTTPRequestHelper;->mUploadTimeoutTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/android/phone/HTTPRequestHelper;->access$000(Lcom/android/phone/HTTPRequestHelper;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_0
.end method
