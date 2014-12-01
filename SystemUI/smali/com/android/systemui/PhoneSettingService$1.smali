.class Lcom/android/systemui/PhoneSettingService$1;
.super Landroid/os/Handler;
.source "PhoneSettingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/PhoneSettingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/PhoneSettingService;


# direct methods
.method constructor <init>(Lcom/android/systemui/PhoneSettingService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/PhoneSettingService$1;->this$0:Lcom/android/systemui/PhoneSettingService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/PhoneSettingService$1;->this$0:Lcom/android/systemui/PhoneSettingService;

    # invokes: Lcom/android/systemui/PhoneSettingService;->startWfdPickerDialog()V
    invoke-static {v1}, Lcom/android/systemui/PhoneSettingService;->access$000(Lcom/android/systemui/PhoneSettingService;)V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/PhoneSettingService$1;->this$0:Lcom/android/systemui/PhoneSettingService;

    # invokes: Lcom/android/systemui/PhoneSettingService;->setNfcMode(Z)V
    invoke-static {v1, v0}, Lcom/android/systemui/PhoneSettingService;->access$100(Lcom/android/systemui/PhoneSettingService;Z)V

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/PhoneSettingService$1;->this$0:Lcom/android/systemui/PhoneSettingService;

    # invokes: Lcom/android/systemui/PhoneSettingService;->setSBeamMode(Z)V
    invoke-static {v1, v0}, Lcom/android/systemui/PhoneSettingService;->access$200(Lcom/android/systemui/PhoneSettingService;Z)V

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/PhoneSettingService$1;->this$0:Lcom/android/systemui/PhoneSettingService;

    # invokes: Lcom/android/systemui/PhoneSettingService;->setBluetoothMode(Z)V
    invoke-static {v1, v0}, Lcom/android/systemui/PhoneSettingService;->access$300(Lcom/android/systemui/PhoneSettingService;Z)V

    goto :goto_1

    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/PhoneSettingService$1;->this$0:Lcom/android/systemui/PhoneSettingService;

    # invokes: Lcom/android/systemui/PhoneSettingService;->setWifiMode(Z)V
    invoke-static {v1, v0}, Lcom/android/systemui/PhoneSettingService;->access$400(Lcom/android/systemui/PhoneSettingService;Z)V

    goto :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/android/systemui/PhoneSettingService$1;->this$0:Lcom/android/systemui/PhoneSettingService;

    # invokes: Lcom/android/systemui/PhoneSettingService;->setPowerSavingMode(Z)V
    invoke-static {v1, v0}, Lcom/android/systemui/PhoneSettingService;->access$500(Lcom/android/systemui/PhoneSettingService;Z)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
