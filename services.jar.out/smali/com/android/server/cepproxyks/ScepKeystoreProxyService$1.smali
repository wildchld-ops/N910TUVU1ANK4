.class Lcom/android/server/cepproxyks/ScepKeystoreProxyService$1;
.super Ljava/lang/Object;
.source "ScepKeystoreProxyService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/cepproxyks/ScepKeystoreProxyService;->grantAccessForAKS(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cepproxyks/ScepKeystoreProxyService;

.field final synthetic val$alias:Ljava/lang/String;

.field final synthetic val$uidscep:I


# direct methods
.method constructor <init>(Lcom/android/server/cepproxyks/ScepKeystoreProxyService;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cepproxyks/ScepKeystoreProxyService$1;->this$0:Lcom/android/server/cepproxyks/ScepKeystoreProxyService;

    iput p2, p0, Lcom/android/server/cepproxyks/ScepKeystoreProxyService$1;->val$uidscep:I

    iput-object p3, p0, Lcom/android/server/cepproxyks/ScepKeystoreProxyService$1;->val$alias:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/cepproxyks/ScepKeystoreProxyService$1;->this$0:Lcom/android/server/cepproxyks/ScepKeystoreProxyService;

    # getter for: Lcom/android/server/cepproxyks/ScepKeystoreProxyService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/cepproxyks/ScepKeystoreProxyService;->access$000(Lcom/android/server/cepproxyks/ScepKeystoreProxyService;)Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/server/cepproxyks/ScepKeystoreProxyService$1;->val$uidscep:I

    invoke-static {v3, v4}, Lcom/android/server/cepproxyks/ScepKeystoreProxyService;->bind(Landroid/content/Context;I)Lcom/android/server/cepproxyks/ScepKeystoreProxyService$KeyChainConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/cepproxyks/ScepKeystoreProxyService$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v2

    iget v3, p0, Lcom/android/server/cepproxyks/ScepKeystoreProxyService$1;->val$uidscep:I

    iget-object v4, p0, Lcom/android/server/cepproxyks/ScepKeystoreProxyService$1;->val$alias:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/security/IKeyChainService;->setGrant(ILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {v1}, Lcom/android/server/cepproxyks/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz v1, :cond_0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz v1, :cond_0

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v3

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/cepproxyks/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_1
    throw v3
.end method
