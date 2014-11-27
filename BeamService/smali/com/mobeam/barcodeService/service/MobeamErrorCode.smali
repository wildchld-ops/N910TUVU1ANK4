.class public final enum Lcom/mobeam/barcodeService/service/MobeamErrorCode;
.super Ljava/lang/Enum;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final enum a:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

.field public static final enum b:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

.field public static final enum c:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

.field public static final enum d:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

.field public static final enum e:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

.field public static final enum f:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

.field public static final enum g:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

.field public static final enum h:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

.field public static final enum i:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

.field public static final enum j:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

.field public static final enum k:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

.field public static final enum l:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

.field public static final enum m:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

.field public static final enum n:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

.field private static final synthetic o:[Lcom/mobeam/barcodeService/service/MobeamErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    const-string v1, "NO_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/mobeam/barcodeService/service/MobeamErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->a:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    new-instance v0, Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    const-string v1, "DEVICE_NOT_CAPABLE"

    invoke-direct {v0, v1, v4}, Lcom/mobeam/barcodeService/service/MobeamErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->b:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    new-instance v0, Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    const-string v1, "SERVICE_NOT_INSTALLED"

    invoke-direct {v0, v1, v5}, Lcom/mobeam/barcodeService/service/MobeamErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->c:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    new-instance v0, Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    const-string v1, "SERVICE_NOT_COMPATIBLE"

    invoke-direct {v0, v1, v6}, Lcom/mobeam/barcodeService/service/MobeamErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->d:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    new-instance v0, Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    const-string v1, "SERVICE_NOT_INITIALIZED"

    invoke-direct {v0, v1, v7}, Lcom/mobeam/barcodeService/service/MobeamErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->e:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    new-instance v0, Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    const-string v1, "NETWORK_NOT_AVAILABLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/mobeam/barcodeService/service/MobeamErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->f:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    new-instance v0, Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    const-string v1, "APP_CREDENTIALS_REVOKED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/mobeam/barcodeService/service/MobeamErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->g:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    new-instance v0, Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    const-string v1, "APP_CREDENTIALS_UNAUTHORIZED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/mobeam/barcodeService/service/MobeamErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->h:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    new-instance v0, Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    const-string v1, "BEAM_NOT_STARTED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/mobeam/barcodeService/service/MobeamErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->i:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    new-instance v0, Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    const-string v1, "BEAM_IN_PROGRESS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/mobeam/barcodeService/service/MobeamErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->j:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    new-instance v0, Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    const-string v1, "BEAM_PLATFORM_ERROR"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/mobeam/barcodeService/service/MobeamErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->k:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    new-instance v0, Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    const-string v1, "BEAM_SECURITY_ERROR"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/mobeam/barcodeService/service/MobeamErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->l:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    new-instance v0, Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    const-string v1, "INVALID_SESSION_ID"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/mobeam/barcodeService/service/MobeamErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->m:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    new-instance v0, Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    const-string v1, "OTHER_ERROR"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/mobeam/barcodeService/service/MobeamErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->n:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    sget-object v1, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->a:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->b:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->c:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->d:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->e:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->f:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->g:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->h:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->i:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->j:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->k:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->l:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->m:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->n:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->o:[Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    new-instance v0, Lcom/mobeam/barcodeService/service/g;

    invoke-direct {v0}, Lcom/mobeam/barcodeService/service/g;-><init>()V

    sput-object v0, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;)Lcom/mobeam/barcodeService/service/MobeamErrorCode;
    .locals 3

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {}, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->values()[Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    move-result-object v1

    array-length v2, v1

    if-lt v0, v2, :cond_0

    sget-object v0, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->n:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    :goto_0
    return-object v0

    :cond_0
    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mobeam/barcodeService/service/MobeamErrorCode;
    .locals 1

    const-class v0, Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/mobeam/barcodeService/service/MobeamErrorCode;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->o:[Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    array-length v1, v0

    new-array v2, v1, [Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
