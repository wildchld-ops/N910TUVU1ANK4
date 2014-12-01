.class public Lcom/android/mms/ui/AttachmentListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AttachmentListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/mms/model/AttachmentModel;",
        ">;",
        "Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;"
    }
.end annotation


# instance fields
.field private attachment:Lcom/android/mms/model/AttachmentModel;

.field private contentType:Ljava/lang/String;

.field private intent:Landroid/content/Intent;

.field private mCheckStates:Landroid/util/SparseBooleanArray;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mIsAudioMode:Z

.field private mNumberOfAttachments:I

.field private final mResource:I

.field private mSaveButton:Landroid/widget/Button;

.field private mSelectAllCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;Z)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mSaveButton:Landroid/widget/Button;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/AttachmentListAdapter;->contentType:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mSelectAllCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput p2, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mResource:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mNumberOfAttachments:I

    iput-boolean p4, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mIsAudioMode:Z

    return-void
.end method


# virtual methods
.method public getCheckedCount()I
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x0

    if-nez p2, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mResource:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/AttachmentListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/AttachmentModel;

    iput-object v4, p0, Lcom/android/mms/ui/AttachmentListAdapter;->attachment:Lcom/android/mms/model/AttachmentModel;

    const v4, 0x7f0b007b

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/mms/ui/AttachmentListAdapter;->attachment:Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v4}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setFocusable(Z)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportHoveringUI()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, v7}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    :cond_1
    const v4, 0x7f0b004e

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const v4, 0x7f0b007c

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iget-boolean v4, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mIsAudioMode:Z

    if-eqz v4, :cond_2

    invoke-virtual {v0, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    invoke-virtual {v1, v7}, Landroid/widget/RadioButton;->setVisibility(I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p1, v7}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_0
    invoke-virtual {p2, v7}, Landroid/view/View;->setFocusable(Z)V

    const v4, 0x7f020275

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2

    :cond_2
    invoke-virtual {v0, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setVisibility(I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setTag(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p1, v7}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public isChecked(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/AttachmentListAdapter;->setChecked(IZ)V

    :cond_0
    return-void
.end method

.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v2, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mSelectAllCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentListAdapter;->getCheckedCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentListAdapter;->getCount()I

    move-result v2

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mSelectAllCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mSaveButton:Landroid/widget/Button;

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mNumberOfAttachments:I

    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/AttachmentListAdapter;->isChecked(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mSelectAllCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AttachmentListAdapter;->toggle(I)V

    return-void
.end method

.method public setChecked(IZ)V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mIsAudioMode:Z

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mNumberOfAttachments:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AttachmentListAdapter;->isChecked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v1, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mSaveButton:Landroid/widget/Button;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mSaveButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentListAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1
.end method

.method public setSaveButton(Landroid/widget/Button;)V
    .locals 2

    iput-object p1, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mSaveButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mSaveButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public setSelectAllCheckbox(Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mSelectAllCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-void
.end method

.method public toggle(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/AttachmentListAdapter;->isChecked(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/mms/ui/AttachmentListAdapter;->setChecked(IZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
