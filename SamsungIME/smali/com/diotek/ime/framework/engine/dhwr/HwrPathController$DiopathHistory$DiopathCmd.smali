.class public Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory$DiopathCmd;
.super Ljava/lang/Object;
.source "HwrPathController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiopathCmd"
.end annotation


# instance fields
.field public mCmd:I

.field public mGroupID:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory$DiopathCmd;->mGroupID:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory$DiopathCmd;->mCmd:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory$DiopathCmd;->mGroupID:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory$DiopathCmd;->mCmd:I

    iput p1, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory$DiopathCmd;->mGroupID:I

    iput p2, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory$DiopathCmd;->mCmd:I

    return-void
.end method
