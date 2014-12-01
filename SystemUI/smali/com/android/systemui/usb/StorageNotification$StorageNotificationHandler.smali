.class Lcom/android/systemui/usb/StorageNotification$StorageNotificationHandler;
.super Landroid/os/Handler;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/StorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StorageNotificationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/StorageNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/StorageNotification;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification$StorageNotificationHandler;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17

    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    const-string v1, "StorageNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage -> MSG_UPDATE_STATE path = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/StorageNotification$StorageNotificationHandler;->this$0:Lcom/android/systemui/usb/StorageNotification;

    # invokes: Lcom/android/systemui/usb/StorageNotification;->isSDCard(Ljava/lang/String;)Z
    invoke-static {v1, v8}, Lcom/android/systemui/usb/StorageNotification;->access$1000(Lcom/android/systemui/usb/StorageNotification;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/StorageNotification$StorageNotificationHandler;->this$0:Lcom/android/systemui/usb/StorageNotification;

    const v2, 0x10407a2

    const v3, 0x10407a4

    const v4, 0x108007a

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    # invokes: Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V
    invoke-static/range {v1 .. v8}, Lcom/android/systemui/usb/StorageNotification;->access$1100(Lcom/android/systemui/usb/StorageNotification;IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/StorageNotification$StorageNotificationHandler;->this$0:Lcom/android/systemui/usb/StorageNotification;

    const v2, 0x10407a1

    const v3, 0x10407a3

    const v4, 0x108007a

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    # invokes: Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V
    invoke-static/range {v1 .. v8}, Lcom/android/systemui/usb/StorageNotification;->access$1100(Lcom/android/systemui/usb/StorageNotification;IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    const-string v1, "StorageNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage -> MSG_UPDATE_STATE_UNMOUNTABLE path = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/StorageNotification$StorageNotificationHandler;->this$0:Lcom/android/systemui/usb/StorageNotification;

    iget-object v1, v1, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/internal/app/ExternalMediaFormatActivity;

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "storage_volume"

    move-object/from16 v0, v16

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/StorageNotification$StorageNotificationHandler;->this$0:Lcom/android/systemui/usb/StorageNotification;

    iget-object v1, v1, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/StorageNotification$StorageNotificationHandler;->this$0:Lcom/android/systemui/usb/StorageNotification;

    move-object/from16 v0, v16

    # invokes: Lcom/android/systemui/usb/StorageNotification;->isSDCard(Ljava/lang/String;)Z
    invoke-static {v1, v0}, Lcom/android/systemui/usb/StorageNotification;->access$1000(Lcom/android/systemui/usb/StorageNotification;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/usb/StorageNotification$StorageNotificationHandler;->this$0:Lcom/android/systemui/usb/StorageNotification;

    const v10, 0x104079a

    const v11, 0x104079c

    const v12, 0x108007b

    const/4 v13, 0x1

    const/4 v14, 0x0

    # invokes: Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V
    invoke-static/range {v9 .. v16}, Lcom/android/systemui/usb/StorageNotification;->access$1100(Lcom/android/systemui/usb/StorageNotification;IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/usb/StorageNotification$StorageNotificationHandler;->this$0:Lcom/android/systemui/usb/StorageNotification;

    const v10, 0x1040799

    const v11, 0x104079b

    const v12, 0x108007b

    const/4 v13, 0x1

    const/4 v14, 0x0

    # invokes: Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V
    invoke-static/range {v9 .. v16}, Lcom/android/systemui/usb/StorageNotification;->access$1100(Lcom/android/systemui/usb/StorageNotification;IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
