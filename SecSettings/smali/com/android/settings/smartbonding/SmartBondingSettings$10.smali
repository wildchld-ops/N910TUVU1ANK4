.class Lcom/android/settings/smartbonding/SmartBondingSettings$10;
.super Ljava/lang/Object;
.source "SmartBondingSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/smartbonding/SmartBondingSettings;->showNotificationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/smartbonding/SmartBondingSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$10;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$10;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    # getter for: Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$1200(Lcom/android/settings/smartbonding/SmartBondingSettings;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$10;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    # invokes: Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$1800(Lcom/android/settings/smartbonding/SmartBondingSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_bonding"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
