.class Lcom/android/settings/AirCmdPreferenceEnabler$2;
.super Ljava/lang/Object;
.source "AirCmdPreferenceEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AirCmdPreferenceEnabler;->showAirCommandEnabledPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirCmdPreferenceEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/AirCmdPreferenceEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/AirCmdPreferenceEnabler$2;->this$0:Lcom/android/settings/AirCmdPreferenceEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/settings/AirCmdPreferenceEnabler$2;->this$0:Lcom/android/settings/AirCmdPreferenceEnabler;

    # getter for: Lcom/android/settings/AirCmdPreferenceEnabler;->mSwitch:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/AirCmdPreferenceEnabler;->access$000(Lcom/android/settings/AirCmdPreferenceEnabler;)Landroid/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
