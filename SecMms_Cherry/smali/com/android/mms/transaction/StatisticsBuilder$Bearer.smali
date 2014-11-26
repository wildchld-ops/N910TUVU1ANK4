.class public final enum Lcom/android/mms/transaction/StatisticsBuilder$Bearer;
.super Ljava/lang/Enum;
.source "StatisticsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/StatisticsBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Bearer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mms/transaction/StatisticsBuilder$Bearer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mms/transaction/StatisticsBuilder$Bearer;

.field public static final enum WiFi:Lcom/android/mms/transaction/StatisticsBuilder$Bearer;


# instance fields
.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/android/mms/transaction/StatisticsBuilder$Bearer;

    const-string v1, "WiFi"

    const-string v2, "WiFi"

    invoke-direct {v0, v1, v3, v2}, Lcom/android/mms/transaction/StatisticsBuilder$Bearer;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/mms/transaction/StatisticsBuilder$Bearer;->WiFi:Lcom/android/mms/transaction/StatisticsBuilder$Bearer;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/mms/transaction/StatisticsBuilder$Bearer;

    sget-object v1, Lcom/android/mms/transaction/StatisticsBuilder$Bearer;->WiFi:Lcom/android/mms/transaction/StatisticsBuilder$Bearer;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/transaction/StatisticsBuilder$Bearer;->$VALUES:[Lcom/android/mms/transaction/StatisticsBuilder$Bearer;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/mms/transaction/StatisticsBuilder$Bearer;->mName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/transaction/StatisticsBuilder$Bearer;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/android/mms/transaction/StatisticsBuilder$Bearer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/StatisticsBuilder$Bearer;

    return-object v0
.end method

.method public static values()[Lcom/android/mms/transaction/StatisticsBuilder$Bearer;
    .locals 1

    sget-object v0, Lcom/android/mms/transaction/StatisticsBuilder$Bearer;->$VALUES:[Lcom/android/mms/transaction/StatisticsBuilder$Bearer;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/transaction/StatisticsBuilder$Bearer;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/StatisticsBuilder$Bearer;->mName:Ljava/lang/String;

    return-object v0
.end method
