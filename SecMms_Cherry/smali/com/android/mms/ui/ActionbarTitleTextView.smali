.class public Lcom/android/mms/ui/ActionbarTitleTextView;
.super Landroid/widget/TextView;
.source "ActionbarTitleTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ActionbarTitleTextView$SizeChangedListener;
    }
.end annotation


# static fields
.field public static ACTIONBAR_TEXTVIEW_SIZECHANGED:I


# instance fields
.field private final mPadding:I

.field private mSizeChangedListener:Lcom/android/mms/ui/ActionbarTitleTextView$SizeChangedListener;

.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/android/mms/ui/ActionbarTitleTextView;->ACTIONBAR_TEXTVIEW_SIZECHANGED:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/mms/ui/ActionbarTitleTextView;->mPadding:I

    return-void
.end method


# virtual methods
.method public getStrMaxWidth()I
    .locals 12

    iget-object v10, p0, Lcom/android/mms/ui/ActionbarTitleTextView;->mText:Ljava/lang/String;

    if-nez v10, :cond_0

    const/4 v9, -0x1

    :goto_0
    return v9

    :cond_0
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v7, ""

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/mms/ui/ActionbarTitleTextView;->mText:Ljava/lang/String;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    :goto_1
    array-length v10, v1

    if-le v10, v3, :cond_2

    aget-object v10, v1, v3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v6, :cond_1

    aget-object v10, v1, v3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v6

    move v5, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020139

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    aget-object v0, v1, v5

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    float-to-int v10, v10

    add-int/lit8 v10, v10, 0x1e

    add-int v9, v10, v4

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    if-lez p1, :cond_0

    if-eq p1, p3, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ActionbarTitleTextView;->mSizeChangedListener:Lcom/android/mms/ui/ActionbarTitleTextView$SizeChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ActionbarTitleTextView;->mSizeChangedListener:Lcom/android/mms/ui/ActionbarTitleTextView$SizeChangedListener;

    invoke-interface {v0}, Lcom/android/mms/ui/ActionbarTitleTextView$SizeChangedListener;->onActionbarTitleSizeChanged()V

    :cond_0
    return-void
.end method

.method public setActionbarTitleText(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/mms/ui/ActionbarTitleTextView;->mText:Ljava/lang/String;

    return-void
.end method

.method public setClass(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;

    instance-of v0, p1, Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object p1, p0, Lcom/android/mms/ui/ActionbarTitleTextView;->mSizeChangedListener:Lcom/android/mms/ui/ActionbarTitleTextView$SizeChangedListener;

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/android/mms/ui/SlideshowActivity;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/mms/ui/SlideshowActivity;

    iput-object p1, p0, Lcom/android/mms/ui/ActionbarTitleTextView;->mSizeChangedListener:Lcom/android/mms/ui/ActionbarTitleTextView$SizeChangedListener;

    goto :goto_0
.end method
