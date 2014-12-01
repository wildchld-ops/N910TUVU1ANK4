.class Lcom/android/settings/location/LocationSettingsBase$4;
.super Ljava/lang/Object;
.source "LocationSettingsBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/LocationSettingsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/LocationSettingsBase;

.field final synthetic val$cb:Landroid/widget/CheckBox;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$mode:I


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/location/LocationSettingsBase$4;->val$context:Landroid/content/Context;

    const-string v4, "dps_do_not_show_pref"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "show_again"

    iget-object v4, p0, Lcom/android/settings/location/LocationSettingsBase$4;->val$cb:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v3, p0, Lcom/android/settings/location/LocationSettingsBase$4;->this$0:Lcom/android/settings/location/LocationSettingsBase;

    iget v2, p0, Lcom/android/settings/location/LocationSettingsBase$4;->val$mode:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    const/4 v2, 0x3

    :goto_0
    invoke-virtual {v3, v2}, Lcom/android/settings/location/LocationSettingsBase;->setLocationMode(I)V

    return-void

    :cond_1
    iget v2, p0, Lcom/android/settings/location/LocationSettingsBase$4;->val$mode:I

    goto :goto_0
.end method
