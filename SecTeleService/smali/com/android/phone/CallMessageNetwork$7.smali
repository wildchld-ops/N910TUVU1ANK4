.class Lcom/android/phone/CallMessageNetwork$7;
.super Ljava/lang/Thread;
.source "CallMessageNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallMessageNetwork;->getCallMessageChgCall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallMessageNetwork;


# direct methods
.method constructor <init>(Lcom/android/phone/CallMessageNetwork;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CallMessageNetwork$7;->this$0:Lcom/android/phone/CallMessageNetwork;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v2, 0x0

    const-string v3, "support_mcid_with_alertinfo"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/phone/PhotoringUtil;->getChgUrl()Ljava/lang/String;

    move-result-object v2

    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v0, Lcom/android/phone/HTTPRequestHelper;

    iget-object v3, p0, Lcom/android/phone/CallMessageNetwork$7;->this$0:Lcom/android/phone/CallMessageNetwork;

    # getter for: Lcom/android/phone/CallMessageNetwork;->mHttpResponseHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/CallMessageNetwork;->access$400(Lcom/android/phone/CallMessageNetwork;)Landroid/os/Handler;

    move-result-object v3

    sget-object v4, Lcom/android/phone/CallMessageConstants$RequestType;->GET_CALLMESSAGE_CHG_CALL:Lcom/android/phone/CallMessageConstants$RequestType;

    invoke-direct {v0, v3, v4}, Lcom/android/phone/HTTPRequestHelper;-><init>(Landroid/os/Handler;Lcom/android/phone/CallMessageConstants$RequestType;)V

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/HTTPRequestHelper;->post(Ljava/lang/String;Ljava/util/Map;)Z

    :cond_1
    return-void
.end method
