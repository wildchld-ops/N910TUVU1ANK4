.class public Lcom/android/server/VRManagerService$VRConnection;
.super Ljava/lang/Object;
.source "VRManagerService.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VRManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VRConnection"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final iVRManagerService:Lcom/android/internal/app/IVRManagerService;

.field final synthetic this$0:Lcom/android/server/VRManagerService;

.field private final vrServiceConnection:Lcom/android/server/VRManagerService$VRServiceConnection;


# direct methods
.method private constructor <init>(Lcom/android/server/VRManagerService;Landroid/content/Context;Lcom/android/server/VRManagerService$VRServiceConnection;Lcom/android/internal/app/IVRManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/VRManagerService$VRConnection;->this$0:Lcom/android/server/VRManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/VRManagerService$VRConnection;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/VRManagerService$VRConnection;->vrServiceConnection:Lcom/android/server/VRManagerService$VRServiceConnection;

    iput-object p4, p0, Lcom/android/server/VRManagerService$VRConnection;->iVRManagerService:Lcom/android/internal/app/IVRManagerService;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VRManagerService;Landroid/content/Context;Lcom/android/server/VRManagerService$VRServiceConnection;Lcom/android/internal/app/IVRManagerService;Lcom/android/server/VRManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/VRManagerService$VRConnection;-><init>(Lcom/android/server/VRManagerService;Landroid/content/Context;Lcom/android/server/VRManagerService$VRServiceConnection;Lcom/android/internal/app/IVRManagerService;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/VRManagerService$VRConnection;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/VRManagerService$VRConnection;->vrServiceConnection:Lcom/android/server/VRManagerService$VRServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public getService()Lcom/android/internal/app/IVRManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VRManagerService$VRConnection;->iVRManagerService:Lcom/android/internal/app/IVRManagerService;

    return-object v0
.end method

.method public getVRServiceConnection()Lcom/android/server/VRManagerService$VRServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VRManagerService$VRConnection;->vrServiceConnection:Lcom/android/server/VRManagerService$VRServiceConnection;

    return-object v0
.end method
