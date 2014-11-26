.class Lcom/android/settings/AirViewPreferenceEnabler$3;
.super Ljava/lang/Object;
.source "AirViewPreferenceEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AirViewPreferenceEnabler;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirViewPreferenceEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/AirViewPreferenceEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/AirViewPreferenceEnabler$3;->this$0:Lcom/android/settings/AirViewPreferenceEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler$3;->this$0:Lcom/android/settings/AirViewPreferenceEnabler;

    # getter for: Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/AirViewPreferenceEnabler;->access$000(Lcom/android/settings/AirViewPreferenceEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler$3;->this$0:Lcom/android/settings/AirViewPreferenceEnabler;

    # getter for: Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/AirViewPreferenceEnabler;->access$000(Lcom/android/settings/AirViewPreferenceEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler$3;->this$0:Lcom/android/settings/AirViewPreferenceEnabler;

    # getter for: Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/AirViewPreferenceEnabler;->access$000(Lcom/android/settings/AirViewPreferenceEnabler;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/Utils;->MASTER_AIR_VIEW_ON:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler$3;->this$0:Lcom/android/settings/AirViewPreferenceEnabler;

    # getter for: Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/AirViewPreferenceEnabler;->access$000(Lcom/android/settings/AirViewPreferenceEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isCurrentAirviewAllItemDisabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler$3;->this$0:Lcom/android/settings/AirViewPreferenceEnabler;

    # invokes: Lcom/android/settings/AirViewPreferenceEnabler;->showAllOptionDisabledDialog()V
    invoke-static {v0}, Lcom/android/settings/AirViewPreferenceEnabler;->access$100(Lcom/android/settings/AirViewPreferenceEnabler;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler$3;->this$0:Lcom/android/settings/AirViewPreferenceEnabler;

    # getter for: Lcom/android/settings/AirViewPreferenceEnabler;->mSwitch:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/AirViewPreferenceEnabler;->access$200(Lcom/android/settings/AirViewPreferenceEnabler;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler$3;->this$0:Lcom/android/settings/AirViewPreferenceEnabler;

    # invokes: Lcom/android/settings/AirViewPreferenceEnabler;->broadcastAirViewChanged(Z)V
    invoke-static {v0, v3}, Lcom/android/settings/AirViewPreferenceEnabler;->access$300(Lcom/android/settings/AirViewPreferenceEnabler;Z)V

    goto :goto_0
.end method
