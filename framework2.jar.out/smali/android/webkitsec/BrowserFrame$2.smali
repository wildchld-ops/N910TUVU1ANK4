.class Landroid/webkitsec/BrowserFrame$2;
.super Landroid/webkitsec/SslErrorHandler;
.source "BrowserFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/BrowserFrame;->reportSslCertError(II[BLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isCanceled:Z

.field final synthetic this$0:Landroid/webkitsec/BrowserFrame;

.field final synthetic val$certError:I

.field final synthetic val$handle:I

.field final synthetic val$sslError:Landroid/net/http/SslError;


# direct methods
.method constructor <init>(Landroid/webkitsec/BrowserFrame;Landroid/net/http/SslError;II)V
    .locals 1

    iput-object p1, p0, Landroid/webkitsec/BrowserFrame$2;->this$0:Landroid/webkitsec/BrowserFrame;

    iput-object p2, p0, Landroid/webkitsec/BrowserFrame$2;->val$sslError:Landroid/net/http/SslError;

    iput p3, p0, Landroid/webkitsec/BrowserFrame$2;->val$handle:I

    iput p4, p0, Landroid/webkitsec/BrowserFrame$2;->val$certError:I

    invoke-direct {p0}, Landroid/webkitsec/SslErrorHandler;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/BrowserFrame$2;->isCanceled:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    new-instance v0, Landroid/webkitsec/BrowserFrame$2$2;

    invoke-direct {v0, p0}, Landroid/webkitsec/BrowserFrame$2$2;-><init>(Landroid/webkitsec/BrowserFrame$2;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public proceed()V
    .locals 2

    invoke-static {}, Landroid/webkitsec/SslCertLookupTable;->getInstance()Landroid/webkitsec/SslCertLookupTable;

    move-result-object v0

    iget-object v1, p0, Landroid/webkitsec/BrowserFrame$2;->val$sslError:Landroid/net/http/SslError;

    invoke-virtual {v0, v1}, Landroid/webkitsec/SslCertLookupTable;->setIsAllowed(Landroid/net/http/SslError;)V

    new-instance v0, Landroid/webkitsec/BrowserFrame$2$1;

    invoke-direct {v0, p0}, Landroid/webkitsec/BrowserFrame$2$1;-><init>(Landroid/webkitsec/BrowserFrame$2;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
