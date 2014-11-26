.class Lcom/android/mms/transaction/SendTransaction$1;
.super Landroid/os/Handler;
.source "SendTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/SendTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/SendTransaction;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/SendTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/SendTransaction$1;->this$0:Lcom/android/mms/transaction/SendTransaction;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1    # Landroid/os/Message;

    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SendTransaction] msg.what : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    const-string v3, "Mms:transaction"

    const-string v4, "[SendTransaction] msg.what is default"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/mms/transaction/SendTransaction$1;->this$0:Lcom/android/mms/transaction/SendTransaction;

    iget-object v3, v3, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/mms/ui/MmsRetryActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x18000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/mms/transaction/SendTransaction$1;->this$0:Lcom/android/mms/transaction/SendTransaction;

    iget-object v3, v3, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/mms/transaction/SendTransaction$1;->this$0:Lcom/android/mms/transaction/SendTransaction;

    iget-object v3, v3, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/android/mms/transaction/SendTransaction$1;->this$0:Lcom/android/mms/transaction/SendTransaction;

    # getter for: Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;
    invoke-static {v3}, Lcom/android/mms/transaction/SendTransaction;->access$000(Lcom/android/mms/transaction/SendTransaction;)Landroid/net/http/AndroidHttpClient;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setLinger(Lorg/apache/http/params/HttpParams;I)V

    iget-object v3, p0, Lcom/android/mms/transaction/SendTransaction$1;->this$0:Lcom/android/mms/transaction/SendTransaction;

    # getter for: Lcom/android/mms/transaction/SendTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;
    invoke-static {v3}, Lcom/android/mms/transaction/SendTransaction;->access$100(Lcom/android/mms/transaction/SendTransaction;)Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, "Mms:transaction"

    const-string v4, "[SendTransaction] abort post"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/mms/transaction/SendTransaction$1;->this$0:Lcom/android/mms/transaction/SendTransaction;

    # getter for: Lcom/android/mms/transaction/SendTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;
    invoke-static {v3}, Lcom/android/mms/transaction/SendTransaction;->access$100(Lcom/android/mms/transaction/SendTransaction;)Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    :cond_0
    iget-object v3, p0, Lcom/android/mms/transaction/SendTransaction$1;->this$0:Lcom/android/mms/transaction/SendTransaction;

    # getter for: Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;
    invoke-static {v3}, Lcom/android/mms/transaction/SendTransaction;->access$000(Lcom/android/mms/transaction/SendTransaction;)Landroid/net/http/AndroidHttpClient;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const-string v3, "Mms:transaction"

    const-string v4, "[SendTransaction] shutdown connection"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/mms/transaction/SendTransaction$1;->this$0:Lcom/android/mms/transaction/SendTransaction;

    # getter for: Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;
    invoke-static {v3}, Lcom/android/mms/transaction/SendTransaction;->access$000(Lcom/android/mms/transaction/SendTransaction;)Landroid/net/http/AndroidHttpClient;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, "Mms:transaction"

    const-string v4, "[SendTransaction] close httpClient"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/mms/transaction/SendTransaction$1;->this$0:Lcom/android/mms/transaction/SendTransaction;

    # getter for: Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;
    invoke-static {v3}, Lcom/android/mms/transaction/SendTransaction;->access$000(Lcom/android/mms/transaction/SendTransaction;)Landroid/net/http/AndroidHttpClient;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    iget-object v3, p0, Lcom/android/mms/transaction/SendTransaction$1;->this$0:Lcom/android/mms/transaction/SendTransaction;

    const/4 v4, 0x0

    # setter for: Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;
    invoke-static {v3, v4}, Lcom/android/mms/transaction/SendTransaction;->access$002(Lcom/android/mms/transaction/SendTransaction;Landroid/net/http/AndroidHttpClient;)Landroid/net/http/AndroidHttpClient;

    :cond_1
    const-string v3, "Mms:transaction"

    const-string v4, "[SendTransaction] sending timeout"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
