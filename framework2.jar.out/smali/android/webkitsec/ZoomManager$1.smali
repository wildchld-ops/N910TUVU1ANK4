.class Landroid/webkitsec/ZoomManager$1;
.super Ljava/lang/Object;
.source "ZoomManager.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/ZoomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/ZoomManager;


# direct methods
.method constructor <init>(Landroid/webkitsec/ZoomManager;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/ZoomManager$1;->this$0:Landroid/webkitsec/ZoomManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 1
    .param p1    # Landroid/hardware/motion/MREvent;

    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/webkitsec/ZoomManager$1;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mTiltListener:Landroid/webkitsec/TiltListener;
    invoke-static {v0}, Landroid/webkitsec/ZoomManager;->access$000(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/TiltListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/ZoomManager$1;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mTiltListener:Landroid/webkitsec/TiltListener;
    invoke-static {v0}, Landroid/webkitsec/ZoomManager;->access$000(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/TiltListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkitsec/TiltListener;->onMREvent(Landroid/hardware/motion/MREvent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
    .end packed-switch
.end method
