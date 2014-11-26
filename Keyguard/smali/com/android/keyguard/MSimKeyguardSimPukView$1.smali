.class Lcom/android/keyguard/MSimKeyguardSimPukView$1;
.super Ljava/lang/Object;
.source "MSimKeyguardSimPukView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/MSimKeyguardSimPukView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/MSimKeyguardSimPukView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$1;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$1;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$1;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const-wide/16 v2, 0x2710

    invoke-interface {v1, v2, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$1;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$000(Lcom/android/keyguard/MSimKeyguardSimPukView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
