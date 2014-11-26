.class Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;
.super Ljava/lang/Object;
.source "SecurityPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->onStateChange(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;

.field final synthetic val$oldState:I

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;

    iput p2, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;->val$oldState:I

    iput p3, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x2

    :try_start_0
    iget v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;->val$oldState:I

    if-ne v2, v5, :cond_0

    iget v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;->val$state:I

    if-nez v2, :cond_0

    const-string v2, "SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Old State locked and new state active"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;

    # getter for: Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v4}, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->access$500(Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;

    iget-object v2, v2, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;

    # getter for: Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v3}, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->access$500(Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/security/SecurityPolicy;->isRebootBannerEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;

    iget-object v2, v2, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;

    # getter for: Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v3}, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->access$500(Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/security/SecurityPolicy;->startBannerService(I)V

    :cond_0
    iget v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;->val$state:I

    if-ne v2, v5, :cond_1

    const-string v2, "SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "State locked"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;

    # getter for: Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v4}, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->access$500(Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.mdm"

    const-string v3, "com.samsung.android.mdm.DodBanner"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;

    iget-object v2, v2, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    # getter for: Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->access$200(Lcom/android/server/enterprise/security/SecurityPolicy;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;

    # getter for: Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v4}, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->access$500(Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method
