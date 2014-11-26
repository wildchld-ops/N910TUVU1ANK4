.class Lcom/android/keyguard/sec/KeyguardEffectViewCircle$3;
.super Ljava/lang/Object;
.source "KeyguardEffectViewCircle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->showUnlockAffordance(JLandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardEffectViewCircle;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle$3;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle$3;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    # invokes: Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->playUnlockAffordance()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->access$1000(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle$3;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isPlayAffordance:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->access$1102(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle$3;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->affordanceRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->access$1202(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
