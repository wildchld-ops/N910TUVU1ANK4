.class public final enum Lcom/android/mms/util/VipModeCTC$ConfigDialog;
.super Ljava/lang/Enum;
.source "VipModeCTC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/VipModeCTC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfigDialog"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mms/util/VipModeCTC$ConfigDialog;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mms/util/VipModeCTC$ConfigDialog;

.field public static final enum BLACKLIST:Lcom/android/mms/util/VipModeCTC$ConfigDialog;

.field public static final enum WHITELIST:Lcom/android/mms/util/VipModeCTC$ConfigDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/mms/util/VipModeCTC$ConfigDialog;

    const-string v1, "BLACKLIST"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/util/VipModeCTC$ConfigDialog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/util/VipModeCTC$ConfigDialog;->BLACKLIST:Lcom/android/mms/util/VipModeCTC$ConfigDialog;

    new-instance v0, Lcom/android/mms/util/VipModeCTC$ConfigDialog;

    const-string v1, "WHITELIST"

    invoke-direct {v0, v1, v3}, Lcom/android/mms/util/VipModeCTC$ConfigDialog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/util/VipModeCTC$ConfigDialog;->WHITELIST:Lcom/android/mms/util/VipModeCTC$ConfigDialog;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/mms/util/VipModeCTC$ConfigDialog;

    sget-object v1, Lcom/android/mms/util/VipModeCTC$ConfigDialog;->BLACKLIST:Lcom/android/mms/util/VipModeCTC$ConfigDialog;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/mms/util/VipModeCTC$ConfigDialog;->WHITELIST:Lcom/android/mms/util/VipModeCTC$ConfigDialog;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/util/VipModeCTC$ConfigDialog;->$VALUES:[Lcom/android/mms/util/VipModeCTC$ConfigDialog;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/util/VipModeCTC$ConfigDialog;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/android/mms/util/VipModeCTC$ConfigDialog;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mms/util/VipModeCTC$ConfigDialog;

    return-object v0
.end method

.method public static values()[Lcom/android/mms/util/VipModeCTC$ConfigDialog;
    .locals 1

    sget-object v0, Lcom/android/mms/util/VipModeCTC$ConfigDialog;->$VALUES:[Lcom/android/mms/util/VipModeCTC$ConfigDialog;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/util/VipModeCTC$ConfigDialog;

    return-object v0
.end method
