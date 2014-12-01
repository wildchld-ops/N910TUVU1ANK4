.class Lcom/android/settings/OneHandSideSoftKeyFragment$1;
.super Landroid/database/ContentObserver;
.source "OneHandSideSoftKeyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/OneHandSideSoftKeyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/OneHandSideSoftKeyFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/OneHandSideSoftKeyFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/OneHandSideSoftKeyFragment$1;->this$0:Lcom/android/settings/OneHandSideSoftKeyFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/OneHandSideSoftKeyFragment$1;->this$0:Lcom/android/settings/OneHandSideSoftKeyFragment;

    invoke-virtual {v1}, Lcom/android/settings/OneHandSideSoftKeyFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sidesoftkey_switch"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/OneHandSideSoftKeyFragment$1;->this$0:Lcom/android/settings/OneHandSideSoftKeyFragment;

    # getter for: Lcom/android/settings/OneHandSideSoftKeyFragment;->mOneHandSideSoftKeySettings:Landroid/preference/PreferenceCategory;
    invoke-static {v1}, Lcom/android/settings/OneHandSideSoftKeyFragment;->access$000(Lcom/android/settings/OneHandSideSoftKeyFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/OneHandSideSoftKeyFragment$1;->this$0:Lcom/android/settings/OneHandSideSoftKeyFragment;

    # getter for: Lcom/android/settings/OneHandSideSoftKeyFragment;->mOneHandSideSoftKeyTransparency:Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;
    invoke-static {v1}, Lcom/android/settings/OneHandSideSoftKeyFragment;->access$100(Lcom/android/settings/OneHandSideSoftKeyFragment;)Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/OneHandSideSoftKeyFragment$1;->this$0:Lcom/android/settings/OneHandSideSoftKeyFragment;

    # getter for: Lcom/android/settings/OneHandSideSoftKeyFragment;->mOnehandSideSoftKeyMinimise:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/OneHandSideSoftKeyFragment;->access$200(Lcom/android/settings/OneHandSideSoftKeyFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/OneHandSideSoftKeyFragment$1;->this$0:Lcom/android/settings/OneHandSideSoftKeyFragment;

    # getter for: Lcom/android/settings/OneHandSideSoftKeyFragment;->mOneHandSideSoftKeyEditKeys:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/OneHandSideSoftKeyFragment;->access$300(Lcom/android/settings/OneHandSideSoftKeyFragment;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/OneHandSideSoftKeyFragment$1;->this$0:Lcom/android/settings/OneHandSideSoftKeyFragment;

    # getter for: Lcom/android/settings/OneHandSideSoftKeyFragment;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/OneHandSideSoftKeyFragment;->access$400(Lcom/android/settings/OneHandSideSoftKeyFragment;)Landroid/widget/Switch;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/OneHandSideSoftKeyFragment$1;->this$0:Lcom/android/settings/OneHandSideSoftKeyFragment;

    # getter for: Lcom/android/settings/OneHandSideSoftKeyFragment;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/OneHandSideSoftKeyFragment;->access$400(Lcom/android/settings/OneHandSideSoftKeyFragment;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/OneHandSideSoftKeyFragment$1;->this$0:Lcom/android/settings/OneHandSideSoftKeyFragment;

    # getter for: Lcom/android/settings/OneHandSideSoftKeyFragment;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/OneHandSideSoftKeyFragment;->access$400(Lcom/android/settings/OneHandSideSoftKeyFragment;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_1
    return-void
.end method
