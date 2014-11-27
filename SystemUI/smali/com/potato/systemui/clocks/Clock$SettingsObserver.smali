.class Lcom/potato/systemui/clocks/Clock$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/potato/systemui/clocks/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/potato/systemui/clocks/Clock;


# direct methods
.method constructor <init>(Lcom/potato/systemui/clocks/Clock;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/potato/systemui/clocks/Clock$SettingsObserver;->this$0:Lcom/potato/systemui/clocks/Clock;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/potato/systemui/clocks/Clock$SettingsObserver;->this$0:Lcom/potato/systemui/clocks/Clock;

    invoke-virtual {v1}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_am_pm"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "status_bar_clock"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/potato/systemui/clocks/Clock$SettingsObserver;->this$0:Lcom/potato/systemui/clocks/Clock;

    # invokes: Lcom/potato/systemui/clocks/Clock;->updateSettings()V
    invoke-static {v0}, Lcom/potato/systemui/clocks/Clock;->access$28(Lcom/potato/systemui/clocks/Clock;)V

    return-void
.end method
