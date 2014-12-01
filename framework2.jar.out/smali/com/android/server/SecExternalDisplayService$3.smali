.class Lcom/android/server/SecExternalDisplayService$3;
.super Landroid/telephony/PhoneStateListener;
.source "SecExternalDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SecExternalDisplayService;->handleSmartDockConnection(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SecExternalDisplayService;


# direct methods
.method constructor <init>(Lcom/android/server/SecExternalDisplayService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/SecExternalDisplayService$3;->this$0:Lcom/android/server/SecExternalDisplayService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService$3;->this$0:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService$3;->this$0:Lcom/android/server/SecExternalDisplayService;

    iput-boolean v2, v0, Lcom/android/server/SecExternalDisplayService;->CALL_CONNECT:Z

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService$3;->this$0:Lcom/android/server/SecExternalDisplayService;

    iget-object v1, p0, Lcom/android/server/SecExternalDisplayService$3;->this$0:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayParameter()I

    move-result v1

    # setter for: Lcom/android/server/SecExternalDisplayService;->mDockSurfaceParameter:I
    invoke-static {v0, v1}, Lcom/android/server/SecExternalDisplayService;->access$302(Lcom/android/server/SecExternalDisplayService;I)I

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService$3;->this$0:Lcom/android/server/SecExternalDisplayService;

    const-string v1, "Internal"

    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService$3;->this$0:Lcom/android/server/SecExternalDisplayService;

    # getter for: Lcom/android/server/SecExternalDisplayService;->mDockSurfaceParameter:I
    invoke-static {v2}, Lcom/android/server/SecExternalDisplayService;->access$300(Lcom/android/server/SecExternalDisplayService;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/SecExternalDisplayService$3;->this$0:Lcom/android/server/SecExternalDisplayService;

    # getter for: Lcom/android/server/SecExternalDisplayService;->mDockSurfaceParameter:I
    invoke-static {v3}, Lcom/android/server/SecExternalDisplayService;->access$300(Lcom/android/server/SecExternalDisplayService;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayDestroySurface(Ljava/lang/String;II)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService$3;->this$0:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService$3;->this$0:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService$3;->this$0:Lcom/android/server/SecExternalDisplayService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/SecExternalDisplayService;->CALL_CONNECT:Z

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService$3;->this$0:Lcom/android/server/SecExternalDisplayService;

    iget-object v1, p0, Lcom/android/server/SecExternalDisplayService$3;->this$0:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayParameter()I

    move-result v1

    # setter for: Lcom/android/server/SecExternalDisplayService;->mDockSurfaceParameter:I
    invoke-static {v0, v1}, Lcom/android/server/SecExternalDisplayService;->access$302(Lcom/android/server/SecExternalDisplayService;I)I

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService$3;->this$0:Lcom/android/server/SecExternalDisplayService;

    const-string v1, "Internal"

    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService$3;->this$0:Lcom/android/server/SecExternalDisplayService;

    # getter for: Lcom/android/server/SecExternalDisplayService;->mDockSurfaceParameter:I
    invoke-static {v2}, Lcom/android/server/SecExternalDisplayService;->access$300(Lcom/android/server/SecExternalDisplayService;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/SecExternalDisplayService$3;->this$0:Lcom/android/server/SecExternalDisplayService;

    # getter for: Lcom/android/server/SecExternalDisplayService;->mDockSurfaceParameter:I
    invoke-static {v3}, Lcom/android/server/SecExternalDisplayService;->access$300(Lcom/android/server/SecExternalDisplayService;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayCreateSurface(Ljava/lang/String;II)Z

    goto :goto_0
.end method
