.class Lcom/android/mms/cover/MissedMsgActivity$1;
.super Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
.source "MissedMsgActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/cover/MissedMsgActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/cover/MissedMsgActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/cover/MissedMsgActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/cover/MissedMsgActivity$1;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V
    .locals 8
    .param p1    # Lcom/samsung/android/sdk/cover/ScoverState;

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/android/mms/cover/MissedMsgActivity$1;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    iput-object p1, v5, Lcom/android/mms/cover/MissedMsgActivity;->mScoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    iget-object v5, p0, Lcom/android/mms/cover/MissedMsgActivity$1;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    iget-object v5, v5, Lcom/android/mms/cover/MissedMsgActivity;->mScoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v5

    if-ne v5, v7, :cond_4

    const-string v5, "Mms/MissedMsgActivity"

    const-string v6, "Cover open!!!!"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    # getter for: Lcom/android/mms/cover/MissedMsgActivity;->sEnablePreview:Z
    invoke-static {}, Lcom/android/mms/cover/MissedMsgActivity;->access$000()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/cover/MissedMsgActivity$1;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    # getter for: Lcom/android/mms/cover/MissedMsgActivity;->mIsEnterConvList:Z
    invoke-static {v5}, Lcom/android/mms/cover/MissedMsgActivity;->access$100(Lcom/android/mms/cover/MissedMsgActivity;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/cover/MissedMsgActivity$1;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    # getter for: Lcom/android/mms/cover/MissedMsgActivity;->mShowMsgPreview:Z
    invoke-static {v5}, Lcom/android/mms/cover/MissedMsgActivity;->access$200(Lcom/android/mms/cover/MissedMsgActivity;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_0
    const-wide/16 v0, 0x0

    # getter for: Lcom/android/mms/cover/MissedMsgActivity;->sEnablePreview:Z
    invoke-static {}, Lcom/android/mms/cover/MissedMsgActivity;->access$000()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/mms/cover/MissedMsgActivity$1;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    # getter for: Lcom/android/mms/cover/MissedMsgActivity;->mShowMsgPreview:Z
    invoke-static {v5}, Lcom/android/mms/cover/MissedMsgActivity;->access$200(Lcom/android/mms/cover/MissedMsgActivity;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_1
    iget-object v5, p0, Lcom/android/mms/cover/MissedMsgActivity$1;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    # getter for: Lcom/android/mms/cover/MissedMsgActivity;->mThreadId:J
    invoke-static {v5}, Lcom/android/mms/cover/MissedMsgActivity;->access$300(Lcom/android/mms/cover/MissedMsgActivity;)J

    move-result-wide v0

    :goto_0
    iget-object v5, p0, Lcom/android/mms/cover/MissedMsgActivity$1;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    # getter for: Lcom/android/mms/cover/MissedMsgActivity;->isCmas:Z
    invoke-static {v5}, Lcom/android/mms/cover/MissedMsgActivity;->access$500(Lcom/android/mms/cover/MissedMsgActivity;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v4, ""

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_6

    iget-object v5, p0, Lcom/android/mms/cover/MissedMsgActivity$1;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    # getter for: Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/mms/cover/MissedMsgActivity;->access$600(Lcom/android/mms/cover/MissedMsgActivity;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c01d3

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasPresidentialThreaded()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/mms/cover/MissedMsgActivity$1;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    # getter for: Lcom/android/mms/cover/MissedMsgActivity;->mCmasType:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/mms/cover/MissedMsgActivity;->access$700(Lcom/android/mms/cover/MissedMsgActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/mms/cover/MissedMsgActivity$1;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    # getter for: Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/mms/cover/MissedMsgActivity;->access$600(Lcom/android/mms/cover/MissedMsgActivity;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0, v1}, Lcom/android/mms/ui/CMASViewer;->createIntentForNoti(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v3

    :goto_2
    # setter for: Lcom/android/mms/cover/MissedMsgActivity;->mIsFinishing:Z
    invoke-static {v7}, Lcom/android/mms/cover/MissedMsgActivity;->access$802(Z)Z

    const/4 v2, 0x0

    const-string v5, "VZW"

    const-string v6, "TMO"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "com.verizon.messaging.vzmsgs"

    iget-object v6, p0, Lcom/android/mms/cover/MissedMsgActivity$1;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    # getter for: Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/mms/cover/MissedMsgActivity;->access$600(Lcom/android/mms/cover/MissedMsgActivity;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/util/TelephonyPermission;->getDefaultSmsApp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-nez v2, :cond_3

    const-string v5, "fromScover"

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/mms/cover/MissedMsgActivity$1;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    invoke-virtual {v5, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_3
    iget-object v5, p0, Lcom/android/mms/cover/MissedMsgActivity$1;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    :cond_4
    return-void

    :cond_5
    iget-object v5, p0, Lcom/android/mms/cover/MissedMsgActivity$1;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    # getter for: Lcom/android/mms/cover/MissedMsgActivity;->mLaunchThreadId:J
    invoke-static {v5}, Lcom/android/mms/cover/MissedMsgActivity;->access$400(Lcom/android/mms/cover/MissedMsgActivity;)J

    move-result-wide v0

    goto :goto_0

    :cond_6
    iget-object v5, p0, Lcom/android/mms/cover/MissedMsgActivity$1;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    # getter for: Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/mms/cover/MissedMsgActivity;->access$600(Lcom/android/mms/cover/MissedMsgActivity;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c01f7

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_7
    iget-object v5, p0, Lcom/android/mms/cover/MissedMsgActivity$1;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    # getter for: Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/mms/cover/MissedMsgActivity;->access$600(Lcom/android/mms/cover/MissedMsgActivity;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v3

    goto :goto_2

    :cond_8
    iget-object v5, p0, Lcom/android/mms/cover/MissedMsgActivity$1;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    # getter for: Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/mms/cover/MissedMsgActivity;->access$600(Lcom/android/mms/cover/MissedMsgActivity;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v3

    goto :goto_2

    :cond_9
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/mms/cover/MissedMsgActivity$1;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    # getter for: Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/mms/cover/MissedMsgActivity;->access$600(Lcom/android/mms/cover/MissedMsgActivity;)Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method
