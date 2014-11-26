.class Lcom/android/phone/BootupListener$1;
.super Ljava/util/TimerTask;
.source "BootupListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BootupListener;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BootupListener;

.field final synthetic val$activityIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/phone/BootupListener;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/BootupListener$1;->this$0:Lcom/android/phone/BootupListener;

    iput-object p2, p0, Lcom/android/phone/BootupListener$1;->val$activityIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "BootupListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TimerTask run. PROPERTY_SETUP_WIZARD = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "persist.sys.setupwizard"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "persist.sys.setupwizard"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "persist.sys.setupwizard"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "BootupListener"

    const-string v1, "Setup wizard is launched. Start FlatRateAlertActivity."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/BootupListener$1;->this$0:Lcom/android/phone/BootupListener;

    # getter for: Lcom/android/phone/BootupListener;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/BootupListener;->access$000(Lcom/android/phone/BootupListener;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BootupListener$1;->val$activityIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/BootupListener$1;->this$0:Lcom/android/phone/BootupListener;

    # getter for: Lcom/android/phone/BootupListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/BootupListener;->access$100(Lcom/android/phone/BootupListener;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/phone/BootupListener$1$1;

    invoke-direct {v1, p0}, Lcom/android/phone/BootupListener$1$1;-><init>(Lcom/android/phone/BootupListener$1;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
