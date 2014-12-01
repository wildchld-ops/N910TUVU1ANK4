.class Lcom/android/settings/safetycare/SafetyCareDisaster$1;
.super Landroid/database/ContentObserver;
.source "SafetyCareDisaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/safetycare/SafetyCareDisaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/safetycare/SafetyCareDisaster;


# direct methods
.method constructor <init>(Lcom/android/settings/safetycare/SafetyCareDisaster;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/safetycare/SafetyCareDisaster$1;->this$0:Lcom/android/settings/safetycare/SafetyCareDisaster;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareDisaster$1;->this$0:Lcom/android/settings/safetycare/SafetyCareDisaster;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "safetycare_earthquake"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareDisaster$1;->this$0:Lcom/android/settings/safetycare/SafetyCareDisaster;

    # getter for: Lcom/android/settings/safetycare/SafetyCareDisaster;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/safetycare/SafetyCareDisaster;->access$000(Lcom/android/settings/safetycare/SafetyCareDisaster;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method
