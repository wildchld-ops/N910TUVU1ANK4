.class public final Landroid/webkitsec/ClientCertRequestHandler;
.super Landroid/os/Handler;
.source "ClientCertRequestHandler.java"


# instance fields
.field private final mBrowserFrame:Landroid/webkitsec/BrowserFrame;

.field private final mHandle:I

.field private final mHostAndPort:Ljava/lang/String;

.field private final mTable:Landroid/webkitsec/SslClientCertLookupTable;


# direct methods
.method constructor <init>(Landroid/webkitsec/BrowserFrame;ILjava/lang/String;Landroid/webkitsec/SslClientCertLookupTable;)V
    .locals 0
    .param p1    # Landroid/webkitsec/BrowserFrame;
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .param p4    # Landroid/webkitsec/SslClientCertLookupTable;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Landroid/webkitsec/ClientCertRequestHandler;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    iput p2, p0, Landroid/webkitsec/ClientCertRequestHandler;->mHandle:I

    iput-object p3, p0, Landroid/webkitsec/ClientCertRequestHandler;->mHostAndPort:Ljava/lang/String;

    iput-object p4, p0, Landroid/webkitsec/ClientCertRequestHandler;->mTable:Landroid/webkitsec/SslClientCertLookupTable;

    return-void
.end method

.method static synthetic access$000(Landroid/webkitsec/ClientCertRequestHandler;)I
    .locals 1
    .param p0    # Landroid/webkitsec/ClientCertRequestHandler;

    iget v0, p0, Landroid/webkitsec/ClientCertRequestHandler;->mHandle:I

    return v0
.end method

.method static synthetic access$100(Landroid/webkitsec/ClientCertRequestHandler;)Landroid/webkitsec/BrowserFrame;
    .locals 1
    .param p0    # Landroid/webkitsec/ClientCertRequestHandler;

    iget-object v0, p0, Landroid/webkitsec/ClientCertRequestHandler;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    return-object v0
.end method

.method private setSslClientCertFromCtx(J[[B)V
    .locals 1
    .param p1    # J
    .param p3    # [[B

    new-instance v0, Landroid/webkitsec/ClientCertRequestHandler$1;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/webkitsec/ClientCertRequestHandler$1;-><init>(Landroid/webkitsec/ClientCertRequestHandler;J[[B)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setSslClientCertFromPKCS8([B[[B)V
    .locals 1
    .param p1    # [B
    .param p2    # [[B

    new-instance v0, Landroid/webkitsec/ClientCertRequestHandler$2;

    invoke-direct {v0, p0, p1, p2}, Landroid/webkitsec/ClientCertRequestHandler$2;-><init>(Landroid/webkitsec/ClientCertRequestHandler;[B[[B)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public cac()V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/ClientCertRequestHandler;->mTable:Landroid/webkitsec/SslClientCertLookupTable;

    iget-object v1, p0, Landroid/webkitsec/ClientCertRequestHandler;->mHostAndPort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkitsec/SslClientCertLookupTable;->Cac(Ljava/lang/String;)V

    new-instance v0, Landroid/webkitsec/ClientCertRequestHandler$5;

    invoke-direct {v0, p0}, Landroid/webkitsec/ClientCertRequestHandler$5;-><init>(Landroid/webkitsec/ClientCertRequestHandler;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancel()V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/ClientCertRequestHandler;->mTable:Landroid/webkitsec/SslClientCertLookupTable;

    iget-object v1, p0, Landroid/webkitsec/ClientCertRequestHandler;->mHostAndPort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkitsec/SslClientCertLookupTable;->Deny(Ljava/lang/String;)V

    new-instance v0, Landroid/webkitsec/ClientCertRequestHandler$4;

    invoke-direct {v0, p0}, Landroid/webkitsec/ClientCertRequestHandler$4;-><init>(Landroid/webkitsec/ClientCertRequestHandler;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public ignore()V
    .locals 1

    new-instance v0, Landroid/webkitsec/ClientCertRequestHandler$3;

    invoke-direct {v0, p0}, Landroid/webkitsec/ClientCertRequestHandler$3;-><init>(Landroid/webkitsec/ClientCertRequestHandler;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public proceed(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p1    # Ljava/security/PrivateKey;
    .param p2    # [Ljava/security/cert/X509Certificate;

    return-void
.end method
