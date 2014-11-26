.class Lcom/android/keyguard/sec/SecKeyguardClock$2;
.super Landroid/database/ContentObserver;
.source "SecKeyguardClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SecKeyguardClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardClock;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardClock;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardClock$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClock;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1    # Z

    const/16 v1, 0x12cb

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClock;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClock;->access$200(Lcom/android/keyguard/sec/SecKeyguardClock;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClock;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClock;->access$200(Lcom/android/keyguard/sec/SecKeyguardClock;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClock;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClock;->access$200(Lcom/android/keyguard/sec/SecKeyguardClock;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
