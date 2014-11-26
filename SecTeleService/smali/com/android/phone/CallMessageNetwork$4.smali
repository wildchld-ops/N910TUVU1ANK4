.class Lcom/android/phone/CallMessageNetwork$4;
.super Ljava/lang/Thread;
.source "CallMessageNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallMessageNetwork;->setRealtimeServiceInfoCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallMessageNetwork;

.field final synthetic val$content_msg:Ljava/lang/String;

.field final synthetic val$content_url:Ljava/lang/String;

.field final synthetic val$receive_user_ctn:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/CallMessageNetwork;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CallMessageNetwork$4;->this$0:Lcom/android/phone/CallMessageNetwork;

    iput-object p2, p0, Lcom/android/phone/CallMessageNetwork$4;->val$receive_user_ctn:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/phone/CallMessageNetwork$4;->val$content_msg:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/phone/CallMessageNetwork$4;->val$content_url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v3, "support_mcid_with_alertinfo"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "showme.mobile.olleh.com/CallMessage/setRealtimeServiceInfo.call"

    :goto_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v3, p0, Lcom/android/phone/CallMessageNetwork$4;->this$0:Lcom/android/phone/CallMessageNetwork;

    # invokes: Lcom/android/phone/CallMessageNetwork;->getBaseParameters(Ljava/util/LinkedHashMap;)V
    invoke-static {v3, v1}, Lcom/android/phone/CallMessageNetwork;->access$300(Lcom/android/phone/CallMessageNetwork;Ljava/util/LinkedHashMap;)V

    const-string v3, "receive_user_ctn"

    iget-object v4, p0, Lcom/android/phone/CallMessageNetwork$4;->this$0:Lcom/android/phone/CallMessageNetwork;

    iget-object v5, p0, Lcom/android/phone/CallMessageNetwork$4;->val$receive_user_ctn:Ljava/lang/String;

    # invokes: Lcom/android/phone/CallMessageNetwork;->AES256_Encrypt(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/phone/CallMessageNetwork;->access$600(Lcom/android/phone/CallMessageNetwork;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "content_msg"

    iget-object v4, p0, Lcom/android/phone/CallMessageNetwork$4;->val$content_msg:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "content_url"

    iget-object v4, p0, Lcom/android/phone/CallMessageNetwork$4;->this$0:Lcom/android/phone/CallMessageNetwork;

    iget-object v5, p0, Lcom/android/phone/CallMessageNetwork$4;->val$content_url:Ljava/lang/String;

    # invokes: Lcom/android/phone/CallMessageNetwork;->AES256_Encrypt(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/phone/CallMessageNetwork;->access$600(Lcom/android/phone/CallMessageNetwork;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/phone/HTTPRequestHelper;

    iget-object v3, p0, Lcom/android/phone/CallMessageNetwork$4;->this$0:Lcom/android/phone/CallMessageNetwork;

    # getter for: Lcom/android/phone/CallMessageNetwork;->mHttpResponseHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/CallMessageNetwork;->access$400(Lcom/android/phone/CallMessageNetwork;)Landroid/os/Handler;

    move-result-object v3

    sget-object v4, Lcom/android/phone/CallMessageConstants$RequestType;->SET_REALTIME_SERVICEINFO_CALL:Lcom/android/phone/CallMessageConstants$RequestType;

    invoke-direct {v0, v3, v4}, Lcom/android/phone/HTTPRequestHelper;-><init>(Landroid/os/Handler;Lcom/android/phone/CallMessageConstants$RequestType;)V

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/HTTPRequestHelper;->post(Ljava/lang/String;Ljava/util/Map;)Z

    return-void

    :cond_0
    const-string v2, "mcms.mcnap.uplus.co.kr/CallMessage/setRealtimeServiceInfo.call"

    goto :goto_0
.end method
