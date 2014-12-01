.class Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$CustomTimer;
.super Ljava/util/TimerTask;
.source "PedometerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomTimer"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;


# direct methods
.method private constructor <init>(Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$CustomTimer;->this$0:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$CustomTimer;-><init>(Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$CustomTimer;->this$0:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->access$100(Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;)Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    move-result-object v0

    sget-object v1, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;->KILL:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$CustomTimer;->this$0:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;

    invoke-virtual {v0}, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->remove()V

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$CustomTimer;->this$0:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;

    sget-object v1, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;->NORMAL:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    # setter for: Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;
    invoke-static {v0, v1}, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->access$102(Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;)Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    const-string v0, "SContext.CaeProvider.PedometerImpl"

    const-string v1, "handleDiedBinder(): we waited 60000 sec, but the app doesn\'t resume."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
