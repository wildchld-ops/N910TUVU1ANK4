.class Lcom/android/keyguard/sec/ContextualEventManager$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "ContextualEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/ContextualEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/ContextualEventManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/ContextualEventManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/ContextualEventManager$3;->this$0:Lcom/android/keyguard/sec/ContextualEventManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageChanged(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    const-string v0, "com.android.mms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualEventManager$3;->this$0:Lcom/android/keyguard/sec/ContextualEventManager;

    const-string v1, "com.android.mms"

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/ContextualEventManager;->removeContextualEvent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
