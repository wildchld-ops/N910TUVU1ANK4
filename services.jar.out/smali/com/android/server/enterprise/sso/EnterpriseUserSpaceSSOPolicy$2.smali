.class Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$2;
.super Landroid/content/BroadcastReceiver;
.source "EnterpriseUserSpaceSSOPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$2;->this$0:Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v17, "EnterpriseUserSpaceSSOPolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "inside mBReciever onReceive : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v17, "android.intent.action.USER_REMOVED"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    const-string v17, "android.intent.extra.user_handle"

    const/16 v18, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    const-string v17, "EnterpriseUserSpaceSSOPolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ACTION_USER_REMOVED UserHandle : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->access$200()Ljava/util/Map;

    move-result-object v17

    if-eqz v17, :cond_0

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->access$200()Ljava/util/Map;

    move-result-object v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->access$200()Ljava/util/Map;

    move-result-object v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v17, "EnterpriseUserSpaceSSOPolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " after removed mSSOInterfaceMap= "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->access$200()Ljava/util/Map;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$2;->this$0:Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    # invokes: Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->removeClintEntry(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->access$800(Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$2;->this$0:Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->printArtifacts()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->access$700(Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;)V

    :cond_1
    return-void

    :cond_2
    const-string v17, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->access$500()Z

    move-result v17

    if-eqz v17, :cond_3

    const-string v17, "EnterpriseUserSpaceSSOPolicy"

    const-string v18, "ACTION_USER_SWITCHED "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v14, 0x0

    const/4 v13, -0x1

    const-string v17, "android.intent.extra.user_handle"

    const/16 v18, -0x2710

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    const-string v17, "EnterpriseUserSpaceSSOPolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ACTION_USER_SWITCHED - userHandle is : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$2;->this$0:Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->access$000(Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;)Ljava/util/ArrayList;

    move-result-object v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$2;->this$0:Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->access$000(Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "-"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "-"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    new-instance v12, Ljava/util/StringTokenizer;

    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-direct {v12, v9, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    :cond_5
    if-eqz v14, :cond_6

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const-string v17, "EnterpriseUserSpaceSSOPolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ACTION_USER_SWITCHED - uID is : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$2;->this$0:Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->access$000(Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;)Ljava/util/ArrayList;

    move-result-object v17

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$2;->this$0:Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->access$000(Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_7
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    new-instance v12, Ljava/util/StringTokenizer;

    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-direct {v12, v9, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    const-string v17, "EnterpriseUserSpaceSSOPolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ACTION_USER_SWITCHED - clientUid is : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    const-string v17, "EnterpriseUserSpaceSSOPolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ACTION_USER_SWITCHED - ContainerId is : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    const-string v17, "EnterpriseUserSpaceSSOPolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ACTION_USER_SWITCHED - sso is : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mSSOTypeMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->access$300()Ljava/util/Map;

    move-result-object v17

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mSSOTypeMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->access$300()Ljava/util/Map;

    move-result-object v17

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/enterprise/utils/SSOTypeMapData;

    invoke-virtual {v10}, Lcom/android/server/enterprise/utils/SSOTypeMapData;->getSSOInterface()Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    move-result-object v17

    if-eqz v17, :cond_8

    invoke-virtual {v10}, Lcom/android/server/enterprise/utils/SSOTypeMapData;->getContainerId()I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, v16

    if-ne v0, v1, :cond_8

    invoke-virtual {v10}, Lcom/android/server/enterprise/utils/SSOTypeMapData;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    const-string v17, "EnterpriseUserSpaceSSOPolicy"

    const-string v18, "ACTION_USER_SWITCHED - SSO Service is already bound: "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$2;->this$0:Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    # invokes: Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->bindSSOInterfaces(IILjava/lang/String;)Z
    invoke-static {v0, v13, v1, v11}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->access$900(Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;IILjava/lang/String;)Z

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$2;->this$0:Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    # invokes: Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->bindSSOInterfaces(IILjava/lang/String;)Z
    invoke-static {v0, v13, v1, v11}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->access$900(Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;IILjava/lang/String;)Z

    goto/16 :goto_1
.end method
