.class Landroid/hardware/motion/MotionRecognitionSAR$7;
.super Ljava/lang/Object;
.source "MotionRecognitionSAR.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionSAR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private scontext:Landroid/hardware/scontext/SContext;

.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionSAR;


# direct methods
.method constructor <init>(Landroid/hardware/motion/MotionRecognitionSAR;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionSAR$7;->this$0:Landroid/hardware/motion/MotionRecognitionSAR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .locals 4

    iget-object v1, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR$7;->scontext:Landroid/hardware/scontext/SContext;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR$7;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v1}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getTestFlatMotionContext()Landroid/hardware/scontext/SContextTestFlatMotion;

    move-result-object v0

    const-string v1, "MotionRecognitionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPortraitMotionContext : event = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getTestFlatMotionContext()Landroid/hardware/scontext/SContextTestFlatMotion;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/scontext/SContextTestFlatMotion;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextTestFlatMotion;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR$7;->this$0:Landroid/hardware/motion/MotionRecognitionSAR;

    const/4 v2, 0x0

    # invokes: Landroid/hardware/motion/MotionRecognitionSAR;->setPowerState_Portait(Z)V
    invoke-static {v1, v2}, Landroid/hardware/motion/MotionRecognitionSAR;->access$1000(Landroid/hardware/motion/MotionRecognitionSAR;Z)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR$7;->this$0:Landroid/hardware/motion/MotionRecognitionSAR;

    const/4 v2, 0x1

    # invokes: Landroid/hardware/motion/MotionRecognitionSAR;->setPowerState_Portait(Z)V
    invoke-static {v1, v2}, Landroid/hardware/motion/MotionRecognitionSAR;->access$1000(Landroid/hardware/motion/MotionRecognitionSAR;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_1
    .end packed-switch
.end method
