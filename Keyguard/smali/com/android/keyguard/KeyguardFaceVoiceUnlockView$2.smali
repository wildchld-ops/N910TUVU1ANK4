.class Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$2;
.super Ljava/lang/Object;
.source "KeyguardFaceVoiceUnlockView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$2;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public displayPrepareMsg()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$2;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    # invokes: Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->displayPrepareMsg()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->access$300(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)V

    return-void
.end method

.method public displayVerifyFailMsg()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$2;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    # invokes: Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->displayVerifyFailMsg()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->access$600(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)V

    return-void
.end method

.method public displayVerifySuccessMsg()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$2;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    # invokes: Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->displayVerifySuccessMsg()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->access$700(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)V

    return-void
.end method

.method public hideVoiceLayout()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$2;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    # invokes: Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->hideVoiceLayout()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->access$800(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)V

    return-void
.end method

.method public isErrorShowed()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$2;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->isErrorShowed()Z

    move-result v0

    return v0
.end method

.method public updateVolume(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$2;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->updateVolume(I)V

    return-void
.end method
