.class public final enum Lcom/android/mms/transaction/StatisticsBuilder$Direction;
.super Ljava/lang/Enum;
.source "StatisticsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/StatisticsBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mms/transaction/StatisticsBuilder$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mms/transaction/StatisticsBuilder$Direction;

.field public static final enum MO:Lcom/android/mms/transaction/StatisticsBuilder$Direction;

.field public static final enum MT:Lcom/android/mms/transaction/StatisticsBuilder$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/mms/transaction/StatisticsBuilder$Direction;

    const-string v1, "MO"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/StatisticsBuilder$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/StatisticsBuilder$Direction;->MO:Lcom/android/mms/transaction/StatisticsBuilder$Direction;

    new-instance v0, Lcom/android/mms/transaction/StatisticsBuilder$Direction;

    const-string v1, "MT"

    invoke-direct {v0, v1, v3}, Lcom/android/mms/transaction/StatisticsBuilder$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/StatisticsBuilder$Direction;->MT:Lcom/android/mms/transaction/StatisticsBuilder$Direction;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/mms/transaction/StatisticsBuilder$Direction;

    sget-object v1, Lcom/android/mms/transaction/StatisticsBuilder$Direction;->MO:Lcom/android/mms/transaction/StatisticsBuilder$Direction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/mms/transaction/StatisticsBuilder$Direction;->MT:Lcom/android/mms/transaction/StatisticsBuilder$Direction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/transaction/StatisticsBuilder$Direction;->$VALUES:[Lcom/android/mms/transaction/StatisticsBuilder$Direction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/transaction/StatisticsBuilder$Direction;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/android/mms/transaction/StatisticsBuilder$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/StatisticsBuilder$Direction;

    return-object v0
.end method

.method public static values()[Lcom/android/mms/transaction/StatisticsBuilder$Direction;
    .locals 1

    sget-object v0, Lcom/android/mms/transaction/StatisticsBuilder$Direction;->$VALUES:[Lcom/android/mms/transaction/StatisticsBuilder$Direction;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/transaction/StatisticsBuilder$Direction;

    return-object v0
.end method
