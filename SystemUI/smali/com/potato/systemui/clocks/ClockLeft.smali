.class public Lcom/potato/systemui/clocks/ClockLeft;
.super Lcom/potato/systemui/clocks/Clock;
.source "ClockLeft.java"


# instance fields
.field private mAttached:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field style:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/potato/systemui/clocks/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/potato/systemui/clocks/ClockLeft$1;

    invoke-direct {v0, p0}, Lcom/potato/systemui/clocks/ClockLeft$1;-><init>(Lcom/potato/systemui/clocks/ClockLeft;)V

    iput-object v0, p0, Lcom/potato/systemui/clocks/ClockLeft;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public CenterSetap()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/potato/systemui/clocks/ClockLeft;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "clock_style"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/potato/systemui/clocks/ClockLeft;->style:I

    iget v0, p0, Lcom/potato/systemui/clocks/ClockLeft;->style:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/potato/systemui/clocks/ClockLeft;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/potato/systemui/clocks/ClockLeft;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Lcom/potato/systemui/clocks/Clock;->onAttachedToWindow()V

    iget-boolean v1, p0, Lcom/potato/systemui/clocks/ClockLeft;->mAttached:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/potato/systemui/clocks/ClockLeft;->mAttached:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.potato.clock"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/potato/systemui/clocks/ClockLeft;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/potato/systemui/clocks/ClockLeft;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/potato/systemui/clocks/ClockLeft;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0}, Lcom/potato/systemui/clocks/ClockLeft;->CenterSetap()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/potato/systemui/clocks/Clock;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/potato/systemui/clocks/ClockLeft;->mAttached:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/potato/systemui/clocks/ClockLeft;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/potato/systemui/clocks/ClockLeft;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/potato/systemui/clocks/ClockLeft;->mAttached:Z

    :cond_0
    return-void
.end method
