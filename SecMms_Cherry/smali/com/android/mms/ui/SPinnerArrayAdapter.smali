.class public Lcom/android/mms/ui/SPinnerArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SPinnerArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private mCurrentPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/SPinnerArrayAdapter;->mCurrentPosition:I

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public setCurrentPosition(I)V
    .locals 0

    iput p1, p0, Lcom/android/mms/ui/SPinnerArrayAdapter;->mCurrentPosition:I

    return-void
.end method
