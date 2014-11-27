.class Lcom/potato/systemui/clocks/Clock$1;
.super Landroid/content/BroadcastReceiver;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/potato/systemui/clocks/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/potato/systemui/clocks/Clock;


# direct methods
.method constructor <init>(Lcom/potato/systemui/clocks/Clock;)V
    .locals 0

    iput-object p1, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/16 v9, 0x64

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    invoke-virtual {v3}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "time-zone"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/potato/systemui/clocks/Clock;->access$0(Lcom/potato/systemui/clocks/Clock;Ljava/util/Calendar;)V

    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    # getter for: Lcom/potato/systemui/clocks/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;
    invoke-static {v3}, Lcom/potato/systemui/clocks/Clock;->access$1(Lcom/potato/systemui/clocks/Clock;)Ljava/text/SimpleDateFormat;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    # getter for: Lcom/potato/systemui/clocks/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;
    invoke-static {v3}, Lcom/potato/systemui/clocks/Clock;->access$1(Lcom/potato/systemui/clocks/Clock;)Ljava/text/SimpleDateFormat;

    move-result-object v3

    iget-object v4, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    # getter for: Lcom/potato/systemui/clocks/Clock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v4}, Lcom/potato/systemui/clocks/Clock;->access$2(Lcom/potato/systemui/clocks/Clock;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    invoke-virtual {v3}, Lcom/potato/systemui/clocks/Clock;->updateClock()V

    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    iget-object v4, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    invoke-virtual {v4}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "animate"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/potato/systemui/clocks/Clock;->access$16(Lcom/potato/systemui/clocks/Clock;I)V

    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    # getter for: Lcom/potato/systemui/clocks/Clock;->animate:I
    invoke-static {v3}, Lcom/potato/systemui/clocks/Clock;->access$24(Lcom/potato/systemui/clocks/Clock;)I

    move-result v3

    if-ne v3, v8, :cond_1

    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    # invokes: Lcom/potato/systemui/clocks/Clock;->animango()V
    invoke-static {v3}, Lcom/potato/systemui/clocks/Clock;->access$25(Lcom/potato/systemui/clocks/Clock;)V

    :cond_1
    return-void

    :cond_2
    const-string v3, "com.potato.clock"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    iget-object v4, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    invoke-virtual {v4}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "clock_font"

    const/4 v6, 0x5

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/potato/systemui/clocks/Clock;->access$3(Lcom/potato/systemui/clocks/Clock;I)V

    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    iget-object v4, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    invoke-virtual {v4}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "clock_color"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/potato/systemui/clocks/Clock;->access$4(Lcom/potato/systemui/clocks/Clock;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    iget-object v4, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    invoke-virtual {v4}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ampm"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/potato/systemui/clocks/Clock;->access$5(Lcom/potato/systemui/clocks/Clock;I)V

    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    iget-object v4, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    invoke-virtual {v4}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "day"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/potato/systemui/clocks/Clock;->access$6(Lcom/potato/systemui/clocks/Clock;I)V

    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    iget-object v4, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    invoke-virtual {v4}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "date_format"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/potato/systemui/clocks/Clock;->access$7(Lcom/potato/systemui/clocks/Clock;I)V

    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    const-string v4, "custom_date_format"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/potato/systemui/clocks/Clock;->access$8(Lcom/potato/systemui/clocks/Clock;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    iget-object v4, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    invoke-virtual {v4}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "date_size_custom"

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/potato/systemui/clocks/Clock;->access$9(Lcom/potato/systemui/clocks/Clock;I)V

    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    iget-object v4, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    invoke-virtual {v4}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "AMPM_size_custom"

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/potato/systemui/clocks/Clock;->access$10(Lcom/potato/systemui/clocks/Clock;I)V

    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    const-string v4, "custom_font"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/potato/systemui/clocks/Clock;->access$11(Lcom/potato/systemui/clocks/Clock;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    iget-object v4, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    invoke-virtual {v4}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ninja_clock_upper"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/potato/systemui/clocks/Clock;->access$12(Lcom/potato/systemui/clocks/Clock;I)V

    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    iget-object v4, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    invoke-virtual {v4}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "clock_styleChoosah"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/potato/systemui/clocks/Clock;->access$13(Lcom/potato/systemui/clocks/Clock;I)V

    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    iget-object v4, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    invoke-virtual {v4}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "normal_upper"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/potato/systemui/clocks/Clock;->access$14(Lcom/potato/systemui/clocks/Clock;I)V

    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    const-string v4, "custom_clock_format"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/potato/systemui/clocks/Clock;->access$15(Lcom/potato/systemui/clocks/Clock;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    iget-object v4, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    invoke-virtual {v4}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "animate"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/potato/systemui/clocks/Clock;->access$16(Lcom/potato/systemui/clocks/Clock;I)V

    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    # getter for: Lcom/potato/systemui/clocks/Clock;->clock_styleChoosah:I
    invoke-static {v3}, Lcom/potato/systemui/clocks/Clock;->access$17(Lcom/potato/systemui/clocks/Clock;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    # invokes: Lcom/potato/systemui/clocks/Clock;->runTickerRun()V
    invoke-static {v3}, Lcom/potato/systemui/clocks/Clock;->access$18(Lcom/potato/systemui/clocks/Clock;)V

    :cond_3
    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    # invokes: Lcom/potato/systemui/clocks/Clock;->date_format()Ljava/lang/String;
    invoke-static {v3}, Lcom/potato/systemui/clocks/Clock;->access$19(Lcom/potato/systemui/clocks/Clock;)Ljava/lang/String;

    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    # invokes: Lcom/potato/systemui/clocks/Clock;->setFont()V
    invoke-static {v3}, Lcom/potato/systemui/clocks/Clock;->access$20(Lcom/potato/systemui/clocks/Clock;)V

    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    # invokes: Lcom/potato/systemui/clocks/Clock;->setColor()V
    invoke-static {v3}, Lcom/potato/systemui/clocks/Clock;->access$21(Lcom/potato/systemui/clocks/Clock;)V

    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    # invokes: Lcom/potato/systemui/clocks/Clock;->setAMPM()V
    invoke-static {v3}, Lcom/potato/systemui/clocks/Clock;->access$22(Lcom/potato/systemui/clocks/Clock;)V

    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    # invokes: Lcom/potato/systemui/clocks/Clock;->setDay()V
    invoke-static {v3}, Lcom/potato/systemui/clocks/Clock;->access$23(Lcom/potato/systemui/clocks/Clock;)V

    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    invoke-virtual {v3}, Lcom/potato/systemui/clocks/Clock;->updateClock()V

    goto/16 :goto_0
.end method
