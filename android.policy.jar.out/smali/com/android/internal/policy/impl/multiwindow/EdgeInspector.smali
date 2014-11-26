.class public Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;
.super Ljava/lang/Object;
.source "EdgeInspector.java"


# static fields
.field public static final BOTTOM:I = 0x2

.field public static final LEFT:I = 0x4

.field public static final NONE:I = 0x0

.field public static final RIGHT:I = 0x8

.field public static final TOP:I = 0x1


# instance fields
.field private mBound:Landroid/graphics/Rect;

.field private mDir:I

.field private mIsCandidate:Z

.field private mOnlyDiagonal:Z

.field private mPadding:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
    .param p2    # Landroid/graphics/Rect;
    .param p3    # Z

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mIsCandidate:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mOnlyDiagonal:Z

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->set(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iput-boolean p3, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mOnlyDiagonal:Z

    return-void
.end method


# virtual methods
.method public check(II)V
    .locals 3
    .param p1    # I
    .param p2    # I

    const/4 v2, 0x1

    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    if-le v0, p1, :cond_5

    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    if-le v0, p2, :cond_6

    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    :cond_1
    :goto_1
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    if-le v0, p1, :cond_7

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mIsCandidate:Z

    :cond_2
    :goto_2
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mIsCandidate:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-le v0, p2, :cond_8

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-le p2, v0, :cond_8

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mIsCandidate:Z

    :cond_3
    :goto_3
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mOnlyDiagonal:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    :cond_4
    return-void

    :cond_5
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    if-ge v0, p2, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mIsCandidate:Z

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-ge v0, p2, :cond_3

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mIsCandidate:Z

    goto :goto_3
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mIsCandidate:Z

    return-void
.end method

.method public isCandidate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mIsCandidate:Z

    return v0
.end method

.method public isDiagonal()Z
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEdge()Z
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEdge(I)Z
    .locals 1
    .param p1    # I

    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
    .param p2    # Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mBound:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mPadding:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mIsCandidate:Z

    return-void
.end method
