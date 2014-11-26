.class Lcom/android/keyguard/sec/SecKeyguardMissedEventView$1;
.super Ljava/lang/Object;
.source "SecKeyguardMissedEventView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardMissedEventView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardMissedEventView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardMissedEventView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.action.CLEAR_MISSED_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardMissedEventView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->access$000(Lcom/android/keyguard/sec/SecKeyguardMissedEventView;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardMissedEventView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->access$100(Lcom/android/keyguard/sec/SecKeyguardMissedEventView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/sec/ContextualEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/ContextualEventManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/sec/ContextualEventManager;->clearMissedEvent()V

    return-void
.end method
