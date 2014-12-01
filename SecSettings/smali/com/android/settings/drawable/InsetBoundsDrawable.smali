.class public Lcom/android/settings/drawable/InsetBoundsDrawable;
.super Lcom/android/settings/drawable/DrawableWrapper;
.source "InsetBoundsDrawable.java"


# instance fields
.field private final mInsetBoundsSides:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput p2, p0, Lcom/android/settings/drawable/InsetBoundsDrawable;->mInsetBoundsSides:I

    return-void
.end method


# virtual methods
.method public setBounds(IIII)V
    .locals 2

    iget v0, p0, Lcom/android/settings/drawable/InsetBoundsDrawable;->mInsetBoundsSides:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/settings/drawable/InsetBoundsDrawable;->mInsetBoundsSides:I

    sub-int v1, p3, v1

    invoke-super {p0, v0, p2, v1, p4}, Lcom/android/settings/drawable/DrawableWrapper;->setBounds(IIII)V

    return-void
.end method
