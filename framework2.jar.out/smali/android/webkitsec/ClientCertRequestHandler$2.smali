.class Landroid/webkitsec/ClientCertRequestHandler$2;
.super Ljava/lang/Object;
.source "ClientCertRequestHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/ClientCertRequestHandler;->setSslClientCertFromPKCS8([B[[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/ClientCertRequestHandler;

.field final synthetic val$chainBytes:[[B

.field final synthetic val$key:[B


# direct methods
.method constructor <init>(Landroid/webkitsec/ClientCertRequestHandler;[B[[B)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/ClientCertRequestHandler$2;->this$0:Landroid/webkitsec/ClientCertRequestHandler;

    iput-object p2, p0, Landroid/webkitsec/ClientCertRequestHandler$2;->val$key:[B

    iput-object p3, p0, Landroid/webkitsec/ClientCertRequestHandler$2;->val$chainBytes:[[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Landroid/webkitsec/ClientCertRequestHandler$2;->this$0:Landroid/webkitsec/ClientCertRequestHandler;

    # getter for: Landroid/webkitsec/ClientCertRequestHandler;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;
    invoke-static {v0}, Landroid/webkitsec/ClientCertRequestHandler;->access$100(Landroid/webkitsec/ClientCertRequestHandler;)Landroid/webkitsec/BrowserFrame;

    move-result-object v0

    iget-object v1, p0, Landroid/webkitsec/ClientCertRequestHandler$2;->this$0:Landroid/webkitsec/ClientCertRequestHandler;

    # getter for: Landroid/webkitsec/ClientCertRequestHandler;->mHandle:I
    invoke-static {v1}, Landroid/webkitsec/ClientCertRequestHandler;->access$000(Landroid/webkitsec/ClientCertRequestHandler;)I

    move-result v1

    iget-object v2, p0, Landroid/webkitsec/ClientCertRequestHandler$2;->val$key:[B

    iget-object v3, p0, Landroid/webkitsec/ClientCertRequestHandler$2;->val$chainBytes:[[B

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkitsec/BrowserFrame;->nativeSslClientCert(I[B[[B)V

    return-void
.end method
