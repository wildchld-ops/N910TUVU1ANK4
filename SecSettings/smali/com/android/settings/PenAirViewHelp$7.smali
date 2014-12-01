.class Lcom/android/settings/PenAirViewHelp$7;
.super Ljava/lang/Object;
.source "PenAirViewHelp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PenAirViewHelp;->showLinkPreviewEnableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PenAirViewHelp;


# direct methods
.method constructor <init>(Lcom/android/settings/PenAirViewHelp;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/PenAirViewHelp$7;->this$0:Lcom/android/settings/PenAirViewHelp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settings/PenAirViewHelp$7;->this$0:Lcom/android/settings/PenAirViewHelp;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering_link_preview"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/PenAirViewHelp$7;->this$0:Lcom/android/settings/PenAirViewHelp;

    # getter for: Lcom/android/settings/PenAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/PenAirViewHelp;->access$100(Lcom/android/settings/PenAirViewHelp;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method
