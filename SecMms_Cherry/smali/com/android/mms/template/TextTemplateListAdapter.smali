.class public Lcom/android/mms/template/TextTemplateListAdapter;
.super Landroid/widget/CursorAdapter;
.source "TextTemplateListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/template/TextTemplateListAdapter$OnContentChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/TextTemplateListAdapter"


# instance fields
.field private mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mCheckBoxLayout:Landroid/widget/LinearLayout;

.field private mEnableCheckedView:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mIsMsgMultiMode:Z

.field mOnContentChangedListener:Lcom/android/mms/template/TextTemplateListAdapter$OnContentChangedListener;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/database/Cursor;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    iput-boolean v0, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mEnableCheckedView:Z

    iput-boolean v0, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mIsMsgMultiMode:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/content/Context;
    .param p3    # Landroid/database/Cursor;

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v5, 0x7f0b0375

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mTextView:Landroid/widget/TextView;

    const v5, 0x7f0b0374

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v5, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const v5, 0x7f0b0373

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mCheckBoxLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x2

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {p2}, Lcom/android/mms/MmsConfig;->getTextTemplate(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    if-ltz v0, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmbeddedTextTemplateType()I

    move-result v5

    if-ne v5, v8, :cond_0

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mTextView:Landroid/widget/TextView;

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-boolean v5, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mIsMsgMultiMode:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/high16 v6, 0x3f800000

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setAlpha(F)V

    iget-object v5, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mCheckBoxLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v5, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00f2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :goto_1
    iget-object v5, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v5, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mEnableCheckedView:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v5, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :goto_2
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mTextView:Landroid/widget/TextView;

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mCheckBoxLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v5, v9}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    const/high16 v5, 0x41800000

    invoke-static {v5}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v5, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    move-object v0, p3

    check-cast v0, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mEnableCheckedView:Z

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/database/Cursor;
    .param p3    # Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400a3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onContentChanged()V
    .locals 2

    const-string v0, "Mms/TextTemplateListAdapter"

    const-string v1, "onContentChanged"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mOnContentChangedListener:Lcom/android/mms/template/TextTemplateListAdapter$OnContentChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mOnContentChangedListener:Lcom/android/mms/template/TextTemplateListAdapter$OnContentChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/template/TextTemplateListAdapter$OnContentChangedListener;->onContentChanged(Lcom/android/mms/template/TextTemplateListAdapter;)V

    :cond_0
    return-void
.end method

.method public setMessageListMode(Z)V
    .locals 1
    .param p1    # Z

    iget-boolean v0, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mIsMsgMultiMode:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mIsMsgMultiMode:Z

    goto :goto_0
.end method

.method public setOnContentChangedListener(Lcom/android/mms/template/TextTemplateListAdapter$OnContentChangedListener;)V
    .locals 0
    .param p1    # Lcom/android/mms/template/TextTemplateListAdapter$OnContentChangedListener;

    iput-object p1, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mOnContentChangedListener:Lcom/android/mms/template/TextTemplateListAdapter$OnContentChangedListener;

    return-void
.end method
