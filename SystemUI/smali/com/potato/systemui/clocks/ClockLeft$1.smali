.class Lcom/potato/systemui/clocks/ClockLeft$1;
.super Landroid/content/BroadcastReceiver;
.source "ClockLeft.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/potato/systemui/clocks/ClockLeft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/potato/systemui/clocks/ClockLeft;


# direct methods
.method constructor <init>(Lcom/potato/systemui/clocks/ClockLeft;)V
    .locals 0

    iput-object p1, p0, Lcom/potato/systemui/clocks/ClockLeft$1;->this$0:Lcom/potato/systemui/clocks/ClockLeft;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.potato.clock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/potato/systemui/clocks/ClockLeft$1;->this$0:Lcom/potato/systemui/clocks/ClockLeft;

    iget-object v2, p0, Lcom/potato/systemui/clocks/ClockLeft$1;->this$0:Lcom/potato/systemui/clocks/ClockLeft;

    invoke-virtual {v2}, Lcom/potato/systemui/clocks/ClockLeft;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "clock_style"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/potato/systemui/clocks/ClockLeft;->style:I

    iget-object v1, p0, Lcom/potato/systemui/clocks/ClockLeft$1;->this$0:Lcom/potato/systemui/clocks/ClockLeft;

    invoke-virtual {v1}, Lcom/potato/systemui/clocks/ClockLeft;->CenterSetap()V

    :cond_0
    return-void
.end method
