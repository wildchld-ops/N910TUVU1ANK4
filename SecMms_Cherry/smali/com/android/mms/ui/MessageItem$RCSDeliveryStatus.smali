.class public final enum Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;
.super Ljava/lang/Enum;
.source "MessageItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RCSDeliveryStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;

.field public static final enum DELIVERED:Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;

.field public static final enum DISPLAYED:Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;

.field public static final enum FAIL:Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;

.field public static final enum NONE:Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;

.field public static final enum SENDING:Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;

.field public static final enum SENT:Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;

.field public static final enum TO_SEND:Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;

    new-instance v0, Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;

    const-string v1, "FAIL"

    invoke-direct {v0, v1, v4}, Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;->FAIL:Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;

    new-instance v0, Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;

    const-string v1, "SENDING"

    invoke-direct {v0, v1, v5}, Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;->SENDING:Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;

    new-instance v0, Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;

    const-string v1, "SENT"

    invoke-direct {v0, v1, v6}, Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;->SENT:Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;

    new-instance v0, Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;

    const-string v1, "DELIVERED"

    invoke-direct {v0, v1, v7}, Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;->DELIVERED:Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;

    new-instance v0, Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;

    const-string v1, "DISPLAYED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;->DISPLAYED:Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;

    new-instance v0, Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;

    const-string v1, "TO_SEND"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;->TO_SEND:Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;

    sget-object v1, Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;->FAIL:Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;->SENDING:Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;->SENT:Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;->DELIVERED:Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;->DISPLAYED:Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;->TO_SEND:Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;->$VALUES:[Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;
    .locals 1

    const-class v0, Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;
    .locals 1

    sget-object v0, Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;->$VALUES:[Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/ui/MessageItem$RCSDeliveryStatus;

    return-object v0
.end method
