.class abstract Lcom/android/settings/accessibility/directaccess/DirectAccessActions$SinglePressAction;
.super Ljava/lang/Object;
.source "DirectAccessActions.java"

# interfaces
.implements Lcom/android/settings/accessibility/directaccess/DirectAccessActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/directaccess/DirectAccessActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SinglePressAction"
.end annotation


# instance fields
.field private final mMessage:Ljava/lang/CharSequence;

.field private final mMessageResId:I


# direct methods
.method protected constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$SinglePressAction;->mMessageResId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 4

    const v2, 0x7f04008f

    const/4 v3, 0x0

    invoke-virtual {p4, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b01b7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0b01b8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-object v1

    :cond_0
    iget v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$SinglePressAction;->mMessageResId:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
