.class public Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory;
.super Ljava/lang/Object;
.source "HwrPathController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiopathHistory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory$DiopathCmd;
    }
.end annotation


# static fields
.field public static final CMD_ADD_LINE:I = 0x1

.field public static final CMD_DEL_LINE:I = 0x2

.field public static final CMD_NONE:I


# instance fields
.field private mStackRedo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory$DiopathCmd;",
            ">;"
        }
    .end annotation
.end field

.field private mStackRedoTop:I

.field private mStackUndo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory$DiopathCmd;",
            ">;"
        }
    .end annotation
.end field

.field private mStackUndoTop:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory;->mStackUndoTop:I

    iput v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory;->mStackRedoTop:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory;->mStackUndo:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory;->mStackRedo:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public Clear()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory;->mStackUndo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory;->mStackRedo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput v1, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory;->mStackUndoTop:I

    iput v1, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory;->mStackRedoTop:I

    return-void
.end method

.method public Pop()Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory$DiopathCmd;
    .locals 5

    new-instance v0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory$DiopathCmd;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory$DiopathCmd;-><init>()V

    iget v1, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory;->mStackUndoTop:I

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory;->mStackUndo:Ljava/util/List;

    iget v2, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory;->mStackUndoTop:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory$DiopathCmd;

    iget v1, v1, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory$DiopathCmd;->mGroupID:I

    iput v1, v0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory$DiopathCmd;->mGroupID:I

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory;->mStackUndo:Ljava/util/List;

    iget v2, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory;->mStackUndoTop:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory$DiopathCmd;

    iget v1, v1, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory$DiopathCmd;->mCmd:I

    iput v1, v0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory$DiopathCmd;->mCmd:I

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory;->mStackUndo:Ljava/util/List;

    iget v2, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory;->mStackUndoTop:I

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget v1, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory;->mStackUndoTop:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory;->mStackUndoTop:I

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory;->mStackRedo:Ljava/util/List;

    new-instance v2, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory$DiopathCmd;

    iget v3, v0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory$DiopathCmd;->mGroupID:I

    iget v4, v0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory$DiopathCmd;->mCmd:I

    invoke-direct {v2, v3, v4}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory$DiopathCmd;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory;->mStackRedoTop:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory;->mStackRedoTop:I

    goto :goto_0
.end method

.method public Push(II)Z
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory;->mStackUndo:Ljava/util/List;

    new-instance v1, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory$DiopathCmd;

    invoke-direct {v1, p1, p2}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory$DiopathCmd;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory;->mStackUndoTop:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory;->mStackUndoTop:I

    const/4 v0, 0x1

    return v0
.end method

.method public Restore()V
    .locals 5

    new-instance v0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory$DiopathCmd;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory$DiopathCmd;-><init>()V

    iget v1, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory;->mStackRedoTop:I

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory;->mStackRedo:Ljava/util/List;

    iget v2, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory;->mStackRedoTop:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory$DiopathCmd;

    iget v1, v1, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory$DiopathCmd;->mGroupID:I

    iput v1, v0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory$DiopathCmd;->mGroupID:I

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory;->mStackRedo:Ljava/util/List;

    iget v2, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory;->mStackRedoTop:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory$DiopathCmd;

    iget v1, v1, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory$DiopathCmd;->mCmd:I

    iput v1, v0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory$DiopathCmd;->mCmd:I

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory;->mStackRedo:Ljava/util/List;

    iget v2, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory;->mStackRedoTop:I

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget v1, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory;->mStackRedoTop:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory;->mStackRedoTop:I

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory;->mStackUndo:Ljava/util/List;

    new-instance v2, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory$DiopathCmd;

    iget v3, v0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory$DiopathCmd;->mGroupID:I

    iget v4, v0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory$DiopathCmd;->mCmd:I

    invoke-direct {v2, v3, v4}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory$DiopathCmd;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory;->mStackUndoTop:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory;->mStackUndoTop:I

    goto :goto_0
.end method
