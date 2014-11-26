.class public Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;
.super Ljava/lang/Object;
.source "RecognizedResultsController.java"


# static fields
.field private static mInstance:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;


# instance fields
.field private mCurrentRecognizedStringArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mNewRecognizedStringArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mOldRecognizedStringArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->mInstance:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->mOldRecognizedStringArray:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->mNewRecognizedStringArray:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->mCurrentRecognizedStringArray:Ljava/util/ArrayList;

    return-void
.end method

.method public static getInstance()Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->mInstance:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->mInstance:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->mInstance:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    return-object v0
.end method


# virtual methods
.method public clearRecognizedStringArray()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->mCurrentRecognizedStringArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->mNewRecognizedStringArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->mOldRecognizedStringArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getCurrentRecognizedStringArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->mCurrentRecognizedStringArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIsNeedHwrEnterIconDrawing()Z
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->mOldRecognizedStringArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->mOldRecognizedStringArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNewRecognizedStringArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->mNewRecognizedStringArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOldRecognizedStringArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->mOldRecognizedStringArray:Ljava/util/ArrayList;

    return-object v0
.end method
