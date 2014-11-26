.class final enum Lcom/android/phone/OutgoingCallBroadcaster$YiDialingStatus;
.super Ljava/lang/Enum;
.source "OutgoingCallBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/OutgoingCallBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "YiDialingStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/OutgoingCallBroadcaster$YiDialingStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/OutgoingCallBroadcaster$YiDialingStatus;

.field public static final enum YiDialing_Disp:Lcom/android/phone/OutgoingCallBroadcaster$YiDialingStatus;

.field public static final enum YiDialing_None:Lcom/android/phone/OutgoingCallBroadcaster$YiDialingStatus;

.field public static final enum YiDialing_Start:Lcom/android/phone/OutgoingCallBroadcaster$YiDialingStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/phone/OutgoingCallBroadcaster$YiDialingStatus;

    const-string v1, "YiDialing_None"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/OutgoingCallBroadcaster$YiDialingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/OutgoingCallBroadcaster$YiDialingStatus;->YiDialing_None:Lcom/android/phone/OutgoingCallBroadcaster$YiDialingStatus;

    new-instance v0, Lcom/android/phone/OutgoingCallBroadcaster$YiDialingStatus;

    const-string v1, "YiDialing_Start"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/OutgoingCallBroadcaster$YiDialingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/OutgoingCallBroadcaster$YiDialingStatus;->YiDialing_Start:Lcom/android/phone/OutgoingCallBroadcaster$YiDialingStatus;

    new-instance v0, Lcom/android/phone/OutgoingCallBroadcaster$YiDialingStatus;

    const-string v1, "YiDialing_Disp"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/OutgoingCallBroadcaster$YiDialingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/OutgoingCallBroadcaster$YiDialingStatus;->YiDialing_Disp:Lcom/android/phone/OutgoingCallBroadcaster$YiDialingStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/phone/OutgoingCallBroadcaster$YiDialingStatus;

    sget-object v1, Lcom/android/phone/OutgoingCallBroadcaster$YiDialingStatus;->YiDialing_None:Lcom/android/phone/OutgoingCallBroadcaster$YiDialingStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/OutgoingCallBroadcaster$YiDialingStatus;->YiDialing_Start:Lcom/android/phone/OutgoingCallBroadcaster$YiDialingStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/OutgoingCallBroadcaster$YiDialingStatus;->YiDialing_Disp:Lcom/android/phone/OutgoingCallBroadcaster$YiDialingStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/OutgoingCallBroadcaster$YiDialingStatus;->$VALUES:[Lcom/android/phone/OutgoingCallBroadcaster$YiDialingStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/OutgoingCallBroadcaster$YiDialingStatus;
    .locals 1

    const-class v0, Lcom/android/phone/OutgoingCallBroadcaster$YiDialingStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/OutgoingCallBroadcaster$YiDialingStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/OutgoingCallBroadcaster$YiDialingStatus;
    .locals 1

    sget-object v0, Lcom/android/phone/OutgoingCallBroadcaster$YiDialingStatus;->$VALUES:[Lcom/android/phone/OutgoingCallBroadcaster$YiDialingStatus;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/OutgoingCallBroadcaster$YiDialingStatus;

    return-object v0
.end method
