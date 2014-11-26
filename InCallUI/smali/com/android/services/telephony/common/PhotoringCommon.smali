.class public Lcom/android/services/telephony/common/PhotoringCommon;
.super Ljava/lang/Object;
.source "PhotoringCommon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToPhotoringMTState(I)Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;
    .locals 1
    .param p0    # I

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;->PHOTORING_NONE:Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;->PHOTORING_CONTENT_EXIST:Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;->PHOTORING_CONTENT_DOWNLOADED:Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;->PHOTORING_MOBILE_DATA_OFF:Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
