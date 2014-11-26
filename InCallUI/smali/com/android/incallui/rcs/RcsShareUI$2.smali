.class final Lcom/android/incallui/rcs/RcsShareUI$2;
.super Ljava/lang/Object;
.source "RcsShareUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/rcs/RcsShareUI;->setupInviteCallCardButtons(Landroid/content/Context;Lcom/android/incallui/rcs/RcsInvitation;Lcom/android/services/telephony/common/Call;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$invitation:Lcom/android/incallui/rcs/RcsInvitation;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$num:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/incallui/rcs/RcsInvitation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/rcs/RcsShareUI$2;->val$name:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/incallui/rcs/RcsShareUI$2;->val$num:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/incallui/rcs/RcsShareUI$2;->val$invitation:Lcom/android/incallui/rcs/RcsInvitation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;

    # getter for: Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/rcs/RcsShareUI;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick reject share "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/rcs/RcsShareUI$2;->val$name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/rcs/RcsShareUI$2;->val$num:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/incallui/rcs/RcsShareUI;->dialogIncoming:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/rcs/RcsShareUI$2;->val$invitation:Lcom/android/incallui/rcs/RcsInvitation;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/rcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/rcs/RcsShareUI$SessionState;

    move-result-object v2

    iget v2, v2, Lcom/android/incallui/rcs/RcsShareUI$SessionState;->mType:I

    sget-object v3, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->IMAGE_SHARE:Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

    invoke-virtual {v3}, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.rcs.mediatransfer.ish.action.SHARE_CANCEL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sec.rcs.mediatransfer.ish.category.ACTION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    const-string v2, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    iget-object v3, p0, Lcom/android/incallui/rcs/RcsShareUI$2;->val$invitation:Lcom/android/incallui/rcs/RcsInvitation;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/rcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/rcs/RcsShareUI$SessionState;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/incallui/rcs/RcsShareUI$SessionState;->mId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/rcs/RcsShareUI$2;->val$invitation:Lcom/android/incallui/rcs/RcsInvitation;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/rcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/rcs/RcsShareUI$SessionState;

    move-result-object v2

    iget v2, v2, Lcom/android/incallui/rcs/RcsShareUI$SessionState;->mType:I

    sget-object v3, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->VIDEO_SHARE:Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

    invoke-virtual {v3}, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.rcs.mediatransfer.vsh.action.SHARE_CANCEL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sec.rcs.mediatransfer.vsh.category.ACTION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception v0

    # getter for: Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/rcs/RcsShareUI;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Did not find RCS service..."

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
