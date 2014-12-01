.class public final enum Lcom/android/mms/transaction/StatisticsBuilder$Field;
.super Ljava/lang/Enum;
.source "StatisticsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/StatisticsBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Field"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mms/transaction/StatisticsBuilder$Field;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mms/transaction/StatisticsBuilder$Field;

.field public static final enum AC:Lcom/android/mms/transaction/StatisticsBuilder$Field;

.field public static final enum BEARER:Lcom/android/mms/transaction/StatisticsBuilder$Field;

.field public static final enum BYTES_IN:Lcom/android/mms/transaction/StatisticsBuilder$Field;

.field public static final enum BYTES_OUT:Lcom/android/mms/transaction/StatisticsBuilder$Field;

.field public static final enum DIR:Lcom/android/mms/transaction/StatisticsBuilder$Field;

.field public static final enum MSG:Lcom/android/mms/transaction/StatisticsBuilder$Field;

.field public static final enum OK:Lcom/android/mms/transaction/StatisticsBuilder$Field;

.field public static final enum PM:Lcom/android/mms/transaction/StatisticsBuilder$Field;

.field public static final enum RSSI:Lcom/android/mms/transaction/StatisticsBuilder$Field;

.field public static final enum SVC:Lcom/android/mms/transaction/StatisticsBuilder$Field;

.field public static final enum TS:Lcom/android/mms/transaction/StatisticsBuilder$Field;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/mms/transaction/StatisticsBuilder$Field;

    const-string v1, "SVC"

    invoke-direct {v0, v1, v3}, Lcom/android/mms/transaction/StatisticsBuilder$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/StatisticsBuilder$Field;->SVC:Lcom/android/mms/transaction/StatisticsBuilder$Field;

    new-instance v0, Lcom/android/mms/transaction/StatisticsBuilder$Field;

    const-string v1, "AC"

    invoke-direct {v0, v1, v4}, Lcom/android/mms/transaction/StatisticsBuilder$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/StatisticsBuilder$Field;->AC:Lcom/android/mms/transaction/StatisticsBuilder$Field;

    new-instance v0, Lcom/android/mms/transaction/StatisticsBuilder$Field;

    const-string v1, "MSG"

    invoke-direct {v0, v1, v5}, Lcom/android/mms/transaction/StatisticsBuilder$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/StatisticsBuilder$Field;->MSG:Lcom/android/mms/transaction/StatisticsBuilder$Field;

    new-instance v0, Lcom/android/mms/transaction/StatisticsBuilder$Field;

    const-string v1, "PM"

    invoke-direct {v0, v1, v6}, Lcom/android/mms/transaction/StatisticsBuilder$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/StatisticsBuilder$Field;->PM:Lcom/android/mms/transaction/StatisticsBuilder$Field;

    new-instance v0, Lcom/android/mms/transaction/StatisticsBuilder$Field;

    const-string v1, "RSSI"

    invoke-direct {v0, v1, v7}, Lcom/android/mms/transaction/StatisticsBuilder$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/StatisticsBuilder$Field;->RSSI:Lcom/android/mms/transaction/StatisticsBuilder$Field;

    new-instance v0, Lcom/android/mms/transaction/StatisticsBuilder$Field;

    const-string v1, "TS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/StatisticsBuilder$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/StatisticsBuilder$Field;->TS:Lcom/android/mms/transaction/StatisticsBuilder$Field;

    new-instance v0, Lcom/android/mms/transaction/StatisticsBuilder$Field;

    const-string v1, "DIR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/StatisticsBuilder$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/StatisticsBuilder$Field;->DIR:Lcom/android/mms/transaction/StatisticsBuilder$Field;

    new-instance v0, Lcom/android/mms/transaction/StatisticsBuilder$Field;

    const-string v1, "OK"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/StatisticsBuilder$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/StatisticsBuilder$Field;->OK:Lcom/android/mms/transaction/StatisticsBuilder$Field;

    new-instance v0, Lcom/android/mms/transaction/StatisticsBuilder$Field;

    const-string v1, "BYTES_IN"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/StatisticsBuilder$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/StatisticsBuilder$Field;->BYTES_IN:Lcom/android/mms/transaction/StatisticsBuilder$Field;

    new-instance v0, Lcom/android/mms/transaction/StatisticsBuilder$Field;

    const-string v1, "BYTES_OUT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/StatisticsBuilder$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/StatisticsBuilder$Field;->BYTES_OUT:Lcom/android/mms/transaction/StatisticsBuilder$Field;

    new-instance v0, Lcom/android/mms/transaction/StatisticsBuilder$Field;

    const-string v1, "BEARER"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/StatisticsBuilder$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/StatisticsBuilder$Field;->BEARER:Lcom/android/mms/transaction/StatisticsBuilder$Field;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/android/mms/transaction/StatisticsBuilder$Field;

    sget-object v1, Lcom/android/mms/transaction/StatisticsBuilder$Field;->SVC:Lcom/android/mms/transaction/StatisticsBuilder$Field;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mms/transaction/StatisticsBuilder$Field;->AC:Lcom/android/mms/transaction/StatisticsBuilder$Field;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/mms/transaction/StatisticsBuilder$Field;->MSG:Lcom/android/mms/transaction/StatisticsBuilder$Field;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/mms/transaction/StatisticsBuilder$Field;->PM:Lcom/android/mms/transaction/StatisticsBuilder$Field;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/mms/transaction/StatisticsBuilder$Field;->RSSI:Lcom/android/mms/transaction/StatisticsBuilder$Field;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/mms/transaction/StatisticsBuilder$Field;->TS:Lcom/android/mms/transaction/StatisticsBuilder$Field;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/mms/transaction/StatisticsBuilder$Field;->DIR:Lcom/android/mms/transaction/StatisticsBuilder$Field;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/mms/transaction/StatisticsBuilder$Field;->OK:Lcom/android/mms/transaction/StatisticsBuilder$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/mms/transaction/StatisticsBuilder$Field;->BYTES_IN:Lcom/android/mms/transaction/StatisticsBuilder$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/mms/transaction/StatisticsBuilder$Field;->BYTES_OUT:Lcom/android/mms/transaction/StatisticsBuilder$Field;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/mms/transaction/StatisticsBuilder$Field;->BEARER:Lcom/android/mms/transaction/StatisticsBuilder$Field;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/StatisticsBuilder$Field;->$VALUES:[Lcom/android/mms/transaction/StatisticsBuilder$Field;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/transaction/StatisticsBuilder$Field;
    .locals 1

    const-class v0, Lcom/android/mms/transaction/StatisticsBuilder$Field;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/StatisticsBuilder$Field;

    return-object v0
.end method

.method public static values()[Lcom/android/mms/transaction/StatisticsBuilder$Field;
    .locals 1

    sget-object v0, Lcom/android/mms/transaction/StatisticsBuilder$Field;->$VALUES:[Lcom/android/mms/transaction/StatisticsBuilder$Field;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/transaction/StatisticsBuilder$Field;

    return-object v0
.end method
