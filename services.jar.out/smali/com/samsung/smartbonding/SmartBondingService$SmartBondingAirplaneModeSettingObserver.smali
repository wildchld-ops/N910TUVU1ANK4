.class Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;
.super Landroid/database/ContentObserver;
.source "SmartBondingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/smartbonding/SmartBondingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmartBondingAirplaneModeSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/smartbonding/SmartBondingService;


# direct methods
.method constructor <init>(Lcom/samsung/smartbonding/SmartBondingService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->isAirPlaneMode()Z
    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->access$4100(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v0

    if-eqz v0, :cond_4

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SmartBondingAirplaneModeSettingObserver : turn on airplan mode."

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mCurrentUserId:I
    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->access$4200(Lcom/samsung/smartbonding/SmartBondingService;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->isKioskContainer:Z
    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->access$4300(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$4400()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SmartBondingAirplaneModeSettingObserver : user is owner / disable smart bonding"

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/smartbonding/SmartBondingService;->setSBEnabled(Z)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "SmartBondingAirplaneModeSettingObserver : turn off airplan mode."

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public register(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
