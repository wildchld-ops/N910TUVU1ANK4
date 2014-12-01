.class public final enum Lcom/ipsec/client/IPsecConnection$EapMethod;
.super Ljava/lang/Enum;
.source "IPsecConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ipsec/client/IPsecConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EapMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ipsec/client/IPsecConnection$EapMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ipsec/client/IPsecConnection$EapMethod;

.field public static final enum EAP_METHOD_AKA:Lcom/ipsec/client/IPsecConnection$EapMethod;

.field public static final enum EAP_METHOD_MD5_CHALLENGE:Lcom/ipsec/client/IPsecConnection$EapMethod;

.field public static final enum EAP_METHOD_MSCHAPV2:Lcom/ipsec/client/IPsecConnection$EapMethod;

.field public static final enum EAP_METHOD_SIM:Lcom/ipsec/client/IPsecConnection$EapMethod;


# instance fields
.field private maskValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v0, Lcom/ipsec/client/IPsecConnection$EapMethod;

    const-string v1, "EAP_METHOD_MD5_CHALLENGE"

    invoke-direct {v0, v1, v4, v3}, Lcom/ipsec/client/IPsecConnection$EapMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ipsec/client/IPsecConnection$EapMethod;->EAP_METHOD_MD5_CHALLENGE:Lcom/ipsec/client/IPsecConnection$EapMethod;

    new-instance v0, Lcom/ipsec/client/IPsecConnection$EapMethod;

    const-string v1, "EAP_METHOD_SIM"

    invoke-direct {v0, v1, v3, v7}, Lcom/ipsec/client/IPsecConnection$EapMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ipsec/client/IPsecConnection$EapMethod;->EAP_METHOD_SIM:Lcom/ipsec/client/IPsecConnection$EapMethod;

    new-instance v0, Lcom/ipsec/client/IPsecConnection$EapMethod;

    const-string v1, "EAP_METHOD_AKA"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v5, v2}, Lcom/ipsec/client/IPsecConnection$EapMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ipsec/client/IPsecConnection$EapMethod;->EAP_METHOD_AKA:Lcom/ipsec/client/IPsecConnection$EapMethod;

    new-instance v0, Lcom/ipsec/client/IPsecConnection$EapMethod;

    const-string v1, "EAP_METHOD_MSCHAPV2"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v6, v2}, Lcom/ipsec/client/IPsecConnection$EapMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ipsec/client/IPsecConnection$EapMethod;->EAP_METHOD_MSCHAPV2:Lcom/ipsec/client/IPsecConnection$EapMethod;

    new-array v0, v7, [Lcom/ipsec/client/IPsecConnection$EapMethod;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$EapMethod;->EAP_METHOD_MD5_CHALLENGE:Lcom/ipsec/client/IPsecConnection$EapMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ipsec/client/IPsecConnection$EapMethod;->EAP_METHOD_SIM:Lcom/ipsec/client/IPsecConnection$EapMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ipsec/client/IPsecConnection$EapMethod;->EAP_METHOD_AKA:Lcom/ipsec/client/IPsecConnection$EapMethod;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ipsec/client/IPsecConnection$EapMethod;->EAP_METHOD_MSCHAPV2:Lcom/ipsec/client/IPsecConnection$EapMethod;

    aput-object v1, v0, v6

    sput-object v0, Lcom/ipsec/client/IPsecConnection$EapMethod;->$VALUES:[Lcom/ipsec/client/IPsecConnection$EapMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/ipsec/client/IPsecConnection$EapMethod;->maskValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ipsec/client/IPsecConnection$EapMethod;
    .locals 1

    const-class v0, Lcom/ipsec/client/IPsecConnection$EapMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ipsec/client/IPsecConnection$EapMethod;

    return-object v0
.end method

.method public static values()[Lcom/ipsec/client/IPsecConnection$EapMethod;
    .locals 1

    sget-object v0, Lcom/ipsec/client/IPsecConnection$EapMethod;->$VALUES:[Lcom/ipsec/client/IPsecConnection$EapMethod;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ipsec/client/IPsecConnection$EapMethod;

    return-object v0
.end method


# virtual methods
.method public maskValue()I
    .locals 1

    iget v0, p0, Lcom/ipsec/client/IPsecConnection$EapMethod;->maskValue:I

    return v0
.end method
