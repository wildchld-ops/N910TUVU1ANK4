.class public final enum Lcom/sec/orca/shop/client/library/ShopConstants$ItemType;
.super Ljava/lang/Enum;
.source "ShopConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/orca/shop/client/library/ShopConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/orca/shop/client/library/ShopConstants$ItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/sec/orca/shop/client/library/ShopConstants$ItemType;

.field public static final enum Sticker:Lcom/sec/orca/shop/client/library/ShopConstants$ItemType;

.field public static final enum Unknown:Lcom/sec/orca/shop/client/library/ShopConstants$ItemType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v0, Lcom/sec/orca/shop/client/library/ShopConstants$ItemType;

    const-string v1, "Sticker"

    invoke-direct {v0, v1, v4, v3}, Lcom/sec/orca/shop/client/library/ShopConstants$ItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/orca/shop/client/library/ShopConstants$ItemType;->Sticker:Lcom/sec/orca/shop/client/library/ShopConstants$ItemType;

    new-instance v0, Lcom/sec/orca/shop/client/library/ShopConstants$ItemType;

    const-string v1, "Unknown"

    const/16 v2, 0x63

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/orca/shop/client/library/ShopConstants$ItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/orca/shop/client/library/ShopConstants$ItemType;->Unknown:Lcom/sec/orca/shop/client/library/ShopConstants$ItemType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/orca/shop/client/library/ShopConstants$ItemType;

    sget-object v1, Lcom/sec/orca/shop/client/library/ShopConstants$ItemType;->Sticker:Lcom/sec/orca/shop/client/library/ShopConstants$ItemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/orca/shop/client/library/ShopConstants$ItemType;->Unknown:Lcom/sec/orca/shop/client/library/ShopConstants$ItemType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/orca/shop/client/library/ShopConstants$ItemType;->ENUM$VALUES:[Lcom/sec/orca/shop/client/library/ShopConstants$ItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3    # I

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sec/orca/shop/client/library/ShopConstants$ItemType;->mValue:I

    return-void
.end method

.method public static getItemType(I)Lcom/sec/orca/shop/client/library/ShopConstants$ItemType;
    .locals 1
    .param p0    # I

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/sec/orca/shop/client/library/ShopConstants$ItemType;->Unknown:Lcom/sec/orca/shop/client/library/ShopConstants$ItemType;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/sec/orca/shop/client/library/ShopConstants$ItemType;->Sticker:Lcom/sec/orca/shop/client/library/ShopConstants$ItemType;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/orca/shop/client/library/ShopConstants$ItemType;
    .locals 1

    const-class v0, Lcom/sec/orca/shop/client/library/ShopConstants$ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/orca/shop/client/library/ShopConstants$ItemType;

    return-object v0
.end method

.method public static values()[Lcom/sec/orca/shop/client/library/ShopConstants$ItemType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/sec/orca/shop/client/library/ShopConstants$ItemType;->ENUM$VALUES:[Lcom/sec/orca/shop/client/library/ShopConstants$ItemType;

    array-length v1, v0

    new-array v2, v1, [Lcom/sec/orca/shop/client/library/ShopConstants$ItemType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/sec/orca/shop/client/library/ShopConstants$ItemType;->mValue:I

    return v0
.end method
