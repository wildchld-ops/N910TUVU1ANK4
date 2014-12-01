.class Landroid/hardware/motion/MotionRecognitionFlipCover$1;
.super Ljava/lang/Object;
.source "MotionRecognitionFlipCover.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionFlipCover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionFlipCover;


# direct methods
.method constructor <init>(Landroid/hardware/motion/MotionRecognitionFlipCover;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionFlipCover$1;->this$0:Landroid/hardware/motion/MotionRecognitionFlipCover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .locals 5

    iget-object v2, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v2}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_0

    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getFlipCoverActionContext()Landroid/hardware/scontext/SContextFlipCoverAction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/scontext/SContextFlipCoverAction;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v3, "MotionRecognitionService"

    const-string v4, "[ FLIP_COVER_ACTION_UNKNOWN ]"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const-string v3, "MotionRecognitionService"

    const-string v4, "[ FLIP_COVER_ACTION_OPEN ]"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/hardware/motion/MotionRecognitionFlipCover$1;->setInputKeys(Z)V

    goto :goto_0

    :pswitch_2
    const-string v3, "MotionRecognitionService"

    const-string v4, "[ FLIP_COVER_ACTION_CLOSE ]"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/hardware/motion/MotionRecognitionFlipCover$1;->setInputKeys(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setInputKeys(Z)V
    .locals 5

    const-string v2, "input"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v1

    :try_start_0
    const-string v2, "MotionRecognitionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setFlipCoverTouchEnabled to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroid/hardware/input/IInputManager;->setFlipCoverTouchEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "MotionRecognitionService"

    const-string v3, "error occur while input disable"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
