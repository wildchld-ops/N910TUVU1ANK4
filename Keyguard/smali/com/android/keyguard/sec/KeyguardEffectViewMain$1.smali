.class Lcom/android/keyguard/sec/KeyguardEffectViewMain$1;
.super Landroid/os/Handler;
.source "KeyguardEffectViewMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardEffectViewMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardEffectViewMain;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    # invokes: Lcom/android/keyguard/sec/KeyguardEffectViewMain;->handleChangeWallpaperType()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->access$000(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    # invokes: Lcom/android/keyguard/sec/KeyguardEffectViewMain;->handleUpdateKeygaurdBackground()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->access$100(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    # invokes: Lcom/android/keyguard/sec/KeyguardEffectViewMain;->handleForceSetCircleEffect()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    # invokes: Lcom/android/keyguard/sec/KeyguardEffectViewMain;->handleChargeStateChange()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->access$300(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x12f0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
