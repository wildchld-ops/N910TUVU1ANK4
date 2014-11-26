.class Lcom/android/settings/dormantmode/DormantModeEnabler$2;
.super Ljava/lang/Object;
.source "DormantModeEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dormantmode/DormantModeEnabler;->showAllOptionDisabledDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dormantmode/DormantModeEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/dormantmode/DormantModeEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dormantmode/DormantModeEnabler$2;->this$0:Lcom/android/settings/dormantmode/DormantModeEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeEnabler$2;->this$0:Lcom/android/settings/dormantmode/DormantModeEnabler;

    # getter for: Lcom/android/settings/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/dormantmode/DormantModeEnabler;->access$000(Lcom/android/settings/dormantmode/DormantModeEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dormant_switch_onoff"

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeEnabler$2;->this$0:Lcom/android/settings/dormantmode/DormantModeEnabler;

    # getter for: Lcom/android/settings/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/dormantmode/DormantModeEnabler;->access$000(Lcom/android/settings/dormantmode/DormantModeEnabler;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const-class v1, Lcom/android/settings/dormantmode/DormantmodeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0915e0

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantModeEnabler$2;->this$0:Lcom/android/settings/dormantmode/DormantModeEnabler;

    # getter for: Lcom/android/settings/dormantmode/DormantModeEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v1}, Lcom/android/settings/dormantmode/DormantModeEnabler;->access$100(Lcom/android/settings/dormantmode/DormantModeEnabler;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantModeEnabler$2;->this$0:Lcom/android/settings/dormantmode/DormantModeEnabler;

    # getter for: Lcom/android/settings/dormantmode/DormantModeEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v1}, Lcom/android/settings/dormantmode/DormantModeEnabler;->access$100(Lcom/android/settings/dormantmode/DormantModeEnabler;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantModeEnabler$2;->this$0:Lcom/android/settings/dormantmode/DormantModeEnabler;

    # getter for: Lcom/android/settings/dormantmode/DormantModeEnabler;->mPosition:I
    invoke-static {v2}, Lcom/android/settings/dormantmode/DormantModeEnabler;->access$200(Lcom/android/settings/dormantmode/DormantModeEnabler;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto :goto_0
.end method
