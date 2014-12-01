.class Lcom/android/settings/AirViewSettings$8;
.super Ljava/lang/Object;
.source "AirViewSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AirViewSettings;->showInformationPreviewEnablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirViewSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AirViewSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/AirViewSettings$8;->this$0:Lcom/android/settings/AirViewSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/AirViewSettings$8;->this$0:Lcom/android/settings/AirViewSettings;

    # getter for: Lcom/android/settings/AirViewSettings;->mAirButtonSwitchPref:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/AirViewSettings;->access$800(Lcom/android/settings/AirViewSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
