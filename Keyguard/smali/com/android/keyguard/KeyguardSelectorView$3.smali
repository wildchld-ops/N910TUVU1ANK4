.class Lcom/android/keyguard/KeyguardSelectorView$3;
.super Lcom/android/keyguard/KeyguardActivityLauncher;
.source "KeyguardSelectorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSelectorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSelectorView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSelectorView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSelectorView$3;->this$0:Lcom/android/keyguard/KeyguardSelectorView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSelectorView$3;->this$0:Lcom/android/keyguard/KeyguardSelectorView;

    # getter for: Lcom/android/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardSelectorView;->access$400(Lcom/android/keyguard/KeyguardSelectorView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSelectorView$3;->this$0:Lcom/android/keyguard/KeyguardSelectorView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardSelectorView;->access$900(Lcom/android/keyguard/KeyguardSelectorView;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSelectorView$3;->this$0:Lcom/android/keyguard/KeyguardSelectorView;

    # getter for: Lcom/android/keyguard/KeyguardSelectorView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardSelectorView;->access$800(Lcom/android/keyguard/KeyguardSelectorView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    return-object v0
.end method
