.class final enum Lcom/android/phone/UsimDownload$ScreenMode;
.super Ljava/lang/Enum;
.source "UsimDownload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/UsimDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ScreenMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/UsimDownload$ScreenMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/UsimDownload$ScreenMode;

.field public static final enum KtNetRegistering:Lcom/android/phone/UsimDownload$ScreenMode;

.field public static final enum KtNumRegFail:Lcom/android/phone/UsimDownload$ScreenMode;

.field public static final enum KtNumRegFailRetryNo:Lcom/android/phone/UsimDownload$ScreenMode;

.field public static final enum KtNumRegOutOfService:Lcom/android/phone/UsimDownload$ScreenMode;

.field public static final enum KtNumRegSuccess:Lcom/android/phone/UsimDownload$ScreenMode;

.field public static final enum KtNumRegistering:Lcom/android/phone/UsimDownload$ScreenMode;

.field public static final enum KtRegister:Lcom/android/phone/UsimDownload$ScreenMode;

.field public static final enum KtUsimRemoved:Lcom/android/phone/UsimDownload$ScreenMode;

.field public static final enum LGTNumRegFail:Lcom/android/phone/UsimDownload$ScreenMode;

.field public static final enum LGTNumRegSuccess:Lcom/android/phone/UsimDownload$ScreenMode;

.field public static final enum LGTNumRegistering:Lcom/android/phone/UsimDownload$ScreenMode;

.field public static final enum LGTOverseaMode:Lcom/android/phone/UsimDownload$ScreenMode;

.field public static final enum LGTRegisterMain:Lcom/android/phone/UsimDownload$ScreenMode;

.field public static final enum RefreshReset:Lcom/android/phone/UsimDownload$ScreenMode;

.field public static final enum SKTNumRegFail:Lcom/android/phone/UsimDownload$ScreenMode;

.field public static final enum SKTNumRegSuccess:Lcom/android/phone/UsimDownload$ScreenMode;

.field public static final enum SKTNumRegSuccessByBIP:Lcom/android/phone/UsimDownload$ScreenMode;

.field public static final enum SKTNumRegistering:Lcom/android/phone/UsimDownload$ScreenMode;

.field public static final enum UsimRemovedReset:Lcom/android/phone/UsimDownload$ScreenMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/phone/UsimDownload$ScreenMode;

    const-string v1, "SKTNumRegistering"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/UsimDownload$ScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/UsimDownload$ScreenMode;->SKTNumRegistering:Lcom/android/phone/UsimDownload$ScreenMode;

    new-instance v0, Lcom/android/phone/UsimDownload$ScreenMode;

    const-string v1, "SKTNumRegSuccess"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/UsimDownload$ScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/UsimDownload$ScreenMode;->SKTNumRegSuccess:Lcom/android/phone/UsimDownload$ScreenMode;

    new-instance v0, Lcom/android/phone/UsimDownload$ScreenMode;

    const-string v1, "SKTNumRegSuccessByBIP"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/UsimDownload$ScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/UsimDownload$ScreenMode;->SKTNumRegSuccessByBIP:Lcom/android/phone/UsimDownload$ScreenMode;

    new-instance v0, Lcom/android/phone/UsimDownload$ScreenMode;

    const-string v1, "SKTNumRegFail"

    invoke-direct {v0, v1, v6}, Lcom/android/phone/UsimDownload$ScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/UsimDownload$ScreenMode;->SKTNumRegFail:Lcom/android/phone/UsimDownload$ScreenMode;

    new-instance v0, Lcom/android/phone/UsimDownload$ScreenMode;

    const-string v1, "RefreshReset"

    invoke-direct {v0, v1, v7}, Lcom/android/phone/UsimDownload$ScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/UsimDownload$ScreenMode;->RefreshReset:Lcom/android/phone/UsimDownload$ScreenMode;

    new-instance v0, Lcom/android/phone/UsimDownload$ScreenMode;

    const-string v1, "UsimRemovedReset"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/phone/UsimDownload$ScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/UsimDownload$ScreenMode;->UsimRemovedReset:Lcom/android/phone/UsimDownload$ScreenMode;

    new-instance v0, Lcom/android/phone/UsimDownload$ScreenMode;

    const-string v1, "KtUsimRemoved"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/phone/UsimDownload$ScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/UsimDownload$ScreenMode;->KtUsimRemoved:Lcom/android/phone/UsimDownload$ScreenMode;

    new-instance v0, Lcom/android/phone/UsimDownload$ScreenMode;

    const-string v1, "KtRegister"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/phone/UsimDownload$ScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/UsimDownload$ScreenMode;->KtRegister:Lcom/android/phone/UsimDownload$ScreenMode;

    new-instance v0, Lcom/android/phone/UsimDownload$ScreenMode;

    const-string v1, "KtNetRegistering"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/phone/UsimDownload$ScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/UsimDownload$ScreenMode;->KtNetRegistering:Lcom/android/phone/UsimDownload$ScreenMode;

    new-instance v0, Lcom/android/phone/UsimDownload$ScreenMode;

    const-string v1, "KtNumRegistering"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/phone/UsimDownload$ScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/UsimDownload$ScreenMode;->KtNumRegistering:Lcom/android/phone/UsimDownload$ScreenMode;

    new-instance v0, Lcom/android/phone/UsimDownload$ScreenMode;

    const-string v1, "KtNumRegOutOfService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/phone/UsimDownload$ScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/UsimDownload$ScreenMode;->KtNumRegOutOfService:Lcom/android/phone/UsimDownload$ScreenMode;

    new-instance v0, Lcom/android/phone/UsimDownload$ScreenMode;

    const-string v1, "KtNumRegSuccess"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/phone/UsimDownload$ScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/UsimDownload$ScreenMode;->KtNumRegSuccess:Lcom/android/phone/UsimDownload$ScreenMode;

    new-instance v0, Lcom/android/phone/UsimDownload$ScreenMode;

    const-string v1, "KtNumRegFail"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/phone/UsimDownload$ScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/UsimDownload$ScreenMode;->KtNumRegFail:Lcom/android/phone/UsimDownload$ScreenMode;

    new-instance v0, Lcom/android/phone/UsimDownload$ScreenMode;

    const-string v1, "KtNumRegFailRetryNo"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/phone/UsimDownload$ScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/UsimDownload$ScreenMode;->KtNumRegFailRetryNo:Lcom/android/phone/UsimDownload$ScreenMode;

    new-instance v0, Lcom/android/phone/UsimDownload$ScreenMode;

    const-string v1, "LGTRegisterMain"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/phone/UsimDownload$ScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/UsimDownload$ScreenMode;->LGTRegisterMain:Lcom/android/phone/UsimDownload$ScreenMode;

    new-instance v0, Lcom/android/phone/UsimDownload$ScreenMode;

    const-string v1, "LGTNumRegistering"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/android/phone/UsimDownload$ScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/UsimDownload$ScreenMode;->LGTNumRegistering:Lcom/android/phone/UsimDownload$ScreenMode;

    new-instance v0, Lcom/android/phone/UsimDownload$ScreenMode;

    const-string v1, "LGTNumRegSuccess"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/android/phone/UsimDownload$ScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/UsimDownload$ScreenMode;->LGTNumRegSuccess:Lcom/android/phone/UsimDownload$ScreenMode;

    new-instance v0, Lcom/android/phone/UsimDownload$ScreenMode;

    const-string v1, "LGTNumRegFail"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/android/phone/UsimDownload$ScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/UsimDownload$ScreenMode;->LGTNumRegFail:Lcom/android/phone/UsimDownload$ScreenMode;

    new-instance v0, Lcom/android/phone/UsimDownload$ScreenMode;

    const-string v1, "LGTOverseaMode"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/android/phone/UsimDownload$ScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/UsimDownload$ScreenMode;->LGTOverseaMode:Lcom/android/phone/UsimDownload$ScreenMode;

    const/16 v0, 0x13

    new-array v0, v0, [Lcom/android/phone/UsimDownload$ScreenMode;

    sget-object v1, Lcom/android/phone/UsimDownload$ScreenMode;->SKTNumRegistering:Lcom/android/phone/UsimDownload$ScreenMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/UsimDownload$ScreenMode;->SKTNumRegSuccess:Lcom/android/phone/UsimDownload$ScreenMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/UsimDownload$ScreenMode;->SKTNumRegSuccessByBIP:Lcom/android/phone/UsimDownload$ScreenMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/phone/UsimDownload$ScreenMode;->SKTNumRegFail:Lcom/android/phone/UsimDownload$ScreenMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/phone/UsimDownload$ScreenMode;->RefreshReset:Lcom/android/phone/UsimDownload$ScreenMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/phone/UsimDownload$ScreenMode;->UsimRemovedReset:Lcom/android/phone/UsimDownload$ScreenMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/phone/UsimDownload$ScreenMode;->KtUsimRemoved:Lcom/android/phone/UsimDownload$ScreenMode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/phone/UsimDownload$ScreenMode;->KtRegister:Lcom/android/phone/UsimDownload$ScreenMode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/phone/UsimDownload$ScreenMode;->KtNetRegistering:Lcom/android/phone/UsimDownload$ScreenMode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/phone/UsimDownload$ScreenMode;->KtNumRegistering:Lcom/android/phone/UsimDownload$ScreenMode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/phone/UsimDownload$ScreenMode;->KtNumRegOutOfService:Lcom/android/phone/UsimDownload$ScreenMode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/phone/UsimDownload$ScreenMode;->KtNumRegSuccess:Lcom/android/phone/UsimDownload$ScreenMode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/phone/UsimDownload$ScreenMode;->KtNumRegFail:Lcom/android/phone/UsimDownload$ScreenMode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/phone/UsimDownload$ScreenMode;->KtNumRegFailRetryNo:Lcom/android/phone/UsimDownload$ScreenMode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/phone/UsimDownload$ScreenMode;->LGTRegisterMain:Lcom/android/phone/UsimDownload$ScreenMode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/phone/UsimDownload$ScreenMode;->LGTNumRegistering:Lcom/android/phone/UsimDownload$ScreenMode;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/phone/UsimDownload$ScreenMode;->LGTNumRegSuccess:Lcom/android/phone/UsimDownload$ScreenMode;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/android/phone/UsimDownload$ScreenMode;->LGTNumRegFail:Lcom/android/phone/UsimDownload$ScreenMode;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/android/phone/UsimDownload$ScreenMode;->LGTOverseaMode:Lcom/android/phone/UsimDownload$ScreenMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/UsimDownload$ScreenMode;->$VALUES:[Lcom/android/phone/UsimDownload$ScreenMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/UsimDownload$ScreenMode;
    .locals 1

    const-class v0, Lcom/android/phone/UsimDownload$ScreenMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/UsimDownload$ScreenMode;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/UsimDownload$ScreenMode;
    .locals 1

    sget-object v0, Lcom/android/phone/UsimDownload$ScreenMode;->$VALUES:[Lcom/android/phone/UsimDownload$ScreenMode;

    invoke-virtual {v0}, [Lcom/android/phone/UsimDownload$ScreenMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/UsimDownload$ScreenMode;

    return-object v0
.end method
