.class Lcom/android/keyguard/sec/KeyguardCarrierLockView$3;
.super Ljava/lang/Object;
.source "KeyguardCarrierLockView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardCarrierLockView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardCarrierLockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardCarrierLockView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockView$3;->this$0:Lcom/android/keyguard/sec/KeyguardCarrierLockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    const-string v2, "tel"

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockView$3;->this$0:Lcom/android/keyguard/sec/KeyguardCarrierLockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardCarrierLockView;->mPhoneNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardCarrierLockView;->access$300(Lcom/android/keyguard/sec/KeyguardCarrierLockView;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.OutgoingCallBroadcaster"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockView$3;->this$0:Lcom/android/keyguard/sec/KeyguardCarrierLockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardCarrierLockView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardCarrierLockView;->access$400(Lcom/android/keyguard/sec/KeyguardCarrierLockView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
