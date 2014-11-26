.class public final enum Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;
.super Ljava/lang/Enum;
.source "NotificationReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/transaction/NotificationReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;

.field public static final enum Delivered:Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;

.field public static final enum Displayed:Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;

.field public static final enum None:Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;

.field public static final enum Sending:Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;

.field public static final enum Sent:Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;

.field public static final enum fail:Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;

    const-string v1, "None"

    invoke-direct {v0, v1, v3}, Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;->None:Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;

    new-instance v0, Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;

    const-string v1, "fail"

    invoke-direct {v0, v1, v4}, Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;->fail:Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;

    new-instance v0, Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;

    const-string v1, "Sending"

    invoke-direct {v0, v1, v5}, Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;->Sending:Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;

    new-instance v0, Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;

    const-string v1, "Sent"

    invoke-direct {v0, v1, v6}, Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;->Sent:Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;

    new-instance v0, Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;

    const-string v1, "Delivered"

    invoke-direct {v0, v1, v7}, Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;->Delivered:Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;

    new-instance v0, Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;

    const-string v1, "Displayed"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;->Displayed:Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;

    sget-object v1, Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;->None:Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;->fail:Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;->Sending:Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;->Sent:Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;->Delivered:Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;->Displayed:Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;->$VALUES:[Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;
    .locals 1

    sget-object v0, Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;->$VALUES:[Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;

    return-object v0
.end method
