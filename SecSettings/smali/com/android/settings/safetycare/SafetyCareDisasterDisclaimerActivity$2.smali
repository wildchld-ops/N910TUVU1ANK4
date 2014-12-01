.class Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$2;
.super Ljava/lang/Object;
.source "SafetyCareDisasterDisclaimerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$2;->this$0:Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$2;->this$0:Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "safety_care_disaster_user_agree"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$2;->this$0:Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "safetycare_earthquake"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.settings.safetycare.EARTHQUAKE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "isOptionChanged"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$2;->this$0:Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$2;->this$0:Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$2;->this$0:Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;

    # invokes: Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->prepareFinishActivity()V
    invoke-static {v1}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->access$000(Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;)V

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$2;->this$0:Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;

    invoke-virtual {v1}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->finish()V

    return-void
.end method
