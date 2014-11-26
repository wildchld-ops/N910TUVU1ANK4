.class Lcom/android/keyguard/sec/KeyguardEffectViewMain$2;
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

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitching(I)V
    .locals 3
    .param p1    # I

    const-string v0, "KeyguardEffectViewMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** onUserSwitching - userId :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    const/4 v1, 0x1

    # setter for: Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUserSwitching:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->access$402(Lcom/android/keyguard/sec/KeyguardEffectViewMain;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    # invokes: Lcom/android/keyguard/sec/KeyguardEffectViewMain;->handleChangeWallpaperType()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->access$000(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    # invokes: Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setWallpaperFileObserver()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->access$500(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)V

    return-void
.end method
