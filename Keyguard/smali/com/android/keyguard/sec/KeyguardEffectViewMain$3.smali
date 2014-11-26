.class Lcom/android/keyguard/sec/KeyguardEffectViewMain$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
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

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$3;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBootCompleted()V
    .locals 2

    const-string v0, "KeyguardEffectViewMain"

    const-string v1, "onBootCompleted: mBootCompleted = true;"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$3;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    const/4 v1, 0x1

    # setter for: Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBootCompleted:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->access$602(Lcom/android/keyguard/sec/KeyguardEffectViewMain;Z)Z

    return-void
.end method
