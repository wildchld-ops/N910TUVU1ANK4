.class Lcom/android/keyguard/sec/KeyguardUnlockView$2$1;
.super Ljava/lang/Object;
.source "KeyguardUnlockView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardUnlockView$2;->setVoiceRecognitionFailCue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/sec/KeyguardUnlockView$2;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardUnlockView$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$2$1;->this$1:Lcom/android/keyguard/sec/KeyguardUnlockView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$2$1;->this$1:Lcom/android/keyguard/sec/KeyguardUnlockView$2;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockView$2;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    const/4 v1, 0x1

    # setter for: Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsVoiceUnlockFailed:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$402(Lcom/android/keyguard/sec/KeyguardUnlockView;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$2$1;->this$1:Lcom/android/keyguard/sec/KeyguardUnlockView$2;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockView$2;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    # invokes: Lcom/android/keyguard/sec/KeyguardUnlockView;->refreshDefaultHelpText()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$500(Lcom/android/keyguard/sec/KeyguardUnlockView;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$2$1;->this$1:Lcom/android/keyguard/sec/KeyguardUnlockView$2;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockView$2;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$100(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$2$1;->this$1:Lcom/android/keyguard/sec/KeyguardUnlockView$2;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockView$2;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$100(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$2$1;->this$1:Lcom/android/keyguard/sec/KeyguardUnlockView$2;

    iget-object v1, v1, Lcom/android/keyguard/sec/KeyguardUnlockView$2;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardUnlockView;->mDefaultHelpText:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$600(Lcom/android/keyguard/sec/KeyguardUnlockView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$2$1;->this$1:Lcom/android/keyguard/sec/KeyguardUnlockView$2;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockView$2;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$100(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$2$1;->this$1:Lcom/android/keyguard/sec/KeyguardUnlockView$2;

    iget-object v1, v1, Lcom/android/keyguard/sec/KeyguardUnlockView$2;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$700(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$2$1;->this$1:Lcom/android/keyguard/sec/KeyguardUnlockView$2;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockView$2;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceHelpTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$800(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
