.class final enum Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;
.super Ljava/lang/Enum;
.source "LppFusion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/aggregator/lpp/LppFusion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "QMsg"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

.field public static final enum QMSG_APDR_DATA_RXED:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

.field public static final enum QMSG_APDR_NOTI:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

.field public static final enum QMSG_BATCH_LOC_LIST_RXED:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

.field public static final enum QMSG_BATCH_LOC_RXED:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

.field public static final enum QMSG_LOCATION_LIST_RXED:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

.field public static final enum QMSG_LPPA_PAUSE:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

.field public static final enum QMSG_LPPA_RESUME:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

.field public static final enum QMSG_LPPA_STOP:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

.field public static final enum QMSG_PASS_LOC_BATCH_RXED:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

.field public static final enum QMSG_PASS_LOC_RXED:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

.field public static final enum QMSG_SLEEP:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    const-string v1, "QMSG_APDR_NOTI"

    const/16 v2, 0x1000

    invoke-direct {v0, v1, v4, v2}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_APDR_NOTI:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    const-string v1, "QMSG_LPPA_PAUSE"

    const/16 v2, 0x1001

    invoke-direct {v0, v1, v5, v2}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_LPPA_PAUSE:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    const-string v1, "QMSG_LPPA_RESUME"

    const/16 v2, 0x1002

    invoke-direct {v0, v1, v6, v2}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_LPPA_RESUME:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    const-string v1, "QMSG_LPPA_STOP"

    const/16 v2, 0x1003

    invoke-direct {v0, v1, v7, v2}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_LPPA_STOP:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    const-string v1, "QMSG_SLEEP"

    const/16 v2, 0x1004

    invoke-direct {v0, v1, v8, v2}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_SLEEP:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    const-string v1, "QMSG_APDR_DATA_RXED"

    const/4 v2, 0x5

    const/16 v3, 0x1005

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_APDR_DATA_RXED:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    const-string v1, "QMSG_LOCATION_LIST_RXED"

    const/4 v2, 0x6

    const/16 v3, 0x1006

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_LOCATION_LIST_RXED:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    const-string v1, "QMSG_BATCH_LOC_LIST_RXED"

    const/4 v2, 0x7

    const/16 v3, 0x1007

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_BATCH_LOC_LIST_RXED:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    const-string v1, "QMSG_BATCH_LOC_RXED"

    const/16 v2, 0x8

    const/16 v3, 0x1008

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_BATCH_LOC_RXED:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    const-string v1, "QMSG_PASS_LOC_RXED"

    const/16 v2, 0x9

    const/16 v3, 0x1009

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_PASS_LOC_RXED:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    const-string v1, "QMSG_PASS_LOC_BATCH_RXED"

    const/16 v2, 0xa

    const/16 v3, 0x100a

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_PASS_LOC_BATCH_RXED:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    const/16 v0, 0xb

    new-array v0, v0, [Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_APDR_NOTI:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    aput-object v1, v0, v4

    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_LPPA_PAUSE:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    aput-object v1, v0, v5

    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_LPPA_RESUME:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    aput-object v1, v0, v6

    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_LPPA_STOP:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    aput-object v1, v0, v7

    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_SLEEP:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_APDR_DATA_RXED:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_LOCATION_LIST_RXED:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_BATCH_LOC_LIST_RXED:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_BATCH_LOC_RXED:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_PASS_LOC_RXED:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_PASS_LOC_BATCH_RXED:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    aput-object v2, v0, v1

    sput-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;->$VALUES:[Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    return-object v0
.end method

.method public static values()[Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;
    .locals 1

    sget-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;->$VALUES:[Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    return-object v0
.end method
