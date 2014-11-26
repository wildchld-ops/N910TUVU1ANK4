.class public final enum Lcom/android/mms/replyservice/MiniModeService$Resizable;
.super Ljava/lang/Enum;
.source "MiniModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/replyservice/MiniModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Resizable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mms/replyservice/MiniModeService$Resizable;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mms/replyservice/MiniModeService$Resizable;

.field public static final enum BOTTOM_ONLY:Lcom/android/mms/replyservice/MiniModeService$Resizable;

.field public static final enum RIGHT_BOTTOM:Lcom/android/mms/replyservice/MiniModeService$Resizable;

.field public static final enum RIGHT_ONLY:Lcom/android/mms/replyservice/MiniModeService$Resizable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/mms/replyservice/MiniModeService$Resizable;

    const-string v1, "BOTTOM_ONLY"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/replyservice/MiniModeService$Resizable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/replyservice/MiniModeService$Resizable;->BOTTOM_ONLY:Lcom/android/mms/replyservice/MiniModeService$Resizable;

    new-instance v0, Lcom/android/mms/replyservice/MiniModeService$Resizable;

    const-string v1, "RIGHT_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/android/mms/replyservice/MiniModeService$Resizable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/replyservice/MiniModeService$Resizable;->RIGHT_ONLY:Lcom/android/mms/replyservice/MiniModeService$Resizable;

    new-instance v0, Lcom/android/mms/replyservice/MiniModeService$Resizable;

    const-string v1, "RIGHT_BOTTOM"

    invoke-direct {v0, v1, v4}, Lcom/android/mms/replyservice/MiniModeService$Resizable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/replyservice/MiniModeService$Resizable;->RIGHT_BOTTOM:Lcom/android/mms/replyservice/MiniModeService$Resizable;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/mms/replyservice/MiniModeService$Resizable;

    sget-object v1, Lcom/android/mms/replyservice/MiniModeService$Resizable;->BOTTOM_ONLY:Lcom/android/mms/replyservice/MiniModeService$Resizable;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/mms/replyservice/MiniModeService$Resizable;->RIGHT_ONLY:Lcom/android/mms/replyservice/MiniModeService$Resizable;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mms/replyservice/MiniModeService$Resizable;->RIGHT_BOTTOM:Lcom/android/mms/replyservice/MiniModeService$Resizable;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/replyservice/MiniModeService$Resizable;->$VALUES:[Lcom/android/mms/replyservice/MiniModeService$Resizable;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/replyservice/MiniModeService$Resizable;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/android/mms/replyservice/MiniModeService$Resizable;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mms/replyservice/MiniModeService$Resizable;

    return-object v0
.end method

.method public static values()[Lcom/android/mms/replyservice/MiniModeService$Resizable;
    .locals 1

    sget-object v0, Lcom/android/mms/replyservice/MiniModeService$Resizable;->$VALUES:[Lcom/android/mms/replyservice/MiniModeService$Resizable;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/replyservice/MiniModeService$Resizable;

    return-object v0
.end method
