.class Lcom/diotek/diodict/service/DioDictService$1;
.super Ljava/lang/Object;
.source "DioDictService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/diodict/service/DioDictService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/diodict/service/DioDictService;


# direct methods
.method constructor <init>(Lcom/diotek/diodict/service/DioDictService;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/diodict/service/DioDictService$1;->this$0:Lcom/diotek/diodict/service/DioDictService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/diotek/diodict/service/DioDictService$1;->this$0:Lcom/diotek/diodict/service/DioDictService;

    invoke-static {p2}, Lcom/diotek/diodict/service/IServiceKeyDiodict$Stub;->asInterface(Landroid/os/IBinder;)Lcom/diotek/diodict/service/IServiceKeyDiodict;

    move-result-object v1

    iput-object v1, v0, Lcom/diotek/diodict/service/DioDictService;->mService:Lcom/diotek/diodict/service/IServiceKeyDiodict;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
