.class public Lcom/android/mms/spam/SpamlistDeleteLayout;
.super Landroid/widget/LinearLayout;
.source "SpamlistDeleteLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field final ATTR:Ljava/lang/String;

.field final NAMESPACE:Ljava/lang/String;

.field checkable:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field checkableId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "http://schemas.android.com/apk/res/android"

    iput-object v0, p0, Lcom/android/mms/spam/SpamlistDeleteLayout;->NAMESPACE:Ljava/lang/String;

    const-string v0, "checkable"

    iput-object v0, p0, Lcom/android/mms/spam/SpamlistDeleteLayout;->ATTR:Ljava/lang/String;

    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "checkable"

    const/4 v2, 0x0

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/spam/SpamlistDeleteLayout;->checkableId:I

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    iget v0, p0, Lcom/android/mms/spam/SpamlistDeleteLayout;->checkableId:I

    invoke-virtual {p0, v0}, Lcom/android/mms/spam/SpamlistDeleteLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/android/mms/spam/SpamlistDeleteLayout;->checkable:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v0, p0, Lcom/android/mms/spam/SpamlistDeleteLayout;->checkable:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/spam/SpamlistDeleteLayout;->checkable:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1

    iget v0, p0, Lcom/android/mms/spam/SpamlistDeleteLayout;->checkableId:I

    invoke-virtual {p0, v0}, Lcom/android/mms/spam/SpamlistDeleteLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/android/mms/spam/SpamlistDeleteLayout;->checkable:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v0, p0, Lcom/android/mms/spam/SpamlistDeleteLayout;->checkable:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/spam/SpamlistDeleteLayout;->checkable:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public toggle()V
    .locals 1

    iget v0, p0, Lcom/android/mms/spam/SpamlistDeleteLayout;->checkableId:I

    invoke-virtual {p0, v0}, Lcom/android/mms/spam/SpamlistDeleteLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/android/mms/spam/SpamlistDeleteLayout;->checkable:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v0, p0, Lcom/android/mms/spam/SpamlistDeleteLayout;->checkable:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/spam/SpamlistDeleteLayout;->checkable:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->toggle()V

    goto :goto_0
.end method
