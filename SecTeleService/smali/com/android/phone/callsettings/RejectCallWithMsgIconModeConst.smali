.class public Lcom/android/phone/callsettings/RejectCallWithMsgIconModeConst;
.super Ljava/lang/Object;
.source "RejectCallWithMsgIconModeConst.java"


# static fields
.field public static final ICONS:[I

.field public static final ICONS_TITLE:[I

.field public static final THUMB_ICONS:[I

.field public static final TILES_ICONS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-array v0, v2, [I

    aput v1, v0, v1

    sput-object v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeConst;->TILES_ICONS:[I

    new-array v0, v2, [I

    aput v1, v0, v1

    sput-object v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeConst;->THUMB_ICONS:[I

    new-array v0, v2, [I

    aput v1, v0, v1

    sput-object v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeConst;->ICONS:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeConst;->ICONS_TITLE:[I

    return-void

    :array_0
    .array-data 4
        0x7f090918
        0x7f09091a
        0x7f09091b
        0x7f09091c
        0x7f090919
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
