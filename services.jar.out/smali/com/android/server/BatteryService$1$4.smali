.class Lcom/android/server/BatteryService$1$4;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BatteryService$1;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/BatteryService$1$4;->this$1:Lcom/android/server/BatteryService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/BatteryService$1$4;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v14, v14, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/BatteryService$1$4;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v14, v14, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v14}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/BatteryService$1$4;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v0, v14, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v16, v0

    const-string v14, "led_indicator_charing"

    const/16 v17, 0x1

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v3, v14, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v14

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_1

    const/4 v14, 0x1

    :goto_0
    move-object/from16 v0, v16

    # setter for: Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z
    invoke-static {v0, v14}, Lcom/android/server/BatteryService;->access$1102(Lcom/android/server/BatteryService;Z)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/BatteryService$1$4;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v0, v14, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v16, v0

    const-string v14, "led_indicator_low_battery"

    const/16 v17, 0x1

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v3, v14, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v14

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_2

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, v16

    # setter for: Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z
    invoke-static {v0, v14}, Lcom/android/server/BatteryService;->access$1202(Lcom/android/server/BatteryService;Z)Z

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v14

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Led Charging Settings = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1$4;->this$1:Lcom/android/server/BatteryService$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/BatteryService;->access$1100(Lcom/android/server/BatteryService;)Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v14

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Led Low Battery Settings = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1$4;->this$1:Lcom/android/server/BatteryService$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/BatteryService;->access$1200(Lcom/android/server/BatteryService;)Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/BatteryService$1$4;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v0, v14, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v16, v0

    const-string v14, "dormant_switch_onoff"

    const/16 v17, 0x0

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v3, v14, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v14

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_3

    const/4 v14, 0x1

    :goto_2
    move-object/from16 v0, v16

    # setter for: Lcom/android/server/BatteryService;->mDormantOnOff:Z
    invoke-static {v0, v14}, Lcom/android/server/BatteryService;->access$402(Lcom/android/server/BatteryService;Z)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/BatteryService$1$4;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v0, v14, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v16, v0

    const-string v14, "dormant_disable_led_indicator"

    const/16 v17, 0x0

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v3, v14, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v14

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_4

    const/4 v14, 0x1

    :goto_3
    move-object/from16 v0, v16

    # setter for: Lcom/android/server/BatteryService;->mDormantDisableLED:Z
    invoke-static {v0, v14}, Lcom/android/server/BatteryService;->access$502(Lcom/android/server/BatteryService;Z)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/BatteryService$1$4;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v0, v14, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v16, v0

    const-string v14, "dormant_always"

    const/16 v17, 0x0

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v3, v14, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v14

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_5

    const/4 v14, 0x1

    :goto_4
    move-object/from16 v0, v16

    # setter for: Lcom/android/server/BatteryService;->mDormantAlways:Z
    invoke-static {v0, v14}, Lcom/android/server/BatteryService;->access$602(Lcom/android/server/BatteryService;Z)Z

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v14, "dormant_start_hour"

    const/4 v15, 0x0

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-static {v3, v14, v15, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    const-string v14, "dormant_start_min"

    const/4 v15, 0x0

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-static {v3, v14, v15, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    const-string v14, "dormant_end_hour"

    const/4 v15, 0x0

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-static {v3, v14, v15, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    const-string v14, "dormant_end_min"

    const/4 v15, 0x0

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-static {v3, v14, v15, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    mul-int/lit8 v14, v9, 0x3c

    add-int v12, v14, v11

    mul-int/lit8 v14, v4, 0x3c

    add-int v7, v14, v6

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Dormant OnOff Settings = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1$4;->this$1:Lcom/android/server/BatteryService$1;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/BatteryService;->mDormantOnOff:Z
    invoke-static/range {v16 .. v16}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Dormant Disable LED Settings = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1$4;->this$1:Lcom/android/server/BatteryService$1;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/BatteryService;->mDormantDisableLED:Z
    invoke-static/range {v16 .. v16}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Dormant Always Settings = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1$4;->this$1:Lcom/android/server/BatteryService$1;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/BatteryService;->mDormantAlways:Z
    invoke-static/range {v16 .. v16}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Dormant time Settings = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ~ "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/BatteryService$1$4;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v14, v14, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSetDormantAlarm:Z
    invoke-static {v14}, Lcom/android/server/BatteryService;->access$1300(Lcom/android/server/BatteryService;)Z

    move-result v14

    if-eqz v14, :cond_0

    new-instance v10, Landroid/content/Intent;

    const-string v14, "com.android.server.BatteryService.action.DORMANT_START"

    invoke-direct {v10, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/BatteryService$1$4;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v14, v14, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v14, v15, v10, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    new-instance v5, Landroid/content/Intent;

    const-string v14, "com.android.server.BatteryService.action.DORMANT_END"

    invoke-direct {v5, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/BatteryService$1$4;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v14, v14, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v14, v15, v5, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/BatteryService$1$4;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v14, v14, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v14

    const-string v15, "alarm"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v13}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-virtual {v2, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/BatteryService$1$4;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v14, v14, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    const/4 v15, 0x0

    # setter for: Lcom/android/server/BatteryService;->mSetDormantAlarm:Z
    invoke-static {v14, v15}, Lcom/android/server/BatteryService;->access$1302(Lcom/android/server/BatteryService;Z)Z

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/BatteryService$1$4;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v14, v14, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->setDormantAlarm(II)V
    invoke-static {v14, v12, v7}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;II)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/BatteryService$1$4;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v14, v14, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v14}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15

    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/BatteryService$1$4;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v14, v14, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v14}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :cond_1
    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_2
    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_3
    const/4 v14, 0x0

    goto/16 :goto_2

    :cond_4
    const/4 v14, 0x0

    goto/16 :goto_3

    :cond_5
    const/4 v14, 0x0

    goto/16 :goto_4

    :catchall_0
    move-exception v14

    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v14

    :cond_6
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v14

    const-string v15, "AlarmManager is null"

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catchall_1
    move-exception v14

    :try_start_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v14
.end method
