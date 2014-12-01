.class Lcom/android/settings/smartbonding/SmartBondingEnabler$3;
.super Landroid/database/ContentObserver;
.source "SmartBondingEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/smartbonding/SmartBondingEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/smartbonding/SmartBondingEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/smartbonding/SmartBondingEnabler;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler$3;->this$0:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->isNoSIM()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler$3;->this$0:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    # getter for: Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/smartbonding/SmartBondingEnabler;->access$100(Lcom/android/settings/smartbonding/SmartBondingEnabler;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler$3;->this$0:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    # getter for: Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/smartbonding/SmartBondingEnabler;->access$000(Lcom/android/settings/smartbonding/SmartBondingEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "smart_bonding"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    goto :goto_0
.end method
