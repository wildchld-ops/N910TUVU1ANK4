.class Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$1;
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

    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$1;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21

    const-string v18, "EnterpriseBillingPolicy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "packageModificationReceiver - onreceive - start - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$1;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v19

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->getPackageName(Landroid/net/Uri;)Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->access$000(Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v18, "android.intent.extra.UID"

    const/16 v19, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    const-string v18, "EnterpriseBillingPolicy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "uID is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, -0x1

    if-lez v16, :cond_0

    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v17

    :cond_0
    const-string v18, "EnterpriseBillingPolicy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Removed Packageuid is"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x64

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$1;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->access$100(Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isuIdsameasCreatorId(I)Z

    move-result v18

    if-eqz v18, :cond_3

    const-string v18, "EnterpriseBillingPolicy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "NO_MDM apk is removed"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$1;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->access$100(Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getProfiles(I)[Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_3

    const-string v18, "EnterpriseBillingPolicy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "-No_MDM removal block is executing "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    array-length v0, v13

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v13

    array-length v9, v4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v9, :cond_3

    aget-object v12, v4, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$1;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->access$100(Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v12, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileValidForACreator(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_2

    const-string v18, "EnterpriseBillingPolicy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "- ProfileName is valid for creatorId - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$1;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->access$100(Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getActiveApnForProfile(Ljava/lang/String;)Lcom/sec/enterprise/knox/billing/EnterpriseApn;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$1;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->access$100(Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getDefaultApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v18, "EnterpriseBillingPolicy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "- No_MDM removal block is executing - defaultApnType -  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", eapn = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_1

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$1;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->access$200(Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;)Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v3, v6}, Lcom/android/server/enterprise/billing/EnterpriseBillingTelephonyInterface;->updateApnType(Landroid/content/Context;Lcom/sec/enterprise/knox/billing/EnterpriseApn;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$1;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->access$100(Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->removeProfileMapping(Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$1;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->access$300(Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;)Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->disableApplicationOrContainer(Ljava/lang/String;)Z

    move-result v8

    const-string v18, "EnterpriseBillingPolicy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "- No_MDM removal block is executing - removed profile  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$1;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->access$100(Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->removeProfile(Ljava/lang/String;)I

    move-result v14

    const-string v18, "EnterpriseBillingPolicy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "- No_MDM removal block is executing - noofremovedProfiles are  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$1;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->deactivateSplitBillingIfLastTime(Ljava/lang/String;)V
    invoke-static {v0, v12}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->access$400(Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_3
    const-string v18, "EnterpriseBillingPolicy"

    const-string v19, "packageModificationReceiver - onreceive - container application "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x3

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$1;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->access$100(Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getProfileForContainer(I)Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;

    move-result-object v11

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$1;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->access$300(Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;)Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    move-result-object v18

    invoke-virtual {v11}, Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->informMappingChanged(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$1;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->access$100(Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getProfileForApplication(Ljava/lang/String;)Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;

    move-result-object v11

    const-string v18, "EnterpriseBillingPolicy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "packageModificationReceiver - onreceive - personal application - profile "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v11, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    :cond_6
    const-string v18, "EnterpriseBillingPolicy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "packageModificationReceiver - onreceive - pcakge removal update "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$1;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->access$100(Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->removeApplicationFromProfile(Ljava/lang/String;)I

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$1;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->access$300(Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;)Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    move-result-object v18

    invoke-virtual {v11}, Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->disableApplicationOrContainer(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$1;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->access$100(Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileAlreadyMapped()Z

    move-result v18

    if-nez v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$1;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    move-object/from16 v18, v0

    invoke-virtual {v11}, Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v19

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->deactivateSplitBillingIfLastTime(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->access$400(Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const-string v18, "EnterpriseBillingPolicy"

    const-string v19, "packageModificationReceiver - onreceive - might be a vpn vendor package "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$1;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->access$100(Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getBillingProfileForVpnEngine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$1;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->access$300(Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;)Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->informMappingChanged(Ljava/lang/String;)V

    goto/16 :goto_1
.end method
