.class Lcom/android/settings/powersavingmode/PowerSavingModeData$2;
.super Ljava/lang/Object;
.source "PowerSavingModeData.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/powersavingmode/PowerSavingModeData;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/powersavingmode/PowerSavingModeData;


# direct methods
.method constructor <init>(Lcom/android/settings/powersavingmode/PowerSavingModeData;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData$2;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData$2;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeData;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v1, "edit_direct"

    invoke-virtual {v2, v1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "edit_value"

    const-string v3, "apps"

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData$2;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeData;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-string v1, "com.android.settings.powersavingmode.PowerSavingDataServiceList"

    const v3, 0x7f091857

    const-string v4, ""

    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData$2;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeData;

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :cond_0
    return v6
.end method
