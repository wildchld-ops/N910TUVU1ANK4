.class Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$2;
.super Landroid/content/BroadcastReceiver;
.source "EnterpriseBillingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$2;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string v4, "EnterpriseBillingPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "containerModificationReceiver - onreceive - start - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "android.intent.extra.user_handle"

    const/16 v5, -0x2710

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v4, 0x64

    if-lt v0, v4, :cond_1

    const-string v4, "EnterpriseBillingPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "containerModificationReceiver - onreceive - containerId - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$2;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->access$100(Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getProfileForContainer(I)Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$2;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->access$100(Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->hasMappings(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "EnterpriseBillingPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "containerModificationReceiver - onreceive - removing - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$2;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->access$100(Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->removeContainerFromProfile(I)I

    move-result v3

    const-string v4, "EnterpriseBillingPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "containerModificationReceiver - onreceive - removed - ebphelper - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v3, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$2;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->access$300(Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;)Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->disableApplicationOrContainer(Ljava/lang/String;)Z

    move-result v2

    const-string v4, "EnterpriseBillingPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "containerModificationReceiver - onreceive - removed - ebpengine- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$2;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->access$100(Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileAlreadyMapped()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$2;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->deactivateSplitBillingIfLastTime(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->access$400(Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;Ljava/lang/String;)V

    :cond_0
    const-string v4, "EnterpriseBillingPolicy"

    const-string v5, "containerModificationReceiver - onreceive - removed - "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
