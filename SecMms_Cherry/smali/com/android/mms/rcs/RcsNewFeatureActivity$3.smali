.class Lcom/android/mms/rcs/RcsNewFeatureActivity$3;
.super Ljava/lang/Object;
.source "RcsNewFeatureActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/RcsNewFeatureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/rcs/RcsNewFeatureActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/rcs/RcsNewFeatureActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity$3;->this$0:Lcom/android/mms/rcs/RcsNewFeatureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity$3;->this$0:Lcom/android/mms/rcs/RcsNewFeatureActivity;

    # getter for: Lcom/android/mms/rcs/RcsNewFeatureActivity;->mClient:Lcom/android/mms/rcs/settings/RcsSettingUtils$DuplicatedClient;
    invoke-static {v1}, Lcom/android/mms/rcs/RcsNewFeatureActivity;->access$100(Lcom/android/mms/rcs/RcsNewFeatureActivity;)Lcom/android/mms/rcs/settings/RcsSettingUtils$DuplicatedClient;

    move-result-object v1

    iget-object v1, v1, Lcom/android/mms/rcs/settings/RcsSettingUtils$DuplicatedClient;->actionForIntent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity$3;->this$0:Lcom/android/mms/rcs/RcsNewFeatureActivity;

    # getter for: Lcom/android/mms/rcs/RcsNewFeatureActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/rcs/RcsNewFeatureActivity;->access$000(Lcom/android/mms/rcs/RcsNewFeatureActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v1, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity$3;->this$0:Lcom/android/mms/rcs/RcsNewFeatureActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void
.end method
