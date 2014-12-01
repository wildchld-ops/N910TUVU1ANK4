.class Landroid/webkitsec/HTML5Audio$1;
.super Ljava/lang/Object;
.source "HTML5Audio.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/HTML5Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/HTML5Audio;


# direct methods
.method constructor <init>(Landroid/webkitsec/HTML5Audio;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/HTML5Audio$1;->this$0:Landroid/webkitsec/HTML5Audio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/webkitsec/HTML5Audio$1;->this$0:Landroid/webkitsec/HTML5Audio;

    # invokes: Landroid/webkitsec/HTML5Audio;->pause()V
    invoke-static {v0}, Landroid/webkitsec/HTML5Audio;->access$000(Landroid/webkitsec/HTML5Audio;)V

    const-string v0, "HTML5Audio"

    const-string v1, "MRListener() - Pause by Turn Over"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
