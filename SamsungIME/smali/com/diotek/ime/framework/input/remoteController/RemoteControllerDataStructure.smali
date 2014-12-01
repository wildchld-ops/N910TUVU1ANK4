.class public Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;
.super Ljava/lang/Object;
.source "RemoteControllerDataStructure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;
    }
.end annotation


# static fields
.field public static final NOT_A_KEY_INDEX:I = -0x1

.field public static final RC_STATUS_FOCUSED:S = 0x1s

.field public static final RC_STATUS_MINIKEYBOARD_POPUP:S = 0x3s

.field public static final RC_STATUS_MINIKEYBOARD_POPUP_FOCUSED:S = 0x4s

.field public static final RC_STATUS_NONE:S = 0x0s

.field public static final RC_STATUS_PRESSED:S = 0x2s


# instance fields
.field private mColumnCount:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mColumnCountForMinikeyboard:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

.field public mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

.field private mKeyIndexMap:[[I

.field private mKeyIndexMapForMinikeyboard:[[I

.field private mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

.field private mKeysForMinikeyboard:[Lcom/diotek/ime/framework/view/Keyboard$Key;

.field public mPopupX:I

.field public mPopupY:I

.field private mRowCount:I

.field private mRowCountForMinikeyboard:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mColumnCount:Ljava/util/List;

    iput v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mRowCount:I

    iput-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iput-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mColumnCountForMinikeyboard:Ljava/util/List;

    iput v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mRowCountForMinikeyboard:I

    iput-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iput v1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mPopupX:I

    iput v1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mPopupY:I

    return-void
.end method

.method private calculateRowAndColumnCountForMiniKeyboard()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput v8, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mRowCountForMinikeyboard:I

    const/4 v0, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mColumnCountForMinikeyboard:Ljava/util/List;

    const/4 v2, 0x0

    :goto_0
    iget-object v5, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeysForMinikeyboard:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    array-length v5, v5

    if-ge v2, v5, :cond_3

    iget-object v5, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeysForMinikeyboard:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v5, v5, v7

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->isThisKeyNotInvisible(I)Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez v0, :cond_1

    iget-object v5, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeysForMinikeyboard:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v5, v5, v2

    iget v3, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    move v4, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v5, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mColumnCountForMinikeyboard:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_1
    iget-object v5, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mColumnCountForMinikeyboard:Ljava/util/List;

    iget v6, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mRowCountForMinikeyboard:I

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v4, v3

    iget-object v5, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeysForMinikeyboard:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v5, v5, v2

    iget v3, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    if-eq v4, v3, :cond_2

    iget v5, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mRowCountForMinikeyboard:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mRowCountForMinikeyboard:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v5, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mColumnCountForMinikeyboard:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private generateKeyIndexMapForMiniKeyboard()V
    .locals 5

    iget v3, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mRowCountForMinikeyboard:I

    new-array v3, v3, [[I

    iput-object v3, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeyIndexMapForMinikeyboard:[[I

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mRowCountForMinikeyboard:I

    if-ge v0, v3, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeyIndexMapForMinikeyboard:[[I

    iget-object v3, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mColumnCountForMinikeyboard:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-array v3, v3, [I

    aput-object v3, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeysForMinikeyboard:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeysForMinikeyboard:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->isThisKeyNotInvisible(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mColumnCountForMinikeyboard:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v1, :cond_2

    iget-object v3, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeyIndexMapForMinikeyboard:[[I

    aget-object v3, v3, v2

    aput v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeyIndexMapForMinikeyboard:[[I

    aget-object v3, v3, v2

    aput v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method public calculateRowAndColumnCount()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput v8, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mRowCount:I

    const/4 v0, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mColumnCount:Ljava/util/List;

    const/4 v2, 0x0

    :goto_0
    iget-object v5, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    array-length v5, v5

    if-ge v2, v5, :cond_3

    iget-object v5, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v5, v5, v7

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->isThisKeyNotInvisible(I)Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez v0, :cond_1

    iget-object v5, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v5, v5, v2

    iget v3, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    move v4, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v5, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mColumnCount:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_1
    iget-object v5, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mColumnCount:Ljava/util/List;

    iget v6, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mRowCount:I

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v4, v3

    iget-object v5, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v5, v5, v2

    iget v3, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    if-eq v4, v3, :cond_2

    iget v5, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mRowCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mRowCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v5, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mColumnCount:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public computeNearstColumnIndex(I)I
    .locals 9

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeyIndexMap:[[I

    aget-object v7, v7, p1

    iget-object v8, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v8, v8, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->column:I

    aget v7, v7, v8

    aget-object v5, v6, v7

    iget-object v6, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeyIndexMap:[[I

    iget-object v8, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v8, v8, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget v7, v7, v8

    aget-object v1, v6, v7

    iget v6, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    iget v7, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget v7, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    iget v8, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    iget-object v6, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeyIndexMap:[[I

    iget-object v7, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v7, v7, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    aget-object v6, v6, v7

    array-length v6, v6

    if-ge v3, v6, :cond_1

    iget-object v6, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeyIndexMap:[[I

    iget-object v8, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v8, v8, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    aget-object v7, v7, v8

    aget v7, v7, v3

    aget-object v1, v6, v7

    iget v6, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    iget v7, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget v7, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    iget v8, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v2, v0, :cond_0

    move v2, v0

    move v4, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method

.method public computeNearstColumnIndexForMinikeyboard(I)I
    .locals 9

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeysForMinikeyboard:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeyIndexMapForMinikeyboard:[[I

    aget-object v7, v7, p1

    iget-object v8, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v8, v8, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->column:I

    aget v7, v7, v8

    aget-object v5, v6, v7

    iget-object v6, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeysForMinikeyboard:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeyIndexMapForMinikeyboard:[[I

    iget-object v8, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v8, v8, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget v7, v7, v8

    aget-object v1, v6, v7

    iget v6, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    iget v7, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget v7, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    iget v8, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    iget-object v6, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeyIndexMapForMinikeyboard:[[I

    iget-object v7, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v7, v7, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    aget-object v6, v6, v7

    array-length v6, v6

    if-ge v3, v6, :cond_1

    iget-object v6, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeysForMinikeyboard:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeyIndexMapForMinikeyboard:[[I

    iget-object v8, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v8, v8, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    aget-object v7, v7, v8

    aget v7, v7, v3

    aget-object v1, v6, v7

    iget v6, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    iget v7, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget v7, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    iget v8, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v2, v0, :cond_0

    move v2, v0

    move v4, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method

.method public generateKeyIndexMap()V
    .locals 5

    iget v3, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mRowCount:I

    new-array v3, v3, [[I

    iput-object v3, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeyIndexMap:[[I

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mRowCount:I

    if-ge v0, v3, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeyIndexMap:[[I

    iget-object v3, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mColumnCount:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-array v3, v3, [I

    aput-object v3, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->isThisKeyNotInvisible(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mColumnCount:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v1, :cond_2

    iget-object v3, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeyIndexMap:[[I

    aget-object v3, v3, v2

    aput v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeyIndexMap:[[I

    aget-object v3, v3, v2

    aput v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public getCurrentFocusedKey()Lcom/diotek/ime/framework/view/Keyboard$Key;
    .locals 4

    iget-object v1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeyIndexMap:[[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeyIndexMap:[[I

    iget-object v3, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v3, v3, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v3, v3, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->column:I

    aget v2, v2, v3

    aget-object v1, v1, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "SamsungIME"

    const-string v2, "RemoteControllerDataStructure.getCurrentFocusedKey() IndexOutOfBoundsException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentFocusedKeyForMinikeyboard()Lcom/diotek/ime/framework/view/Keyboard$Key;
    .locals 3

    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeyIndexMapForMinikeyboard:[[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeysForMinikeyboard:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeysForMinikeyboard:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeyIndexMapForMinikeyboard:[[I

    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v2, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v2, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->column:I

    aget v1, v1, v2

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFocusedKeyX()I
    .locals 3

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->getCurrentFocusedKey()Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    iget v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getFocusedKeyXForMinikeyboard()I
    .locals 3

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->getCurrentFocusedKeyForMinikeyboard()Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    iget v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getFocusedKeyY()I
    .locals 3

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->getCurrentFocusedKey()Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    iget v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getFocusedKeyYForMinikeyboard()I
    .locals 3

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->getCurrentFocusedKeyForMinikeyboard()Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    iget v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getmColumnCount()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mColumnCount:Ljava/util/List;

    return-object v0
.end method

.method public getmColumnCountForMinikeyboard()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mColumnCountForMinikeyboard:Ljava/util/List;

    return-object v0
.end method

.method public getmRowCount()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mRowCount:I

    return v0
.end method

.method public getmRowCountForMinikeyboard()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mRowCountForMinikeyboard:I

    return v0
.end method

.method public initialize(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/diotek/ime/framework/view/Keyboard$Key;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    invoke-direct {v0, p0, v1, v1}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;-><init>(Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;II)V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    :cond_0
    new-array v0, v1, [Lcom/diotek/ime/framework/view/Keyboard$Key;

    iput-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/diotek/ime/framework/view/Keyboard$Key;

    iput-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->calculateRowAndColumnCount()V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->generateKeyIndexMap()V

    return-void
.end method

.method public initializeForMinikeyboard(Ljava/util/List;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/diotek/ime/framework/view/Keyboard$Key;",
            ">;II)V"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    invoke-direct {v0, p0, v1, v1}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;-><init>(Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;II)V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    new-array v0, v1, [Lcom/diotek/ime/framework/view/Keyboard$Key;

    iput-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeysForMinikeyboard:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeysForMinikeyboard:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/diotek/ime/framework/view/Keyboard$Key;

    iput-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeysForMinikeyboard:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    iput p2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mPopupX:I

    iput p3, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mPopupY:I

    invoke-direct {p0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->calculateRowAndColumnCountForMiniKeyboard()V

    invoke-direct {p0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->generateKeyIndexMapForMiniKeyboard()V

    return-void
.end method

.method public isThisKeyNotInvisible(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/16 v0, -0x101

    if-eq p1, v0, :cond_0

    const/16 v0, -0x103

    if-eq p1, v0, :cond_0

    const/16 v0, -0xff

    if-eq p1, v0, :cond_0

    const/16 v0, -0x100

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public moveDownCurrentPosition()V
    .locals 4

    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v1, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v3, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->getmRowCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v3, v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    const/4 v3, 0x0

    iput v3, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    :cond_0
    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->computeNearstColumnIndex(I)I

    move-result v0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iput v0, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->column:I

    return-void
.end method

.method public moveDownCurrentPositionForMinikeyboard()V
    .locals 4

    iget v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mRowCountForMinikeyboard:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v1, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v3, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->getmRowCountForMinikeyboard()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v3, v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    const/4 v3, 0x0

    iput v3, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    :cond_0
    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->computeNearstColumnIndexForMinikeyboard(I)I

    move-result v0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iput v0, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->column:I

    :cond_1
    return-void
.end method

.method public moveLeftCurrentPosition()V
    .locals 3

    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v1, v0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->column:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->column:I

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->getmColumnCount()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v2, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->column:I

    :cond_0
    return-void
.end method

.method public moveLeftCurrentPositionForMinikeyboard()V
    .locals 3

    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mColumnCountForMinikeyboard:Ljava/util/List;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v1, v1, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v1, v0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->column:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->column:I

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->getmColumnCountForMinikeyboard()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v2, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->column:I

    :cond_0
    return-void
.end method

.method public moveRightCurrentPosition()V
    .locals 3

    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v1, v0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->column:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->column:I

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->getmColumnCount()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v2, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le v1, v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    const/4 v1, 0x0

    iput v1, v0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->column:I

    :cond_0
    return-void
.end method

.method public moveRightCurrentPositionForMinikeyboard()V
    .locals 3

    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mColumnCountForMinikeyboard:Ljava/util/List;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v1, v1, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v1, v0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->column:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->column:I

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->getmColumnCountForMinikeyboard()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v2, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le v1, v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    const/4 v1, 0x0

    iput v1, v0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->column:I

    :cond_0
    return-void
.end method

.method public moveUpCurrentPosition()V
    .locals 4

    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v1, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v3, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    if-gez v3, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->getmRowCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    :cond_0
    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->computeNearstColumnIndex(I)I

    move-result v0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iput v0, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->column:I

    return-void
.end method

.method public moveUpCurrentPositionForMinikeyboard()V
    .locals 4

    iget v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mRowCountForMinikeyboard:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v1, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v3, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    if-gez v3, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->getmRowCountForMinikeyboard()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    :cond_0
    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->computeNearstColumnIndexForMinikeyboard(I)I

    move-result v0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iput v0, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->column:I

    :cond_1
    return-void
.end method

.method public releaseKeyData()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    iput-object v1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mColumnCount:Ljava/util/List;

    const/4 v0, 0x1

    iput v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mRowCount:I

    move-object v0, v1

    check-cast v0, [[I

    iput-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeyIndexMap:[[I

    iput-object v1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    return-void
.end method

.method public releaseKeyDataForMiniKeyboard()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeysForMinikeyboard:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    iput-object v1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mColumnCountForMinikeyboard:Ljava/util/List;

    const/4 v0, 0x1

    iput v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mRowCountForMinikeyboard:I

    move-object v0, v1

    check-cast v0, [[I

    iput-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeyIndexMapForMinikeyboard:[[I

    iput-object v1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iput v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mPopupX:I

    iput v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mPopupY:I

    return-void
.end method

.method public setmColumnCount(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mColumnCount:Ljava/util/List;

    return-void
.end method

.method public setmColumnCountForMinikeyboard(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mColumnCountForMinikeyboard:Ljava/util/List;

    return-void
.end method

.method public setmRowCount(I)V
    .locals 0

    iput p1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mRowCount:I

    return-void
.end method

.method public setmRowCountForMinikeyboard(I)V
    .locals 0

    iput p1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mRowCountForMinikeyboard:I

    return-void
.end method
