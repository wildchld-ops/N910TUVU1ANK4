.class public Lcom/mobeam/barcodeService/service/impl/BarcodeServiceProvider;
.super Landroid/app/Service;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/mobeam/barcodeService/service/impl/m;

.field private c:Lcom/mobeam/barcodeService/service/impl/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mobeam/barcodeService/service/impl/BarcodeServiceProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mobeam/barcodeService/service/impl/BarcodeServiceProvider;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    sget-object v0, Lcom/mobeam/barcodeService/service/impl/BarcodeServiceProvider;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/BarcodeServiceProvider;->c:Lcom/mobeam/barcodeService/service/impl/e;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    sget-object v0, Lcom/mobeam/barcodeService/service/impl/BarcodeServiceProvider;->a:Ljava/lang/String;

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/mobeam/barcodeService/service/impl/m;

    invoke-direct {v0}, Lcom/mobeam/barcodeService/service/impl/m;-><init>()V

    iput-object v0, p0, Lcom/mobeam/barcodeService/service/impl/BarcodeServiceProvider;->b:Lcom/mobeam/barcodeService/service/impl/m;

    new-instance v0, Lcom/mobeam/barcodeService/service/impl/e;

    iget-object v1, p0, Lcom/mobeam/barcodeService/service/impl/BarcodeServiceProvider;->b:Lcom/mobeam/barcodeService/service/impl/m;

    invoke-direct {v0, p0, v1}, Lcom/mobeam/barcodeService/service/impl/e;-><init>(Landroid/content/Context;Lcom/mobeam/barcodeService/service/impl/m;)V

    iput-object v0, p0, Lcom/mobeam/barcodeService/service/impl/BarcodeServiceProvider;->c:Lcom/mobeam/barcodeService/service/impl/e;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    sget-object v0, Lcom/mobeam/barcodeService/service/impl/BarcodeServiceProvider;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/BarcodeServiceProvider;->c:Lcom/mobeam/barcodeService/service/impl/e;

    invoke-virtual {v0}, Lcom/mobeam/barcodeService/service/impl/e;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobeam/barcodeService/service/impl/BarcodeServiceProvider;->c:Lcom/mobeam/barcodeService/service/impl/e;

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
