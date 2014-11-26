.class public abstract Lcom/android/services/telephony/common/ICallHandlerService$Stub;
.super Landroid/os/Binder;
.source "ICallHandlerService.java"

# interfaces
.implements Lcom/android/services/telephony/common/ICallHandlerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/common/ICallHandlerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .param p1    # I
    .param p2    # Landroid/os/Parcel;
    .param p3    # Landroid/os/Parcel;
    .param p4    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    :sswitch_0
    const-string v7, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v7, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/services/telephony/common/ICallCommandService;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->startCallService(Lcom/android/services/telephony/common/ICallCommandService;)V

    goto :goto_0

    :sswitch_2
    const-string v7, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/services/telephony/common/Call;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->onIncoming(Lcom/android/services/telephony/common/Call;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v7, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lcom/android/services/telephony/common/Call;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->onIncomingIconMode(Lcom/android/services/telephony/common/Call;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :sswitch_4
    const-string v7, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v7, Lcom/android/services/telephony/common/Call;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->onUpdate(Ljava/util/List;)V

    goto :goto_0

    :sswitch_5
    const-string v7, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v7, Lcom/android/services/telephony/common/Call;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->onForceUpdate(Ljava/util/List;)V

    goto :goto_0

    :sswitch_6
    const-string v7, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Lcom/android/services/telephony/common/Call;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->onDisconnect(Lcom/android/services/telephony/common/Call;)V

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :sswitch_7
    const-string v7, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3

    move v2, v6

    :cond_3
    invoke-virtual {p0, v0, v2}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->onAudioModeChange(IZ)V

    goto/16 :goto_0

    :sswitch_8
    const-string v7, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4

    move v0, v6

    :goto_4
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->onVoicePrivacyModeChange(Z)V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto :goto_4

    :sswitch_9
    const-string v7, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->onSupportedAudioModeChange(I)V

    goto/16 :goto_0

    :sswitch_a
    const-string v7, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_5

    move v0, v6

    :goto_5
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->bringToForeground(Z)V

    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto :goto_5

    :sswitch_b
    const-string v7, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_6

    move v0, v6

    :goto_6
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->bringToForegroundIgnoreState(Z)V

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto :goto_6

    :sswitch_c
    const-string v7, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->answerRingingCall()V

    goto/16 :goto_0

    :sswitch_d
    const-string v7, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->onPostDialWait(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_e
    const-string v7, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->onPostDialPause(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_f
    const-string v7, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->onPostDialPauseComplete(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_10
    const-string v7, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_7

    move v0, v6

    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v2, v4}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->onModifyCall(ZILjava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto :goto_7

    :sswitch_11
    const-string v7, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->onPhotoRingStateChange(II)V

    goto/16 :goto_0

    :sswitch_12
    const-string v7, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->onChangeInContent(I)V

    goto/16 :goto_0

    :sswitch_13
    const-string v7, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_8

    move v0, v6

    :goto_8
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->onHoldCallStateChange(Z)V

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto :goto_8

    :sswitch_14
    const-string v7, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->onEmergencyModeChange(I)V

    goto/16 :goto_0

    :sswitch_15
    const-string v7, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_9

    move v0, v6

    :goto_9
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->onWBModeChange(Z)V

    goto/16 :goto_0

    :cond_9
    move v0, v2

    goto :goto_9

    :sswitch_16
    const-string v7, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_a

    move v0, v6

    :goto_a
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->onHdVoiceStatusChange(Z)V

    goto/16 :goto_0

    :cond_a
    move v0, v2

    goto :goto_a

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
