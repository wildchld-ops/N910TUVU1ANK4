.class public Lcom/diotek/ime/implement/setting/HwrGestureGuide;
.super Landroid/preference/DialogPreference;
.source "HwrGestureGuide.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f03005e

    invoke-virtual {p0, v0}, Lcom/diotek/ime/implement/setting/HwrGestureGuide;->setDialogLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    return-void
.end method

.method public setDialogLayoutResource(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->setDialogLayoutResource(I)V

    return-void
.end method

.method public setPositiveButtonText(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method
