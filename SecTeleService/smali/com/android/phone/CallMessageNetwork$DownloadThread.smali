.class Lcom/android/phone/CallMessageNetwork$DownloadThread;
.super Ljava/lang/Thread;
.source "CallMessageNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallMessageNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadThread"
.end annotation


# instance fields
.field path:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/CallMessageNetwork;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/phone/CallMessageNetwork;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/phone/CallMessageNetwork$DownloadThread;->this$0:Lcom/android/phone/CallMessageNetwork;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallMessageNetwork$DownloadThread;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/CallMessageNetwork$DownloadThread;->path:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/phone/CallMessageNetwork$DownloadThread;->url:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/phone/CallMessageNetwork$DownloadThread;->path:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "support_photo_ring"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/phone/CallMessageNetwork$DownloadThread;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallMessageNetwork$DownloadThread;->this$0:Lcom/android/phone/CallMessageNetwork;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CTN="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CallMessageNetwork$DownloadThread;->this$0:Lcom/android/phone/CallMessageNetwork;

    # invokes: Lcom/android/phone/CallMessageNetwork;->getUserCTN()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/CallMessageNetwork;->access$800(Lcom/android/phone/CallMessageNetwork;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/phone/CallMessageNetwork;->AES256_Encrypt(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/phone/CallMessageNetwork;->access$600(Lcom/android/phone/CallMessageNetwork;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CallMessageNetwork$DownloadThread;->url:Ljava/lang/String;

    :cond_0
    new-instance v0, Lcom/android/phone/HTTPRequestHelper;

    iget-object v2, p0, Lcom/android/phone/CallMessageNetwork$DownloadThread;->this$0:Lcom/android/phone/CallMessageNetwork;

    # getter for: Lcom/android/phone/CallMessageNetwork;->mHttpResponseHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/CallMessageNetwork;->access$400(Lcom/android/phone/CallMessageNetwork;)Landroid/os/Handler;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CallMessageConstants$RequestType;->DOWNLOAD_CONTENT:Lcom/android/phone/CallMessageConstants$RequestType;

    iget-object v4, p0, Lcom/android/phone/CallMessageNetwork$DownloadThread;->path:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4, p0}, Lcom/android/phone/HTTPRequestHelper;-><init>(Landroid/os/Handler;Lcom/android/phone/CallMessageConstants$RequestType;Ljava/lang/String;Ljava/lang/Thread;)V

    iget-object v2, p0, Lcom/android/phone/CallMessageNetwork$DownloadThread;->url:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/HTTPRequestHelper;->get(Ljava/lang/String;Ljava/util/Map;)Z

    return-void
.end method
