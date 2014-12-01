.class Lcom/android/mms/rcs/RcsNewFeatureActivity$1$1;
.super Ljava/lang/Object;
.source "RcsNewFeatureActivity.java"

# interfaces
.implements Lcom/android/mms/rcs/SetRcsEnabledStateTask$ISetRcsEnabledStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/rcs/RcsNewFeatureActivity$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/rcs/RcsNewFeatureActivity$1;


# direct methods
.method constructor <init>(Lcom/android/mms/rcs/RcsNewFeatureActivity$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity$1$1;->this$1:Lcom/android/mms/rcs/RcsNewFeatureActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Boolean;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mRcsState:Lcom/android/mms/rcs/RcsState;

    invoke-virtual {v1}, Lcom/android/mms/rcs/RcsState;->setStateActivated()V

    iget-object v1, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity$1$1;->this$1:Lcom/android/mms/rcs/RcsNewFeatureActivity$1;

    iget-object v1, v1, Lcom/android/mms/rcs/RcsNewFeatureActivity$1;->this$0:Lcom/android/mms/rcs/RcsNewFeatureActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity$1$1;->this$1:Lcom/android/mms/rcs/RcsNewFeatureActivity$1;

    iget-object v1, v1, Lcom/android/mms/rcs/RcsNewFeatureActivity$1;->this$0:Lcom/android/mms/rcs/RcsNewFeatureActivity;

    # getter for: Lcom/android/mms/rcs/RcsNewFeatureActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/rcs/RcsNewFeatureActivity;->access$000(Lcom/android/mms/rcs/RcsNewFeatureActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity$1$1;->this$1:Lcom/android/mms/rcs/RcsNewFeatureActivity$1;

    iget-object v1, v1, Lcom/android/mms/rcs/RcsNewFeatureActivity$1;->this$0:Lcom/android/mms/rcs/RcsNewFeatureActivity;

    # getter for: Lcom/android/mms/rcs/RcsNewFeatureActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/rcs/RcsNewFeatureActivity;->access$000(Lcom/android/mms/rcs/RcsNewFeatureActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
