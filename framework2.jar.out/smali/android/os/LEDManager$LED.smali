.class public final Landroid/os/LEDManager$LED;
.super Ljava/lang/Object;
.source "LEDManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/LEDManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LED"
.end annotation


# instance fields
.field private final mId:I

.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/os/LEDManager;


# direct methods
.method constructor <init>(Landroid/os/LEDManager;I)V
    .locals 1

    iput-object p1, p0, Landroid/os/LEDManager$LED;->this$0:Landroid/os/LEDManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/os/LEDManager$LED;->mId:I

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/LEDManager$LED;->mToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v1, p0, Landroid/os/LEDManager$LED;->mToken:Landroid/os/IBinder;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/os/LEDManager$LED;->this$0:Landroid/os/LEDManager;

    iget-object v0, v0, Landroid/os/LEDManager;->mService:Landroid/os/ILEDManager;

    iget-object v2, p0, Landroid/os/LEDManager$LED;->mToken:Landroid/os/IBinder;

    iget v3, p0, Landroid/os/LEDManager$LED;->mId:I

    invoke-interface {v0, v2, v3}, Landroid/os/ILEDManager;->turnOffLED(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setFlashing(IIII)V
    .locals 8

    iget-object v7, p0, Landroid/os/LEDManager$LED;->mToken:Landroid/os/IBinder;

    monitor-enter v7

    :try_start_0
    iget-object v0, p0, Landroid/os/LEDManager$LED;->this$0:Landroid/os/LEDManager;

    iget-object v0, v0, Landroid/os/LEDManager;->mService:Landroid/os/ILEDManager;

    iget-object v1, p0, Landroid/os/LEDManager$LED;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/os/LEDManager$LED;->mId:I

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v0 .. v6}, Landroid/os/ILEDManager;->setFlashingLED(Landroid/os/IBinder;IIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v7

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/os/LEDManager$LED;->mToken:Landroid/os/IBinder;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LED Service mId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/os/LEDManager$LED;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public turnOff()V
    .locals 4

    iget-object v1, p0, Landroid/os/LEDManager$LED;->mToken:Landroid/os/IBinder;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/os/LEDManager$LED;->this$0:Landroid/os/LEDManager;

    iget-object v0, v0, Landroid/os/LEDManager;->mService:Landroid/os/ILEDManager;

    iget-object v2, p0, Landroid/os/LEDManager$LED;->mToken:Landroid/os/IBinder;

    iget v3, p0, Landroid/os/LEDManager$LED;->mId:I

    invoke-interface {v0, v2, v3}, Landroid/os/ILEDManager;->turnOffLED(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
