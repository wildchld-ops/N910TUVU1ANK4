.class Lcom/android/mms/MmsApp$4;
.super Landroid/telephony/PhoneStateListener;
.source "MmsApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/MmsApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/MmsApp;


# direct methods
.method constructor <init>(Lcom/android/mms/MmsApp;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/MmsApp$4;->this$0:Lcom/android/mms/MmsApp;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    const-string v0, "Mms/MmsApp"

    const-string v1, "PhoneStateListener default, sOnCallSlot1"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/util/TelephonyUtils;->sOnCallSlot1:Z

    const-string v0, "Mms/MmsApp"

    const-string v1, "PhoneStateListener On Call, sOnCallSlot1"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/util/TelephonyUtils;->sOnCallSlot1:Z

    const-string v0, "Mms/MmsApp"

    const-string v1, "PhoneStateListener Off Call, sOnCallSlot1"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
