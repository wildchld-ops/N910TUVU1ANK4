.class Lcom/lgu/ims/pal/isim/IsimService$2;
.super Landroid/content/BroadcastReceiver;
.source "IsimService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgu/ims/pal/isim/IsimService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lgu/ims/pal/isim/IsimService;


# direct methods
.method constructor <init>(Lcom/lgu/ims/pal/isim/IsimService;)V
    .locals 0

    iput-object p1, p0, Lcom/lgu/ims/pal/isim/IsimService$2;->this$0:Lcom/lgu/ims/pal/isim/IsimService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/lgu/ims/pal/isim/IsimService$2;->this$0:Lcom/lgu/ims/pal/isim/IsimService;

    iget-object v4, v4, Lcom/lgu/ims/pal/isim/IsimService;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISIM response BCAST received onReceive the action intent is = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "com.sec.android.phone.ISIMAuthParams"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "data"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    const-string v4, "eventType"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    iget-object v4, p0, Lcom/lgu/ims/pal/isim/IsimService$2;->this$0:Lcom/lgu/ims/pal/isim/IsimService;

    iget-object v4, v4, Lcom/lgu/ims/pal/isim/IsimService;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AKS response = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/lgu/ims/pal/isim/IsimService$2;->this$0:Lcom/lgu/ims/pal/isim/IsimService;

    invoke-virtual {v4, v1}, Lcom/lgu/ims/pal/isim/IsimService;->handleIsimResponse([B)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/lgu/ims/pal/isim/IsimService$2;->this$0:Lcom/lgu/ims/pal/isim/IsimService;

    iget-object v4, v4, Lcom/lgu/ims/pal/isim/IsimService;->LOG_TAG:Ljava/lang/String;

    const-string v5, "eventType is false "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
