.class Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$1;
.super Landroid/os/Handler;
.source "AdaptiveEventContainerSmall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;Landroid/os/Looper;)V
    .locals 0
    .param p2    # Landroid/os/Looper;

    iput-object p1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$1;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$1;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    # invokes: Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->handleEmergencyUpdate()V
    invoke-static {v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->access$000(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$1;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    # invokes: Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->handlePedoUpdate()V
    invoke-static {v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->access$100(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$1;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    # invokes: Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->handleWeatherUpdate()V
    invoke-static {v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->access$200(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x132e
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
