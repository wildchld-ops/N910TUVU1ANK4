.class synthetic Lcom/android/phone/PhoneGlobals$26;
.super Ljava/lang/Object;
.source "PhoneGlobals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$phone$CallMessageConstants$RequestType:[I

.field static final synthetic $SwitchMap$com$android$phone$PhoneGlobals$WakeState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/android/phone/PhoneGlobals$WakeState;->values()[Lcom/android/phone/PhoneGlobals$WakeState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/PhoneGlobals$26;->$SwitchMap$com$android$phone$PhoneGlobals$WakeState:[I

    :try_start_0
    sget-object v0, Lcom/android/phone/PhoneGlobals$26;->$SwitchMap$com$android$phone$PhoneGlobals$WakeState:[I

    sget-object v1, Lcom/android/phone/PhoneGlobals$WakeState;->PARTIAL:Lcom/android/phone/PhoneGlobals$WakeState;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals$WakeState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/phone/PhoneGlobals$26;->$SwitchMap$com$android$phone$PhoneGlobals$WakeState:[I

    sget-object v1, Lcom/android/phone/PhoneGlobals$WakeState;->FULL:Lcom/android/phone/PhoneGlobals$WakeState;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals$WakeState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v0, Lcom/android/phone/PhoneGlobals$26;->$SwitchMap$com$android$phone$PhoneGlobals$WakeState:[I

    sget-object v1, Lcom/android/phone/PhoneGlobals$WakeState;->SCREEN_BRIGHT:Lcom/android/phone/PhoneGlobals$WakeState;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals$WakeState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v0, Lcom/android/phone/PhoneGlobals$26;->$SwitchMap$com$android$phone$PhoneGlobals$WakeState:[I

    sget-object v1, Lcom/android/phone/PhoneGlobals$WakeState;->SLEEP:Lcom/android/phone/PhoneGlobals$WakeState;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals$WakeState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    invoke-static {}, Lcom/android/phone/CallMessageConstants$RequestType;->values()[Lcom/android/phone/CallMessageConstants$RequestType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/PhoneGlobals$26;->$SwitchMap$com$android$phone$CallMessageConstants$RequestType:[I

    :try_start_4
    sget-object v0, Lcom/android/phone/PhoneGlobals$26;->$SwitchMap$com$android$phone$CallMessageConstants$RequestType:[I

    sget-object v1, Lcom/android/phone/CallMessageConstants$RequestType;->DOWNLOAD_CONTENT:Lcom/android/phone/CallMessageConstants$RequestType;

    invoke-virtual {v1}, Lcom/android/phone/CallMessageConstants$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method
