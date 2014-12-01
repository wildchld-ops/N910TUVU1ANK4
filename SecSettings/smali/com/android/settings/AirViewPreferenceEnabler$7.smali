.class Lcom/android/settings/AirViewPreferenceEnabler$7;
.super Ljava/lang/Object;
.source "AirViewPreferenceEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AirViewPreferenceEnabler;->showAirViewDisableDialog()V
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

    iput-object p1, p0, Lcom/android/settings/AirViewPreferenceEnabler$7;->this$0:Lcom/android/settings/AirViewPreferenceEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler$7;->this$0:Lcom/android/settings/AirViewPreferenceEnabler;

    # getter for: Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/AirViewPreferenceEnabler;->access$000(Lcom/android/settings/AirViewPreferenceEnabler;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/Utils;->MASTER_AIR_VIEW_OFF:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler$7;->this$0:Lcom/android/settings/AirViewPreferenceEnabler;

    const/4 v1, 0x0

    # invokes: Lcom/android/settings/AirViewPreferenceEnabler;->broadcastAirViewChanged(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/AirViewPreferenceEnabler;->access$300(Lcom/android/settings/AirViewPreferenceEnabler;Z)V

    const-string v0, "AirViewPreferenceEnabler"

    const-string v1, "Air view switch is off"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
