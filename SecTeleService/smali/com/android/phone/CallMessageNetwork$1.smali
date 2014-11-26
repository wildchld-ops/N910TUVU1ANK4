.class Lcom/android/phone/CallMessageNetwork$1;
.super Landroid/os/Handler;
.source "CallMessageNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallMessageNetwork;
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

    iput-object p1, p0, Lcom/android/phone/CallMessageNetwork$1;->this$0:Lcom/android/phone/CallMessageNetwork;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ResponseHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "URL"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ResponseHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReqType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ReqType"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ResponseHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Result"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1    # Landroid/os/Message;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/CallMessageNetwork$1;->dump(Landroid/os/Bundle;)V

    const-string v6, "ReqType"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/CallMessageConstants$RequestType;->valueOf(Ljava/lang/String;)Lcom/android/phone/CallMessageConstants$RequestType;

    move-result-object v5

    new-instance v3, Lcom/android/phone/JSONObjectParser;

    invoke-direct {v3}, Lcom/android/phone/JSONObjectParser;-><init>()V

    iget-object v6, p0, Lcom/android/phone/CallMessageNetwork$1;->this$0:Lcom/android/phone/CallMessageNetwork;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CallMessageNetwork.Handler handleMessage reqType :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/phone/CallMessageNetwork;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/phone/CallMessageNetwork;->access$000(Lcom/android/phone/CallMessageNetwork;Ljava/lang/String;)V

    const/4 v1, 0x0

    sget-object v6, Lcom/android/phone/CallMessageNetwork$9;->$SwitchMap$com$android$phone$CallMessageConstants$RequestType:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/phone/CallMessageNetwork$1;->this$0:Lcom/android/phone/CallMessageNetwork;

    # getter for: Lcom/android/phone/CallMessageNetwork;->mListenerList:Ljava/util/List;
    invoke-static {v6}, Lcom/android/phone/CallMessageNetwork;->access$200(Lcom/android/phone/CallMessageNetwork;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/ICallMessageNetworkListener;

    invoke-interface {v4, v5, v1}, Lcom/android/phone/ICallMessageNetworkListener;->onReceive(Lcom/android/phone/CallMessageConstants$RequestType;Landroid/os/Bundle;)V

    goto :goto_1

    :pswitch_0
    if-eqz v3, :cond_0

    const-string v6, "Result"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/phone/JSONObjectParser;->init(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Lcom/android/phone/JSONObjectParser;->dump()V

    invoke-virtual {v3}, Lcom/android/phone/JSONObjectParser;->convertToBundle()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    if-eqz v3, :cond_0

    const-string v6, "Result"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/phone/JSONObjectParser;->init(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Lcom/android/phone/JSONObjectParser;->dump()V

    invoke-virtual {v3}, Lcom/android/phone/JSONObjectParser;->convertToBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v6, "content_url"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "content_url"

    iget-object v7, p0, Lcom/android/phone/CallMessageNetwork$1;->this$0:Lcom/android/phone/CallMessageNetwork;

    const-string v8, "content_url"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/phone/CallMessageNetwork;->AES256_Decrypt(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/phone/CallMessageNetwork;->access$100(Lcom/android/phone/CallMessageNetwork;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    if-eqz v3, :cond_0

    const-string v6, "Result"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/phone/JSONObjectParser;->init(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Lcom/android/phone/JSONObjectParser;->dump()V

    invoke-virtual {v3}, Lcom/android/phone/JSONObjectParser;->convertToBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v6, "support_mcid_with_alertinfo"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "chg_url"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "chg_url"

    iget-object v7, p0, Lcom/android/phone/CallMessageNetwork$1;->this$0:Lcom/android/phone/CallMessageNetwork;

    const-string v8, "chg_url"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/phone/CallMessageNetwork;->AES256_Decrypt(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/phone/CallMessageNetwork;->access$100(Lcom/android/phone/CallMessageNetwork;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    if-eqz v3, :cond_0

    const-string v6, "Result"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/phone/JSONObjectParser;->init(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Lcom/android/phone/JSONObjectParser;->dump()V

    invoke-virtual {v3}, Lcom/android/phone/JSONObjectParser;->convertToBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v6, "content_url"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "content_url"

    iget-object v7, p0, Lcom/android/phone/CallMessageNetwork$1;->this$0:Lcom/android/phone/CallMessageNetwork;

    const-string v8, "content_url"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/phone/CallMessageNetwork;->AES256_Decrypt(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/phone/CallMessageNetwork;->access$100(Lcom/android/phone/CallMessageNetwork;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v6, "chg_key"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "chg_key"

    iget-object v7, p0, Lcom/android/phone/CallMessageNetwork$1;->this$0:Lcom/android/phone/CallMessageNetwork;

    const-string v8, "chg_key"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/phone/CallMessageNetwork;->AES256_Decrypt(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/phone/CallMessageNetwork;->access$100(Lcom/android/phone/CallMessageNetwork;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    if-eqz v3, :cond_0

    const-string v6, "Result"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/phone/JSONObjectParser;->init(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Lcom/android/phone/JSONObjectParser;->dump()V

    invoke-virtual {v3}, Lcom/android/phone/JSONObjectParser;->convertToBundle()Landroid/os/Bundle;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_5
    if-eqz v3, :cond_2

    const-string v6, "Result"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/phone/JSONObjectParser;->init(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Lcom/android/phone/JSONObjectParser;->dump()V

    invoke-virtual {v3}, Lcom/android/phone/JSONObjectParser;->convertToBundle()Landroid/os/Bundle;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :cond_3
    const-string v6, "DownloadPath"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "dl_path"

    const-string v7, "DownloadPath"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v6, "DownloadResult"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "dl_result"

    const-string v7, "DownloadResult"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
