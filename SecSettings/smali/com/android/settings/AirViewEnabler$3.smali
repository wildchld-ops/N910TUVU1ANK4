.class Lcom/android/settings/AirViewEnabler$3;
.super Ljava/lang/Object;
.source "AirViewEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AirViewEnabler;->makeTalkBackDisablePopup()V
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

    iput-object p1, p0, Lcom/android/settings/AirViewEnabler$3;->this$0:Lcom/android/settings/AirViewEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/AirViewEnabler$3;->this$0:Lcom/android/settings/AirViewEnabler;

    # getter for: Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/AirViewEnabler;->access$000(Lcom/android/settings/AirViewEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/AirViewEnabler$3;->this$0:Lcom/android/settings/AirViewEnabler;

    # getter for: Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/AirViewEnabler;->access$000(Lcom/android/settings/AirViewEnabler;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.feature.overlaymagnifier"

    invoke-static {v0, v1}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/AirViewEnabler$3;->this$0:Lcom/android/settings/AirViewEnabler;

    # getter for: Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/AirViewEnabler;->access$000(Lcom/android/settings/AirViewEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AirViewEnabler$3;->this$0:Lcom/android/settings/AirViewEnabler;

    # getter for: Lcom/android/settings/AirViewEnabler;->ACCESSIBILITY_MAGNIFIER:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/AirViewEnabler;->access$100(Lcom/android/settings/AirViewEnabler;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler$3;->this$0:Lcom/android/settings/AirViewEnabler;

    # getter for: Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/AirViewEnabler;->access$000(Lcom/android/settings/AirViewEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/android/settings/AirViewEnabler$3;->this$0:Lcom/android/settings/AirViewEnabler;

    # getter for: Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/AirViewEnabler;->access$000(Lcom/android/settings/AirViewEnabler;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/Utils;->MASTER_AIR_VIEW_ON:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/settings/AirViewEnabler$3;->this$0:Lcom/android/settings/AirViewEnabler;

    # getter for: Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/AirViewEnabler;->access$000(Lcom/android/settings/AirViewEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isCurrentAirviewAllItemDisabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/AirViewEnabler$3;->this$0:Lcom/android/settings/AirViewEnabler;

    # invokes: Lcom/android/settings/AirViewEnabler;->showAllOptionDisabledDialog()V
    invoke-static {v0}, Lcom/android/settings/AirViewEnabler;->access$200(Lcom/android/settings/AirViewEnabler;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler$3;->this$0:Lcom/android/settings/AirViewEnabler;

    # getter for: Lcom/android/settings/AirViewEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/AirViewEnabler;->access$300(Lcom/android/settings/AirViewEnabler;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/AirViewEnabler$3;->this$0:Lcom/android/settings/AirViewEnabler;

    # invokes: Lcom/android/settings/AirViewEnabler;->broadcastAirViewChanged(Z)V
    invoke-static {v0, v3}, Lcom/android/settings/AirViewEnabler;->access$400(Lcom/android/settings/AirViewEnabler;Z)V

    goto :goto_0
.end method
