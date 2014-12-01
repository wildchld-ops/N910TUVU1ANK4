.class Lcom/android/settings/AirViewEnabler$7;
.super Ljava/lang/Object;
.source "AirViewEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AirViewEnabler;->showAirViewDisableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirViewEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/AirViewEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/AirViewEnabler$7;->this$0:Lcom/android/settings/AirViewEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/AirViewEnabler$7;->this$0:Lcom/android/settings/AirViewEnabler;

    # getter for: Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/AirViewEnabler;->access$000(Lcom/android/settings/AirViewEnabler;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/Utils;->MASTER_AIR_VIEW_OFF:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/settings/AirViewEnabler$7;->this$0:Lcom/android/settings/AirViewEnabler;

    const/4 v1, 0x0

    # invokes: Lcom/android/settings/AirViewEnabler;->broadcastAirViewChanged(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/AirViewEnabler;->access$400(Lcom/android/settings/AirViewEnabler;Z)V

    const-string v0, "AirViewEnabler"

    const-string v1, "Air view switch is off"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
