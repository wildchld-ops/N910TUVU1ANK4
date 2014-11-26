.class Landroid/webkitsec/ClientCertRequestHandler$1;
.super Ljava/lang/Object;
.source "ClientCertRequestHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/ClientCertRequestHandler;->setSslClientCertFromCtx(J[[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/ClientCertRequestHandler;

.field final synthetic val$chainBytes:[[B

.field final synthetic val$ctx:J


# direct methods
.method constructor <init>(Landroid/webkitsec/ClientCertRequestHandler;J[[B)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/ClientCertRequestHandler$1;->this$0:Landroid/webkitsec/ClientCertRequestHandler;

    iput-wide p2, p0, Landroid/webkitsec/ClientCertRequestHandler$1;->val$ctx:J

    iput-object p4, p0, Landroid/webkitsec/ClientCertRequestHandler$1;->val$chainBytes:[[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Landroid/webkitsec/ClientCertRequestHandler$1;->this$0:Landroid/webkitsec/ClientCertRequestHandler;

    # getter for: Landroid/webkitsec/ClientCertRequestHandler;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;
    invoke-static {v0}, Landroid/webkitsec/ClientCertRequestHandler;->access$100(Landroid/webkitsec/ClientCertRequestHandler;)Landroid/webkitsec/BrowserFrame;

    move-result-object v0

    iget-object v1, p0, Landroid/webkitsec/ClientCertRequestHandler$1;->this$0:Landroid/webkitsec/ClientCertRequestHandler;

    # getter for: Landroid/webkitsec/ClientCertRequestHandler;->mHandle:I
    invoke-static {v1}, Landroid/webkitsec/ClientCertRequestHandler;->access$000(Landroid/webkitsec/ClientCertRequestHandler;)I

    move-result v1

    iget-wide v2, p0, Landroid/webkitsec/ClientCertRequestHandler$1;->val$ctx:J

    iget-object v4, p0, Landroid/webkitsec/ClientCertRequestHandler$1;->val$chainBytes:[[B

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkitsec/BrowserFrame;->nativeSslClientCert(IJ[[B)V

    return-void
.end method
