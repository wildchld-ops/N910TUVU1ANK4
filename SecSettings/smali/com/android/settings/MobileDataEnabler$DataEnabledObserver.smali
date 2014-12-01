.class Lcom/android/settings/MobileDataEnabler$DataEnabledObserver;
.super Landroid/database/ContentObserver;
.source "MobileDataEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MobileDataEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataEnabledObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MobileDataEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/MobileDataEnabler;)V
    .locals 2

    iput-object p1, p0, Lcom/android/settings/MobileDataEnabler$DataEnabledObserver;->this$0:Lcom/android/settings/MobileDataEnabler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string v0, "MobileDataEnabler"

    const-string v1, "DataEnabledObserver()"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string v1, "MobileDataEnabler"

    const-string v2, "DataEnabledObserver().onChange()"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler$DataEnabledObserver;->this$0:Lcom/android/settings/MobileDataEnabler;

    iget-object v2, p0, Lcom/android/settings/MobileDataEnabler$DataEnabledObserver;->this$0:Lcom/android/settings/MobileDataEnabler;

    # getter for: Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/MobileDataEnabler;->access$000(Lcom/android/settings/MobileDataEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/android/settings/MobileDataEnabler;->isAirPlaneMode:I
    invoke-static {v1, v2}, Lcom/android/settings/MobileDataEnabler;->access$202(Lcom/android/settings/MobileDataEnabler;I)I

    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler$DataEnabledObserver;->this$0:Lcom/android/settings/MobileDataEnabler;

    # getter for: Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/MobileDataEnabler;->access$000(Lcom/android/settings/MobileDataEnabler;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const-string v1, "gsm.sim.currentcardstatus"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "gsm.sim.currentcardstatus2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler$DataEnabledObserver;->this$0:Lcom/android/settings/MobileDataEnabler;

    # getter for: Lcom/android/settings/MobileDataEnabler;->isAirPlaneMode:I
    invoke-static {v1}, Lcom/android/settings/MobileDataEnabler;->access$200(Lcom/android/settings/MobileDataEnabler;)I

    move-result v1

    if-ne v1, v5, :cond_2

    :cond_1
    const-string v1, "MobileDataEnabler"

    const-string v2, " onChange setChecked , false"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler$DataEnabledObserver;->this$0:Lcom/android/settings/MobileDataEnabler;

    invoke-virtual {v1, v4}, Lcom/android/settings/MobileDataEnabler;->setSwitchChecked(Z)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler$DataEnabledObserver;->this$0:Lcom/android/settings/MobileDataEnabler;

    # getter for: Lcom/android/settings/MobileDataEnabler;->mHandler:Lcom/android/settings/MobileDataEnabler$SwitchHandler;
    invoke-static {v1}, Lcom/android/settings/MobileDataEnabler;->access$100(Lcom/android/settings/MobileDataEnabler;)Lcom/android/settings/MobileDataEnabler$SwitchHandler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler$DataEnabledObserver;->this$0:Lcom/android/settings/MobileDataEnabler;

    # getter for: Lcom/android/settings/MobileDataEnabler;->mHandler:Lcom/android/settings/MobileDataEnabler$SwitchHandler;
    invoke-static {v1}, Lcom/android/settings/MobileDataEnabler;->access$100(Lcom/android/settings/MobileDataEnabler;)Lcom/android/settings/MobileDataEnabler$SwitchHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
