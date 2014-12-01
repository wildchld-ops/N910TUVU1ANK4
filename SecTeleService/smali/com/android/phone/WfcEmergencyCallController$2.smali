.class Lcom/android/phone/WfcEmergencyCallController$2;
.super Landroid/database/ContentObserver;
.source "WfcEmergencyCallController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/WfcEmergencyCallController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/WfcEmergencyCallController;


# direct methods
.method constructor <init>(Lcom/android/phone/WfcEmergencyCallController;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/phone/WfcEmergencyCallController$2;->this$0:Lcom/android/phone/WfcEmergencyCallController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1    # Z

    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController$2;->this$0:Lcom/android/phone/WfcEmergencyCallController;

    # invokes: Lcom/android/phone/WfcEmergencyCallController;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/phone/WfcEmergencyCallController;->access$300(Lcom/android/phone/WfcEmergencyCallController;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getEmergencyCallModePreference(Landroid/content/ContentResolver;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$EmergencyCallModePreferenceContract$Ecmp;

    move-result-object v0

    sget-object v1, Lcom/android/phone/WfcEmergencyCallController$6;->$SwitchMap$com$samsung$tmowfc$wfcutils$WfcDbHelper$EmergencyCallModePreferenceContract$Ecmp:[I

    invoke-virtual {v0}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$EmergencyCallModePreferenceContract$Ecmp;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController$2;->this$0:Lcom/android/phone/WfcEmergencyCallController;

    # getter for: Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/WfcEmergencyCallController;->access$200(Lcom/android/phone/WfcEmergencyCallController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ECMP state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/WfcEmergencyCallController$2;->this$0:Lcom/android/phone/WfcEmergencyCallController;

    # getter for: Lcom/android/phone/WfcEmergencyCallController;->mEmergencyCallPreference:I
    invoke-static {v3}, Lcom/android/phone/WfcEmergencyCallController;->access$400(Lcom/android/phone/WfcEmergencyCallController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController$2;->this$0:Lcom/android/phone/WfcEmergencyCallController;

    const/4 v2, 0x0

    # setter for: Lcom/android/phone/WfcEmergencyCallController;->mEmergencyCallPreference:I
    invoke-static {v1, v2}, Lcom/android/phone/WfcEmergencyCallController;->access$402(Lcom/android/phone/WfcEmergencyCallController;I)I

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController$2;->this$0:Lcom/android/phone/WfcEmergencyCallController;

    const/4 v2, 0x1

    # setter for: Lcom/android/phone/WfcEmergencyCallController;->mEmergencyCallPreference:I
    invoke-static {v1, v2}, Lcom/android/phone/WfcEmergencyCallController;->access$402(Lcom/android/phone/WfcEmergencyCallController;I)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
