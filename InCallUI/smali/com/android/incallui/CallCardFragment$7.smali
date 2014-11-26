.class synthetic Lcom/android/incallui/CallCardFragment$7;
.super Ljava/lang/Object;
.source "CallCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallCardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/android/services/telephony/common/Call$DisconnectCause;->values()[Lcom/android/services/telephony/common/Call$DisconnectCause;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    :try_start_0
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->BUSY:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_40

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->CONGESTION:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3f

    :goto_1
    :try_start_2
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->TIMED_OUT:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3e

    :goto_2
    :try_start_3
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->SERVER_UNREACHABLE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3d

    :goto_3
    :try_start_4
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->NUMBER_UNREACHABLE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3c

    :goto_4
    :try_start_5
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->INVALID_CREDENTIALS:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3b

    :goto_5
    :try_start_6
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->SERVER_ERROR:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3a

    :goto_6
    :try_start_7
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->OUT_OF_NETWORK:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_39

    :goto_7
    :try_start_8
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->LOST_SIGNAL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_38

    :goto_8
    :try_start_9
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_DROP:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_37

    :goto_9
    :try_start_a
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->LIMIT_EXCEEDED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_36

    :goto_a
    :try_start_b
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->POWER_OFF:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_35

    :goto_b
    :try_start_c
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->ICC_ERROR:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_34

    :goto_c
    :try_start_d
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_33

    :goto_d
    :try_start_e
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->NO_ANSWER:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_32

    :goto_e
    :try_start_f
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->INVALID_NUMBER:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_31

    :goto_f
    :try_start_10
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_30

    :goto_10
    :try_start_11
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_2f

    :goto_11
    :try_start_12
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->UNASSIGNED_NUM:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_2e

    :goto_12
    :try_start_13
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->NO_ROUTE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_2d

    :goto_13
    :try_start_14
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->CHANNEL_UNACCEPT:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_2c

    :goto_14
    :try_start_15
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->OP_DETERMINED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_2b

    :goto_15
    :try_start_16
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->NORMAL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_2a

    :goto_16
    :try_start_17
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->NO_USER_RESP:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_29

    :goto_17
    :try_start_18
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->CALL_REJECT:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_28

    :goto_18
    :try_start_19
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->NUMBER_CHANGED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_27

    :goto_19
    :try_start_1a
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->PRE_EMPTION:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_26

    :goto_1a
    :try_start_1b
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->NON_SELECTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_25

    :goto_1b
    :try_start_1c
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->DESTINATION_OUT_OF:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_24

    :goto_1c
    :try_start_1d
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->INVALID_NUM_FORMAT:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_23

    :goto_1d
    :try_start_1e
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->FACILITY_REJECT:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_22

    :goto_1e
    :try_start_1f
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->STATUS_ENQUIRY:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_21

    :goto_1f
    :try_start_20
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->NORMAL_UNSPECIFIED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :goto_20
    :try_start_21
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->NO_CIRCUIT:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_1f

    :goto_21
    :try_start_22
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->NET_OUT_OF:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_1e

    :goto_22
    :try_start_23
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->TMP_FAIL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_1d

    :goto_23
    :try_start_24
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->SWITCH_CONGESTION:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_1c

    :goto_24
    :try_start_25
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->ACCESS_DISCARD:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_1b

    :goto_25
    :try_start_26
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->NO_CHANNEL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_1a

    :goto_26
    :try_start_27
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->NO_RESOURCE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_19

    :goto_27
    :try_start_28
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->NO_QOS:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_18

    :goto_28
    :try_start_29
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->NO_SUBSCRIBED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_17

    :goto_29
    :try_start_2a
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->BARRED_IN_CUG:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_16

    :goto_2a
    :try_start_2b
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->BARRER_NOT_ALLOWED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_15

    :goto_2b
    :try_start_2c
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->NO_BEARER:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_14

    :goto_2c
    :try_start_2d
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->SERVICE_UNAVAILABLE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_13

    :goto_2d
    :try_start_2e
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->BEARER_UNINPLEMENTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_12

    :goto_2e
    :try_start_2f
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->ACM_EXCEED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_11

    :goto_2f
    :try_start_30
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->FACILITY_UNINPLEMENTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_10

    :goto_30
    :try_start_31
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->RESTRICTED_DIGITAL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_f

    :goto_31
    :try_start_32
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->SERVICE_UNINPLEMENTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_e

    :goto_32
    :try_start_33
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->INVALID_TI:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_d

    :goto_33
    :try_start_34
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->NOT_IN_CUG:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_c

    :goto_34
    :try_start_35
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->INCOMPATIBLE_DEST:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_b

    :goto_35
    :try_start_36
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->INVALID_TRANSIT_NET:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x37

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_a

    :goto_36
    :try_start_37
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->INCORRECT_MSG:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x38

    aput v2, v0, v1
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_9

    :goto_37
    :try_start_38
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->IE_ERROR:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x39

    aput v2, v0, v1
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_8

    :goto_38
    :try_start_39
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->MSG_TYPE_NON_EXIST:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x3a

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_7

    :goto_39
    :try_start_3a
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->MSG_NOT_COMP:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x3b

    aput v2, v0, v1
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_6

    :goto_3a
    :try_start_3b
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->IE_NON_EXIST:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x3c

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_5

    :goto_3b
    :try_start_3c
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->INVALID_IE_CONTENTS:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x3d

    aput v2, v0, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_4

    :goto_3c
    :try_start_3d
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->MSG_NOT_COMP_CALL_STATE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x3e

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_3

    :goto_3d
    :try_start_3e
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->RECOVERY_TIMER_EXPIRY:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x3f

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_3e} :catch_2

    :goto_3e
    :try_start_3f
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->PROTOCOL_ERROR:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x40

    aput v2, v0, v1
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_3f} :catch_1

    :goto_3f
    :try_start_40
    sget-object v0, Lcom/android/incallui/CallCardFragment$7;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->INTERWORKING:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x41

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_40} :catch_0

    :goto_40
    return-void

    :catch_0
    move-exception v0

    goto :goto_40

    :catch_1
    move-exception v0

    goto :goto_3f

    :catch_2
    move-exception v0

    goto :goto_3e

    :catch_3
    move-exception v0

    goto :goto_3d

    :catch_4
    move-exception v0

    goto :goto_3c

    :catch_5
    move-exception v0

    goto :goto_3b

    :catch_6
    move-exception v0

    goto :goto_3a

    :catch_7
    move-exception v0

    goto :goto_39

    :catch_8
    move-exception v0

    goto :goto_38

    :catch_9
    move-exception v0

    goto :goto_37

    :catch_a
    move-exception v0

    goto/16 :goto_36

    :catch_b
    move-exception v0

    goto/16 :goto_35

    :catch_c
    move-exception v0

    goto/16 :goto_34

    :catch_d
    move-exception v0

    goto/16 :goto_33

    :catch_e
    move-exception v0

    goto/16 :goto_32

    :catch_f
    move-exception v0

    goto/16 :goto_31

    :catch_10
    move-exception v0

    goto/16 :goto_30

    :catch_11
    move-exception v0

    goto/16 :goto_2f

    :catch_12
    move-exception v0

    goto/16 :goto_2e

    :catch_13
    move-exception v0

    goto/16 :goto_2d

    :catch_14
    move-exception v0

    goto/16 :goto_2c

    :catch_15
    move-exception v0

    goto/16 :goto_2b

    :catch_16
    move-exception v0

    goto/16 :goto_2a

    :catch_17
    move-exception v0

    goto/16 :goto_29

    :catch_18
    move-exception v0

    goto/16 :goto_28

    :catch_19
    move-exception v0

    goto/16 :goto_27

    :catch_1a
    move-exception v0

    goto/16 :goto_26

    :catch_1b
    move-exception v0

    goto/16 :goto_25

    :catch_1c
    move-exception v0

    goto/16 :goto_24

    :catch_1d
    move-exception v0

    goto/16 :goto_23

    :catch_1e
    move-exception v0

    goto/16 :goto_22

    :catch_1f
    move-exception v0

    goto/16 :goto_21

    :catch_20
    move-exception v0

    goto/16 :goto_20

    :catch_21
    move-exception v0

    goto/16 :goto_1f

    :catch_22
    move-exception v0

    goto/16 :goto_1e

    :catch_23
    move-exception v0

    goto/16 :goto_1d

    :catch_24
    move-exception v0

    goto/16 :goto_1c

    :catch_25
    move-exception v0

    goto/16 :goto_1b

    :catch_26
    move-exception v0

    goto/16 :goto_1a

    :catch_27
    move-exception v0

    goto/16 :goto_19

    :catch_28
    move-exception v0

    goto/16 :goto_18

    :catch_29
    move-exception v0

    goto/16 :goto_17

    :catch_2a
    move-exception v0

    goto/16 :goto_16

    :catch_2b
    move-exception v0

    goto/16 :goto_15

    :catch_2c
    move-exception v0

    goto/16 :goto_14

    :catch_2d
    move-exception v0

    goto/16 :goto_13

    :catch_2e
    move-exception v0

    goto/16 :goto_12

    :catch_2f
    move-exception v0

    goto/16 :goto_11

    :catch_30
    move-exception v0

    goto/16 :goto_10

    :catch_31
    move-exception v0

    goto/16 :goto_f

    :catch_32
    move-exception v0

    goto/16 :goto_e

    :catch_33
    move-exception v0

    goto/16 :goto_d

    :catch_34
    move-exception v0

    goto/16 :goto_c

    :catch_35
    move-exception v0

    goto/16 :goto_b

    :catch_36
    move-exception v0

    goto/16 :goto_a

    :catch_37
    move-exception v0

    goto/16 :goto_9

    :catch_38
    move-exception v0

    goto/16 :goto_8

    :catch_39
    move-exception v0

    goto/16 :goto_7

    :catch_3a
    move-exception v0

    goto/16 :goto_6

    :catch_3b
    move-exception v0

    goto/16 :goto_5

    :catch_3c
    move-exception v0

    goto/16 :goto_4

    :catch_3d
    move-exception v0

    goto/16 :goto_3

    :catch_3e
    move-exception v0

    goto/16 :goto_2

    :catch_3f
    move-exception v0

    goto/16 :goto_1

    :catch_40
    move-exception v0

    goto/16 :goto_0
.end method
