.class Lcom/android/settings/AirViewPreferenceEnabler$5;
.super Ljava/lang/Object;
.source "AirViewPreferenceEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AirViewPreferenceEnabler;->showAllOptionDisabledDialog()V
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

    iput-object p1, p0, Lcom/android/settings/AirViewPreferenceEnabler$5;->this$0:Lcom/android/settings/AirViewPreferenceEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler$5;->this$0:Lcom/android/settings/AirViewPreferenceEnabler;

    # getter for: Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/AirViewPreferenceEnabler;->access$000(Lcom/android/settings/AirViewPreferenceEnabler;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/Utils;->MASTER_AIR_VIEW_ON:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler$5;->this$0:Lcom/android/settings/AirViewPreferenceEnabler;

    const/4 v1, 0x1

    # invokes: Lcom/android/settings/AirViewPreferenceEnabler;->broadcastAirViewChanged(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/AirViewPreferenceEnabler;->access$300(Lcom/android/settings/AirViewPreferenceEnabler;Z)V

    iget-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler$5;->this$0:Lcom/android/settings/AirViewPreferenceEnabler;

    # getter for: Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/AirViewPreferenceEnabler;->access$000(Lcom/android/settings/AirViewPreferenceEnabler;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const-class v1, Lcom/android/settings/AirViewSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0910f0

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settings/AirViewPreferenceEnabler$5;->this$0:Lcom/android/settings/AirViewPreferenceEnabler;

    # getter for: Lcom/android/settings/AirViewPreferenceEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v1}, Lcom/android/settings/AirViewPreferenceEnabler;->access$400(Lcom/android/settings/AirViewPreferenceEnabler;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/AirViewPreferenceEnabler$5;->this$0:Lcom/android/settings/AirViewPreferenceEnabler;

    # getter for: Lcom/android/settings/AirViewPreferenceEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v1}, Lcom/android/settings/AirViewPreferenceEnabler;->access$400(Lcom/android/settings/AirViewPreferenceEnabler;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AirViewPreferenceEnabler$5;->this$0:Lcom/android/settings/AirViewPreferenceEnabler;

    # getter for: Lcom/android/settings/AirViewPreferenceEnabler;->mPosition:I
    invoke-static {v2}, Lcom/android/settings/AirViewPreferenceEnabler;->access$500(Lcom/android/settings/AirViewPreferenceEnabler;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto :goto_0
.end method
