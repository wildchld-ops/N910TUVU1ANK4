.class Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener$2;
.super Landroid/os/Handler;
.source "SmartMotionListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener$2;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener$2;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    # invokes: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->getSmartScrollSpeed()V
    invoke-static {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->access$600(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener$2;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    # invokes: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->doSmartMotionScroll()V
    invoke-static {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->access$1000(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
